<?php


namespace App\Services;

use App\Models\Db;

class FilmService
{
    public function findOneFilms(int $id)
    {
        $sql = <<<SQL
            select films.*, GROUP_CONCAT(genre.film_genre) as 'film_genres'
            from genre
                inner join film_genres on genre.id = film_genres.genre_id
                inner join films on films.id = film_genres.film_id
            where films.id = :id
        SQL;

        $dbh = Db::getDbh();
        $stmt = $dbh->prepare($sql);

        $stmt->bindValue(':id', $id, \PDO::PARAM_INT);

        $stmt->execute();
        $result = $stmt->fetchObject(\App\Models\Films::class);

        return $result;
    }
}