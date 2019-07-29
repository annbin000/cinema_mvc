<?php

namespace App\Views;

class View
{
    /**
     * @param string $viewClass
     * @return false|string
     */
    public function show(string $viewClass) {
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