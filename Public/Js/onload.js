/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 13-7-12
 * Time: 下午1:06
 * To change this template use File | Settings | File Templates.
 *
 * init system
 */
(function($){
    $.fn.extend({
        row : function(data,configs){
            var defaultConfigs = {
                type : 'tr'
            };
            var row,cellType;
            var cellData = [];
            configs = $.extend(defaultConfigs,configs);
            switch(configs.type){
                case 'tr':
                default:
                    cellData = data.th || data.td;
                    cellType = data.th ? 'th' : 'td';
                    row = $('<tr></tr>');
                    break;
            }
            $.each(cellData,function(key,data){
                row.attr('id','C'+cellType+'_'+key);
                $.each(data,function(k,v){
                    row.cell(v,{
                        type:cellType
                    });
                })
            })
            this.append(row);
            return this;
        },
        cell : function(data,configs){
            var defaultConfigs = {
                type : 'td'
            }
            var cell;
            configs = $.extend(defaultConfigs,configs);
            switch(configs.type){
                case 'th':
                    cell = $('<th border=\'1\'></th>');
                    break;
                case 'td':
                default:
                    cell = $('<td border=\'1\'></td>');
                    break;
            }
            cell.html(data);
            this.append(cell);
            return this;
        },
        table : function(data,configs){
            var defaultConfigs = {
                type : 'table',
                id : 'Table_'+new Date().getTime()
            }
            var table;
            configs = $.extend(defaultConfigs,configs);
            switch(configs.type){
                case 'table':
                default:
                    table = $('<table border=\'1\'></table>');
                    break;
            }
            table.attr('id',configs.id).addClass('C_Table');
            var th = data.body && data.body.head || [];
            var td = data.body && data.body.body || [];
            table.row({
                th:[th]
            });
            $.each(td,function(key,rowData){
                table.row({
                    td:rowData
                });
            })
            this.append(table);
            return this.children('#'+configs.id);
        }
    })
})(jQuery);

Number.prototype.toLengthStr = function(length){
    var str = this+'';
    for(var i = str.length;i < length;i++){
        str = '0'+str;
    }
    return str;
}

function getCurrentTime(format){
    var oNow = new Date();
    var time = {
        Y : oNow.getFullYear().toString(),
        y : oNow.getYear().toString(),
        M : (oNow.getMonth()+1).toLengthStr(2),
        m : (oNow.getMonth()+1).toString(),
        D : oNow.getDate().toLengthStr(2),
        d : oNow.getDate().toString(),
        w : (oNow.getDay()+1).toString(),
        H : oNow.getHours().toLengthStr(2),
        h : oNow.getHours().toString(),
        I : oNow.getMinutes().toLengthStr(2),
        i : oNow.getMinutes().toString(),
        S : oNow.getSeconds().toLengthStr(2),
        s : oNow.getSeconds().toString()
    }
    format = format ? format : 'Y-M-D H:I:S';
    var format = format.split('');
    var currentTimeArr = mapping(format,time);
    return currentTimeArr.join('');
}

function mapping(template,source){
    var mappingRes = [];
    for(var i=0;i<template.length;i++){
        if(source[template[i]] !== undefined){
            mappingRes.push(source[template[i]]);
        }else{
            mappingRes.push(template[i]);
        }
    }
    return mappingRes;
}

var bookListTable;

