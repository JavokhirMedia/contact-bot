<?php

class Database extends PDO
{

    function __construct()
    {
        parent::__construct('mysql:host=' . server . ';
        	dbname=' . dbname . '', '' . user . '', '' . password . '');
    }
}

?>