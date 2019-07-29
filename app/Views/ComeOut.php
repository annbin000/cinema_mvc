<?php

namespace App\Views;

use App\Services\ComeOutService;

class ComeOut extends AbstractBlock implements ViewInterface
{
    private $cinemaId;

    /**
     * @param int $cinemaId
     * @return $this
     */
    public function setCinemaFilter(int $cinemaId): ComeOut
    {
        $this->cinemaId = $cinemaId;

        return $this;
    }

    protected function getVars(): array
    {
        $cinemaId = $this->cinemaId ?? (int) $_GET['id'];
        $comeOutService = new ComeOutService();

        return [
            'comeOut' => $comeOutService->findAllRelise($cinemaId)
        ];
    }
}