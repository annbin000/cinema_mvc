<?php

namespace App\Services;

use App\Models\Db;

class GenreService
{
//    public function findOneGenre(int $id)
//    {
//        $sql = <<<SQL
//            select genre.id, GROUP_CONCAT(genre.film_genre) as 'film_genre'
//            from genre
//                inner join film_genres on genre.id = film_genres.genre_id
//                inner join films on films.id = film_genres.film_id
//            where films.id = :id
//        SQL;
//
//        $dbh = Db::getDbh();
//        $stmt = $dbh->prepare($sql);
//
//        $stmt->bindValue(':id', $id, \PDO::PARAM_INT);
//
//        $stmt->execute();
//        $result = $stmt->fetchObject(\App\Models\Genre::class);
//
//        return $result;
//    }

    public function findAllGenre() {
        $sql = <<<SQL
        select GROUP_CONCAT(film_genre) as allGenres from genre
        SQL;

        $dbh = Db::getDbh();
        $stmt = $dbh->prepare($sql);

        $stmt->execute();
        $result = $stmt->fetchObject(\App\Models\Genre::class);
    }
}