<?php

/*
 * @fileOverview 
 * @author session
 * @version 0.1
 * @date 2013-7-13 22:51:09
 */

class BorrowEvent extends BaseAction{
    /**
     * Get borrow info and user info
     * 
     * @param string $userName user name
     * 
     * @return Object borrow info and user info
     */
    public function GetUserAndBorrowInfoByUserName($userName){
        $Muser = D('User');
        $userInfo = $Muser->GetUserInfoByUserName($userName,'id AS userId','userName');
        $Mborrow = $Muser->switchModel('Borrow');
        $borrowInfo = $Mborrow->GetBorrowInfoByUserName($userName);
        return array('userInfo' => $userInfo, 'borrowInfo' => $borrowInfo);
    }
    /**
     * Borrow or rever book
     * @param string $bookCode
     * @param string $userId
     * @return Array above status and type
     * 
     * status true: action scusses, false: action faild
     * type 1: revert book, 2: borrow book 4: no record
     */
    public function BorrowOrRevertBookByBookCode($bookCode,$userId){
        $Mborrow = D('Borrow');
        $isBorrowed = $Mborrow->IsBorrowedByBookCodeAndUserName($bookCode,$userId);
        $Mbook = D('Book');
        $bookId = $Mbook->GetBookInfoByBookCode($bookCode,'id AS bookId');
        $bookId = $bookId['bookId'];
        if(!$bookId) return array(false,4);
        if(!$isBorrowed){
            $revertId = $Mborrow->RevertBookByBookId($bookId,$userId);
            return array($revertId,1);
        }
        $borrowId = $Mborrow->BorrowBookByBookId($bookId,$userId);
        return array($borrowId,2);
    }
}

?>
