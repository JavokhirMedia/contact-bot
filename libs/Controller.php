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
    public model $session;

    /**
     * @var mixed
     */
    public mixed $chat_id;

    function __construct()
    {

        $this->telegram = new Telegram();
        $this->chat_id = $this->telegram->ChatID();

        include './models/session_model.php';
        $this->session = new Session_Model();

    }


}

?>