<?php
declare(strict_types=1);

namespace App\Controllers;


use App\Services\ComeOutService;
use App\Views\ComeOut;
use App\Views\View;

class ComeOutController
{
    /**
     * отдает данные аджакс запросу с данными фильмов в кинчиках
     */
    public function execute() {
        $view = new ComeOut();
        $result = $view->render();
        return $result;
    }
}