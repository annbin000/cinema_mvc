<?php

namespace App\Views;

class Cinema implements ViewInterface
{
    /**
     * @var array
     */
    private $vars;

    /**
     * Cinema constructor.
     * @param array $vars
     */
    public function __construct(array $vars = [])
    {
        $this->vars = $vars;
    }



    public function render(): string
    {
        extract($this->vars);

        ob_start();
        include "templates/cinema.phtml";

        return ob_get_clean();
    }
}