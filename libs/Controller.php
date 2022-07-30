<?php

class Controller
{

    /**
     * @var Telegram
     */
    public $telegram;

    /**
     * @var model
     */
    public $session;

    /**
     * @var mixed
     */
    public $chat_id;

    function __construct()
    {

        $this->telegram = new Telegram();
        $this->chat_id = $this->telegram->ChatID();

        require 'models/session_model.php';
        $this->session = new Session_Model();

    }


}

?>