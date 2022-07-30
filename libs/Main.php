<?php

class Main
{

    /**
     * @var Telegram
     */
    public $telegram;
    /**
     * @var model
     */
    public $session;

    function __construct()
    {

        $this->telegram = new Telegram();

        require "models/session_model.php";
        $this->session = new Session_Model();

        var_dump($this->session);

        $this->error(json_encode($this->session->get($this->telegram->ChatID())));

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
        elseif ($this->session->get($this->telegram->ChatID()) == "send_message")
        {
//            $status = $this->session->get($this->telegram->ChatID());
//            require 'controllers/'. $status[0]["status"] .'_controller.php';
            require 'controllers/send_message_controller.php';
            $sl_class = 'send_message_controller';
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

