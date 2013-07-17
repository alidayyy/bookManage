<?php

/*
 * @fileOverview 
 * @author session
 * @version 0.1
 * @date 2013-7-13 12:51:01
 */

class IndexAction extends BaseAction{
    /**
     * Control index page to show 
     * @param null
     */
    public function Index(){
        if(session('?currentBorrowUser'))
            $userId = session('currentBorrowUser',NULL);
        $this->display();
    }
    /**
     * Get book Infomation by ajax
     * @param null
     */
    public function GetBookInfoByBookCode(){
        $PostDate = I('post.');
        if($PostDate && $PostDate['BookCode']){
            if(session('?currentBorrowUser')){
                $userId = session('currentBorrowUser');
                $Aborrow = A('Borrow','Event');
                $borrowOrRevertInfo = $Aborrow->BorrowOrRevertBookByBookCode($PostDate['BookCode'],$userId);
                switch (true){
                    case $borrowOrRevertInfo[0] && $borrowOrRevertInfo[1] == 1:
                        $message = 'Revert Book Successfully.';
                        break;
                    case !$borrowOrRevertInfo[0] && $borrowOrRevertInfo[1] == 1:
                        $message = 'Revert Book Faild.';
                        break;
                    case $borrowOrRevertInfo[0] !== false && $borrowOrRevertInfo[1] == 2:
                        $message = 'Borrow Book Successfully.';
                        break;
                    case $borrowOrRevertInfo[0] === false && $borrowOrRevertInfo[1] == 2:
                        $message = 'Borrow Book Faild.';
                        break;
                    case !$borrowOrRevertInfo[0] && $borrowOrRevertInfo[1] == 4:
                        $message = 'Unknow Record.';
                        break;
                    default:
                        $message = '';
                        break;
                }
                $bookInfo = null;
                if($borrowOrRevertInfo[0] != false){
                    $book = D('Book');
                    $bookInfo = $book->GetBookInfoByBookCode($PostDate['BookCode']);
                }
                if($borrowOrRevertInfo[1] == 2 && $borrowOrRevertInfo[0] !== false){
                    $bookInfo['borrowId'] = $borrowOrRevertInfo[0];
                }
                if($borrowOrRevertInfo[1] == 1 && $borrowOrRevertInfo[0] !== false){
                    $bookInfo['revertId'] = $borrowOrRevertInfo[0];
                }
                $returnData = array('bookInfo'=>$bookInfo,'message'=>$message,'action'=>$borrowOrRevertInfo[1]);
                $this->ajaxReturn($returnData);
            }else{
                $book = D('Book');
                $bookInfo = $book->GetBookInfoByBookCode($PostDate['BookCode']);
                $returnData = array('bookInfo'=>$bookInfo,'message'=>'Search Successfully','action'=>3);
                $this->ajaxReturn($returnData);
            }
        }else{
            _404('Not found the page!');
        }
    }
    
    /**
     * Get User Infomation by ajax
     * @param null
     */
    public function GetUserBorrowInfoByUserName(){
        $PostDate = I('post.');
        if($PostDate && $PostDate['UserName']){
            session('currentBorrowUser',null);
            $Aborrow = A('Borrow','Event');
            $userBorrowInfo = $Aborrow->GetUserAndBorrowInfoByUserName($PostDate['UserName']);
            session('currentBorrowUser',$userBorrowInfo['userInfo']['userId']);
            $this->ajaxReturn($userBorrowInfo);
        }else{
            _404('Not found the page!');
        }
    }
    
}

?>
