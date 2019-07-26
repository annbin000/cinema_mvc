<?php

namespace App\Views;

class ComeOut implements ViewInterface
{
    /**
     * @var array
     */
    private $vars;

    public function __construct(array $vars = [])
    {
        $this->vars = $vars;
    }

    public function render(): string
    {
        extract($this->vars);
        ob_start();
        include "templates/comeout.phtml";
        return ob_get_clean();
    }
}