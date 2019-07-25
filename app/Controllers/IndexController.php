<?php


namespace App\Controllers;


class IndexController
{
    /**
     * отображает домашнюю страницу
     */
    public function home()
    {



        if (empty($_GET['page'])) {
            $currentPage = 1;
            $_GET['page'] = 1;
        } else {
            $currentPage = $_GET['page'];
        }

    }
}