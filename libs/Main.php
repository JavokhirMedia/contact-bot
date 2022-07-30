<?php

class Main
{

    /**
     * @var Telegram
     */
    private Telegram $telegram;
    /**
     * @var model
     */
    public model $session;

    function __construct()
    {

        $this->telegram = new Telegram();
        require '../models/session_model.php';
        $this->session = new Session_Model();

        if ($this->telegram->getUpdateType() == "reply")
        {
            require 'controllers/admin_reply_controller.php';
            $controller = new admin_reply_controller();
        }
        elseif ($this->telegram->IsBotCommand())
        {
            if ($this->telegram->Text() == '/start'){
                require 'controllers/start_controller.php';
                $controller = new start();
            } else {
                $this->error(ERROR_TEXT);
            }

        }
        else
        {
            $status = $this->session->get($this->telegram->ChatID());
            require 'controllers/'. $status[0]["status"] .'_controller.php';
            $sl_class = $status[0]["status"].'_controller';
            $controller = new $sl_class;
        }

    }

    /**
     * @param $text
     * @return bool
     */
    public function error($text): bool
    {
        $this->telegram->sendMessage(['chat_id' => $this->telegram->ChatID(), 'text' => $text, 'parse_mode' => "html"]);
        return false;
    }


}