$(document).ready(function(){
    $('#UserOrCode').focus();
    $('#form>form').submit(function(){
        $('#info').hide().html('');
        $('#UserOrCode').attr('disabled',true);
        
        var UserOrCode = $('#UserOrCode').val();
        UserOrCode = UserOrCode.toLowerCase();
        var UserOrCode = UserOrCode.split('-');
        if(UserOrCode.length ==1 && UserOrCode[0] == ''){
            $('#UserOrCode').attr('disabled',false);
            $('#UserOrCode').focus();
            return false;
        }else if(UserOrCode.length == 1 && UserOrCode[0] != ''){
            var isCode = true;
            var AjaxData = {
                'BookCode' : UserOrCode[0]
            }
            var AjaxUrl = './index.php/Index/GetBookInfoByBookCode'; 
        }else if(UserOrCode.length == 2 && UserOrCode[0] == 'user'){
            isCode = false;
            AjaxData = {
                'UserName' : UserOrCode[1]
            }
            AjaxUrl = './index.php/Index/GetUserBorrowInfoByUserName';
        }else{
            $('#UserOrCode').attr('disabled',false);
            $('#UserOrCode').focus();
            return false;
        }
        $.post(AjaxUrl,AjaxData,'','json').done(function(ReturnData){
            if(isCode){
                switch (true){
                    //1: revert book; 2: borrow book; 3:search book; 4:unknow record when borrow
                    case !ReturnData.bookInfo && ReturnData.action == 3:
                        $('#info').show().html('Unknow Record.');
                        bookListTable && bookListTable.remove();
                        $('#userInfo').hide();
                        break;
                    case !!ReturnData.bookInfo  && ReturnData.action == 3:
                        $('#info').show().html(ReturnData.message);
                        bookListTable && bookListTable.remove();
                        $('#userInfo').hide();
                        var tableData = {
                            body : {
                                head : ['BOOK NAME','PUBLISHER','PRICE','CODE']
                            }
                        }
                        bookListTable = $('#bookList').table(tableData);
                        var booName = ReturnData.bookInfo.bookName;
                        var publisher = ReturnData.bookInfo.publisher;
                        var price = ReturnData.bookInfo.price;
                        var code = ReturnData.bookInfo.code;
                        var bookInfo = [booName,publisher,price,code];
                        bookListTable.row({
                            td:[bookInfo]
                        });
                        break;
                    case !ReturnData.bookInfo && ReturnData.action == 4:
                        $('#info').show().html(ReturnData.message);
                        break;
                    case !ReturnData.bookInfo:
                        $('#info').show().html(ReturnData.message);
                        break;
                    case ReturnData.action == 1 && !!ReturnData.bookInfo:
                        $('#info').show().html(ReturnData.message);
                        $('#userInfo').show();
                        var revertId = ReturnData.bookInfo.revertId;
                        bookListTable.children('tbody').children('tbody>#Ctd_'+revertId).remove();
                        break;
                    case ReturnData.action == 2 && !!ReturnData.bookInfo:
                        $('#info').show().html(ReturnData.message);
                        $('#userInfo').show();
                        if(bookListTable === undefined){
                            var tableData = {
                                body : {
                                    head : ['BOOK NAME','PUBLISHER','PRICE','BORROW TIME']
                                }
                            }
                            bookListTable = $('#bookList').table(tableData);
                        }
                        var borrowId = ReturnData.bookInfo.borrowId;
                        var booName = ReturnData.bookInfo.bookName;
                        var publisher = ReturnData.bookInfo.publisher;
                        var price = ReturnData.bookInfo.price;
                        var borrowTime = getCurrentTime();
                        var bookInfo = {}
                        bookInfo[borrowId] = [booName,publisher,price,borrowTime];
                        bookListTable.row({
                            td:bookInfo
                        });
                        break;
                }
            }else{
                bookListTable && bookListTable.remove();
                if(ReturnData.userInfo){
                    $('#userName').html(ReturnData.userInfo.userName || '');
                    $('#userInfo').show();
                }else{
                    $('#userInfo').hide();
                    $('#info').show().html('Unknow User.');
                }
                if(!!ReturnData.borrowInfo){
                    var tableData = {
                        body : {
                            head : ['BOOK NAME','PUBLISHER','PRICE','BORROW TIME'],
                            body : []
                        }
                    }
                    $.each(ReturnData.borrowInfo,function(k,v){
                        var id = v.id;
                        var booName = v.bookName;
                        var publisher = v.publisher;
                        var price = v.price;
                        var borrowTime = v.borrowTime;
                        var bookInfo = {};
                        bookInfo[id] = [booName,publisher,price,borrowTime];
                        tableData.body.body.push(bookInfo);
                    })
                    bookListTable = $('#bookList').table(tableData);
                }else if(!!ReturnData.userInfo && !ReturnData.borrowInfo){
                    var tableData = {
                        body : {
                            head : ['BOOK NAME','PUBLISHER','PRICE','BORROW TIME']
                        }
                    }
                    bookListTable = $('#bookList').table(tableData);
                }
            }
            $('#UserOrCode').attr('disabled',false);
            $('#UserOrCode').focus();
        })
        $('#UserOrCode').val('');
        return false;
    })
})
