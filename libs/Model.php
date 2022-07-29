<?php

class Model
{

    /**
     * @var Database
     */
    public $db;

    function __construct()
    {
        $this->db = new Database();
    }
}
