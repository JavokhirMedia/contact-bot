<?php

class start extends Controller
{

    /**
     * @var users_model
     */
    private $model;

    function __construct()
    {
        parent::__construct();

        require './models/users_model.php';
        require './config/text.php';

        $this->model = new users_model();

        if ($this->model->if_not_exist($this->chat_id)) {
            $this->telegram->sendMessage([
                'chat_id' => $this->chat_id,
                'text' => text::SELECT_LANG,
                'parse_mode' => "html",
                'reply_markup' => $this->telegram->buildInlineKeyBoard([
                    [$this->telegram->buildInlineKeyboardButton("🇺🇿 Oʻzbek (Lotin)", "uzl")],
                    [$this->telegram->buildInlineKeyboardButton("🇺🇿 Ўзбек (Кирилл)", "uzk")],
                    [$this->telegram->buildInlineKeyboardButton("🇷🇺 Русский", "rus")],
                ]),
            ]);
            $this->session->set($this->chat_id, "SelectLang");
        } else {
            $this->telegram->sendMessage([
                'chat_id' => $this->chat_id,
                'text' => text::getText("START_TEXT", $this->model->getLang($this->chat_id)),
                'reply_markup' => $this->telegram->buildKeyBoardHide(),
            ]);
            $this->session->update($this->chat_id, "send_message");
        }
    }

}


?>