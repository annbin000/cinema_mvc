<?php


namespace App\Services;


use App\Models\Db;

class CinemaService
{
    public function findAllCinema() {
        $sql = <<<SQL
        select cinema.name as `name` from cinema
        SQL;

        $dbh = Db::getDbh();
        $stmt = $dbh->prepare($sql);

        $stmt->execute();
        $result = $stmt->fetchAll(\PDO::FETCH_CLASS, \App\Models\Cinema::class);

        return $result;
    }
}