<?php

namespace App\Views;

interface ViewInterface
{
    /**
     * @return string
     */
    public function render(): string;
}