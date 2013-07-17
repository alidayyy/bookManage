<?php

/*
 * @fileOverview 
 * @author session
 * @version 0.1
 * @date 2013-7-13 22:42:47
 */

class BorrowModel extends Model{
    /**
     * Get user's borrow infomation by userName
     * 
     * @param string $userName user name
     */
    public function GetBorrowInfoByUserName($userName){
        $borrowInfo = $this->join('borrow br ON br.userId = u.id')
                ->join('book bk ON bk.id = br.bookId')
                ->where('br.revertTime IS NULL AND u.userName = \''.$userName.'\'')
                ->field('br.id,bk.bookName,bk.publisher,bk.price,br.borrowTime')
                ->select(array('table'=>array('user'=>'u')));
        return $borrowInfo;
    }
    /**
     * judge the book has borrowed or no
     * @param string $bookCode book code
     * @param string $userId user id
     * @return Boole borrowed return true or false
     */
    public function IsBorrowedByBookCodeAndUserName($bookCode,$userId){
        $isBorred = $this->join('INNER JOIN book b ON b.id = br.bookId AND b.Code = \''.$bookCode.'\'')
                ->where('br.revertTime IS NULL AND br.userId = '.$userId)->field('br.id')->find(array('table'=>array('borrow'=>'br')));
        if(!$isBorred)
            return true;
        return false;
    }

    /**
     * Borrow book by book code
     * @param string $bookCode book code
     * @param string $userId 
     * @return Boole success return true or false
     */
    public function BorrowBookByBookCode($bookCode,$userId){
        $Mbook = D('Book');
        $bookId = $Mbook->GetBookInfoByBookCode($bookCode,'id AS bookId');
        $bookId = $bookId['bookId'];
        if(!$bookId)
            return false;
        $borrowInfo['bookId'] = $bookId;
        $borrowInfo['userId'] = $userId;
        $isSuccess = $this->add($borrowInfo);
        return $isSuccess;
    }
    /**
     * Rever book
     * @param string $bookCode
     * @param string $userId
     * @return Boole success return true or false
     */
    public function RevertBookByBookCode($bookCode,$userId){
        $Mbook = D('Book');
        $bookId = $Mbook->GetBookInfoByBookCode($bookCode,'id AS bookId');
        $bookId = $bookId['bookId'];
        if(!$bookId)
            return false;
        $reverInfo['revertTime'] = date('Y-m-d H:i:s');
        $isSuccess = $this->where('revertTime IS NULL AND bookId = '.$bookId.' AND userId = '.$userId)->save($reverInfo);
        if(false !== $isSuccess)
            return true;
        return false;
    }
    /**
     * Borrow book by book Id
     * @param string $bookId book Id
     * @param string $userId 
     * @return Boole success return true or false
     */
    public function BorrowBookByBookId($bookId,$userId){
        $borrowInfo['bookId'] = $bookId;
        $borrowInfo['userId'] = $userId;
        $isSuccess = $this->add($borrowInfo);
        return $isSuccess;
    }
    /**
     * Rever book
     * @param string $bookId
     * @param string $userId
     * @return Boole success return true or false
     */
    public function RevertBookByBookId($bookId,$userId){
        $revertId = $this->where('revertTime IS NULL AND bookId = '.$bookId.' AND userId = '.$userId)->getField('id');
        $reverInfo['revertTime'] = date('Y-m-d H:i:s');
        $isSuccess = $this->where('revertTime IS NULL AND bookId = '.$bookId.' AND userId = '.$userId)->save($reverInfo);
        if(false !== $isSuccess)
            return $revertId;
        return false;
    }
    
}

?>
