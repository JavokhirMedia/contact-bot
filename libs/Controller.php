<?php

class Controller
{

    public $telegram;
    public $session;
    public $chat_id;

    function __construct()
    {

        $this->telegram = new Telegram();
        $this->chat_id = $this->telegram->ChatID();

        include 'models/session_model.php';
        $this->session = new Session_Model();

    }


}

?>