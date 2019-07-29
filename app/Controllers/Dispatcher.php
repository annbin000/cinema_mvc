<?php

namespace App\Controllers;

use App\Models\Films;
use App\Services\CinemaService;
use App\Services\FilmService;
use App\Services\GenreService;

class Dispatcher
{
    /**
     * Нужно для получения списка маршрутов
     * @param $routes
     * @param $p
     */
    public function dispatch($routes, $p)
    {
        $requestUri = $_SERVER['REQUEST_URI'] ? parse_url($_SERVER['REQUEST_URI'])['path'] : '';
        $controllerName = $requestUri ? ucfirst(explode('/', trim($requestUri, '/'))[0]) : 'Index';

        $controllerClass = "\App\Controllers\\{$controllerName}Controller";

        if (!class_exists($controllerClass)) {
            throw new \RuntimeException("Controller $controllerClass does not exist");
        }

        $controller = new $controllerClass;

        $response = $controller->execute();
        echo $response;
    }
}