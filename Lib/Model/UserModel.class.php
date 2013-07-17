<?php

/*
 * @fileOverview 
 * @author session
 * @version 0.1
 * @date 2013-7-13 19:52:06
 */

class UserModel extends Model{
    /**
     * Get user infomation data by user name
     * 
     * @param string $userName user name
     * 
     * if no other param, will get all field info from user table
     */
    public function GetUserInfoByUserName($userName){
        $param = func_get_args();
        array_shift($param);
        $Pthis = &$this;
        if(count($param) > 0){
            $field = implode(',',$param);
            $Pthis = $this->field($field);
        }
        $userInfo = $Pthis->where('userName = \''.$userName.'\'')->find();
        return $userInfo;
    }
    /**
     * Get user infomation data by user id
     * 
     * @param string $userId user id
     * 
     * if no other param, will get all field info from user table
     */
    public function GetUserInfoByUserId($userId){
        $param = func_get_args();
        array_shift($param);
        $Pthis = &$this;
        if(count($param) > 0){
            $field = implode(',',$param);
            $Pthis = $this->field($field);
        }
        $userInfo = $Pthis->where('id = \''.$userId.'\'')->find();
        return $userInfo;
    }
    
}

?>
