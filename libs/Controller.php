<?php

class Controller
{

    /**
     * @var Telegram
     */
    public Telegram $telegram;

    /**
     * @var model
     */
    public model|Session_Model $session;

    /**
     * @var mixed
     */
    public mixed $chat_id;

    function __construct()
    {

        $this->telegram = new Telegram();
        $this->chat_id = $this->telegram->ChatID();

        require './models/session_model.php';
        $this->session = new Session_Model();

    }


}

?>