<?php


namespace App\Views;


use App\Services\FilmService;

class Film extends AbstractBlock implements ViewInterface
{
    protected function getVars(): array
    {
        $filmService = new FilmService();

        return [
            'film' => $filmService->findOneFilm()
        ];
    }
}