<?php


namespace App\Views;


use App\Services\FilmService;

class Film extends AbstractBlock implements ViewInterface
{
    private $id;

    public function setFilm(int $id): Film {

        $this->id = $id;

        return $this;
    }

    protected function getVars(): array
    {
        $id = $this->id ?? (int) $_GET['id'];
        $filmService = new FilmService();

        $temp = $filmService->findOneFilm($id);
        return [
            'film' => $filmService->findOneFilm($id)
        ];
    }
}