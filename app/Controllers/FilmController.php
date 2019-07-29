<?php


namespace App\Controllers;


use App\Models\Films;
use App\Services\FilmService;
use App\Views\View;

class FilmController
{
    public function execute()
    {
        $filmService = new FilmService();
        $view = new View();
        $result = $view->show(Films::class);

        return $result;
    }
}