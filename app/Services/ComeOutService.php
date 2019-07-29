<?php


namespace App\Services;


use App\Models\Db;

class ComeOutService
{
    public function findAllRelise(int $cinemaId = 0) {
        $sql = <<<SQL
        select films.*
        from films
            join came_out as co on films.id = co.film_id
            join cinema as c on c.id = co.cinema_id
        SQL;

        if ($cinemaId) {
            $sql .= " where c.id = :cinemaId";
        }

        $dbh = Db::getDbh();
        $stmt = $dbh->prepare($sql);
        $stmt->bindValue(':cinemaId', $cinemaId, \PDO::PARAM_INT);

        $stmt->execute();
        $result = $stmt->fetchAll(\PDO::FETCH_CLASS, \App\Models\Films::class);

        return $result;
    }
}