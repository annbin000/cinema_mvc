<?php


namespace App\Services;

use App\Models\Db;

class FilmService
{
    public function findOneFilm(int $id = 0)
    {
        $sql = <<<SQL
            select films.*
            from films
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