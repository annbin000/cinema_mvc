<?php
declare(strict_types=1);

namespace App\Controllers;


use App\Services\ComeOutService;
use App\Views\View;

class ComeOutController
{
    /**
     * отдает данные аджакс запросу с данными фильмов в кинчиках
     */
    public function execute() {
        $comeOutService = new ComeOutService();
        $view = new View();
        $result = $view->show(\App\Views\ComeOut::class, ['comeOut' => $comeOutService->findAllRelise()]);
        return $result;
    }
}