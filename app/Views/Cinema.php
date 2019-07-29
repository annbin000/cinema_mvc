<?php

namespace App\Views;

use App\Services\CinemaService;
use App\Services\ComeOutService;

class Cinema extends AbstractBlock implements ViewInterface
{
    /**
     * @return array
     */
    protected function getVars(): array
    {
        $cinemaService = new CinemaService();

        return [
            'cinemas' => $cinemaService->findAllCinema()
        ];
    }
}