<?php

/*
 * @fileOverview 
 * @author session
 * @version 0.1
 * @date 2013-7-13 12:35:45
 */

class BaseAction extends Action{
    /**
     * return no found page when no action 
     * 
     */
    public function _empty(){
        _404('404');
    }
}

?>
