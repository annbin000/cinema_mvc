<?php


namespace App\Controllers;


use App\Models\Films;
use App\Services\FilmService;
use App\Views\Film;
use App\Views\View;

class FilmController
{

    public function execute() {
        $view = new Film();
        $result = $view->render();

        return $result;
    }
}