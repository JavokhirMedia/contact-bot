<?php

class admin_reply_model extends Model
{

    public string $table;

    public function __construct()
    {
        parent::__construct();
        $this->table = 'admin_replays';
    }

    public function set()
    {

    }



}