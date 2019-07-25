<?php
declare(strict_types=1);

namespace App\Models;

class Genre
{
    /**
     * @var int $id
     */
    private $id;

    /**
     * @var string $film_genre
     */
    private $film_genre;

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id): void
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getFilmGenre()
    {
        return $this->film_genre;
    }

    /**
     * @param mixed $film_genre
     */
    public function setFilmGenre($film_genre): void
    {
        $this->film_genre = $film_genre;
    }
}