<?php

class send_message_controller extends Controller
{
    /**
     * @var model
     */
    public $model;

    /**
     * @var send_message_controller
     */
    public $message_model;

    /**
     * @var mixed
     */
    public $message_id;

    function __construct()
    {

        parent::__construct();

        require './models/users_model.php';
        require './models/send_message_model.php';
        require './config/text.php';

        $this->model = new users_model();
        $this->message_id = $this->telegram->MessageID();
        
        $this->message_model = new message_model();

        $result = $this->telegram->forwardMessage([
            'chat_id' => sendText::ADMIN_ID,
            'from_chat_id' => $this->chat_id,
            'message_id' => $this->message_id,
        ])['result']['message_id'];

        $time = date("Y-m-d--H:i:s");

        $this->message_model->set($this->chat_id, $this->message_id, $result, $time);

        $this->telegram->sendMessage(
            [
                'chat_id' => $this->chat_id,
                'text' => sendText::getText("MESSAGE_DONE", $this->model->getLang($this->chat_id)),
                'reply_markup' => $this->telegram->buildKeyBoardHide(),
            ],
        );

    }
}