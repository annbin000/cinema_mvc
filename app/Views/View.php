<?php

namespace App\Views;

class View
{
    /**
     * 3й аргумент нужен для доступа переменных в View
     * @param $page
     * @param $title
     * @param array|null $otherVars
     */
    public function show(string $viewClass) {
        //на случий дополнительных данных
//        if (!empty($vars)) {
//            extract($vars);
//        }
//        if (!empty($otherVars)) {
//            extract($otherVars);
//        }

        //какой то способ пропуска на страницу с или без .php расширения.
//        $page = str_replace(".php", "", $page);

        ob_start();

        $view = new $viewClass();
        include("templates/base.php");

        return ob_get_clean();
    }

    /**
     * @return string
     */
    public function getTitle(): string
    {
        return 'title';
    }
}