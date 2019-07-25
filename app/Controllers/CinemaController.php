<?php
declare(strict_types=1);

namespace App\Controllers;

use App\Services\CinemaService;
use App\Views\Cinema;
use App\Views\View;

class CinemaController
{
    /**
     * отображает домашнюю страницу
     */
    public function execute()
    {
        $cinemaService = new CinemaService();
        $view = new View();
        $result = $view->show(Cinema::class, ['cinemas' => $cinemaService->findAllCinema()]);

        return $result;
//
//        if (empty($_GET['page'])) {
//            $currentPage = 1;
//            $_GET['page'] = 1;
//        } else {
//            $currentPage = $_GET['page'];
//        }

    }
}