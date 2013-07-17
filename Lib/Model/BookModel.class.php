<?php

/*
 * @fileOverview 
 * @author session
 * @version 0.1
 * @date 2013-7-13 14:22:35
 */

class BookModel extends Model{
    /**
     * Get book infomation by book code
     * 
     * @param string $bookCode book code, will get all info from book table if no other param
     * @return Object book infomation
     */
    public function GetBookInfoByBookCode($bookCode){
        $param = func_get_args();
        array_shift($param);
        $Pthis = &$this;
        if(count($param) > 0){
            $field = implode(',',$param);
            $Pthis = $this->field($field);
        }
        return $Pthis->where('code = \''.$bookCode.'\' and deleteTime is null')->find();
    }
}

?>
