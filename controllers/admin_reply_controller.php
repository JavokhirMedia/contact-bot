<?php

class admin_reply_controller extends Controller
{

    public users_model $model;
    public admin_reply_model $admin_reply_model;
    public mixed $user_status;
    public message_model $send_model;
    public mixed $reply_message_id;
    public array|bool $user_id;
    public mixed $user_message_id;

    public function __construct()
    {
        parent::__construct();

        require './models/users_model.php';
        require './models/admin_reply_model.php';
        require './models/send_message_model.php';
        require './config/text.php';

        $this->model = new users_model();
        $this->admin_reply_model = new admin_reply_model();
        $this->send_model = new message_model();

        $lang = $this->model->getLang($this->chat_id);

        $this->user_status = $this->model->get($this->chat_id)['status'];

        $this->reply_message_id = $this->telegram->ReplyToMessageID();

        $get = $this->send_model->get("message_id", $this->reply_message_id);
        $this->user_id = $get['user_id'];
        $this->user_message_id = $get['user_message_id'];

        if ($this->user_status == "administrator") {

            if ($this->telegram->getUpdateType() == "text") {

                if ($this->telegram->Text() == "/hello") {

                    $this->telegram->sendMessage(
                        [
                            'chat_id' => $this->chat_id,
                            'text' => "Men <a href=\"tg://user?id=$this->user_id\">$this->user_id</a> bilan salomlashib qo'ydim, tez orada siz bilan bog'lanib qolsa kerak. Sekin, kutavering...)",
                            'parse_mode' => "html",
                        ],
                    );

                    $this->telegram->sendChatAction(
                        [
                            'chat_id' => $this->user_id,
                            'action' => "typing",
                        ]
                    );

                    sleep(2);

                    $this->telegram->sendMessage(
                        [
                            'chat_id' => $this->user_id,
                            'text' => text::getText("HELLO_ADMIN", $lang),
                            'reply_to_message_id' => $this->user_message_id,
                        ]
                    );

                } elseif ($this->telegram->Text() == "/take_revenge") {
                    $this->telegram->sendMessage(
                        [
                            'chat_id' => $this->chat_id,
                            'text' => "Men <a href=\"tg://user?id=$this->user_id\">$this->user_id</a>ning salomiga alik olib qo'ydim, tez orada siz bilan bog'lanib qolsa kerak. Sekin, kutavering...)",
                            'parse_mode' => "html",
                        ],
                    );

                    $this->telegram->sendChatAction(
                        [
                            'chat_id' => $this->user_id,
                            'action' => "typing",
                        ]
                    );

                    sleep(2);

                    $this->telegram->sendMessage(
                        [
                            'chat_id' => $this->user_id,
                            'text' => text::getText("TAKE_REVENGE", $lang),
                            'reply_to_message_id' => $this->user_message_id,
                        ]
                    );
                } elseif ($this->telegram->Text() == "/situation") {
                    $this->telegram->sendMessage(
                        [
                            'chat_id' => $this->chat_id,
                            'text' => "Men <a href=\"tg://user?id=$this->user_id\">$this->user_id</a>dan xol-axvol so'rab qo'ydim.",
                            'parse_mode' => "html",
                        ],
                    );

                    $this->telegram->sendChatAction(
                        [
                            'chat_id' => $this->user_id,
                            'action' => "typing",
                        ]
                    );

                    sleep(2);

                    $this->telegram->sendMessage(
                        [
                            'chat_id' => $this->user_id,
                            'text' => text::getText("INQUIRE_ABOUT_SITUATION", $lang),
                            'reply_to_message_id' => $this->user_message_id,
                        ]
                    );
                } elseif ($this->telegram->Text() == "/thank_you") {
                    $this->telegram->sendMessage(
                        [
                            'chat_id' => $this->chat_id,
                            'text' => "<a href=\"tg://user?id=$this->user_id\">$this->user_id</a>ga qilga xizmatlari uchun rahmat aytib qo'ydim.",
                            'parse_mode' => "html",
                        ],
                    );

                    $this->telegram->sendChatAction(
                        [
                            'chat_id' => $this->user_id,
                            'action' => "typing",
                        ]
                    );

                    sleep(2);

                    $this->telegram->sendMessage(
                        [
                            'chat_id' => $this->user_id,
                            'text' => text::getText("THANK_YOU_ADMIN", $lang),
                            'reply_to_message_id' => $this->user_message_id,
                        ]
                    );
                } else {
                    $this->telegram->sendMessage(
                        [
                            'chat_id' => $this->chat_id,
                            'text' => "<a href=\"tg://user?id=$this->user_id\">$this->user_id</a>ga sizning yozgan xabaringiz yetkazildi, rahmat.",
                            'parse_mode' => "html",
                        ],
                    );

                    $this->telegram->sendChatAction(
                        [
                            'chat_id' => $this->user_id,
                            'action' => "typing",
                        ]
                    );

                    sleep(2);

                    $this->telegram->sendMessage(
                        [
                            'chat_id' => $this->user_id,
                            'text' => $this->telegram->Text(),
                            'reply_to_message_id' => $this->user_message_id,
                        ]
                    );

                }
            } elseif ($this->telegram->getUpdateType() == "voice") {
                $this->telegram->sendMessage(
                    [
                        'chat_id' => $this->chat_id,
                        'text' => "<a href=\"tg://user?id=$this->user_id\">$this->user_id</a>ga yuborgan ovozli xabaringiz yetkazildi, rahmat.",
                        'parse_mode' => "html",
                    ],
                );

                $this->telegram->sendChatAction(
                    [
                        'chat_id' => $this->user_id,
                        'action' => "record_voice",
                    ]
                );

                sleep(2);

                $this->telegram->sendVoice(
                    [
                        'chat_id' => $this->user_id,
                        'voice' => $this->telegram->voiceFileID(),
                        'caption' => $this->telegram->Caption(),
                        'reply_to_message_id' => $this->user_message_id,
                    ]
                );

            } elseif ($this->telegram->getUpdateType() == "photo") {

                $this->telegram->sendMessage(
                    [
                        'chat_id' => $this->chat_id,
                        'text' => "<a href=\"tg://user?id=$this->user_id\">$this->user_id</a>ga siz yuborgan rasmni yuborib qo'ydim, rahmat.",
                        'parse_mode' => "html",
                    ],
                );

                $this->telegram->sendChatAction(
                    [
                        'chat_id' => $this->user_id,
                        'action' => "upload_photo",
                    ]
                );

                sleep(2);

                $this->telegram->sendPhoto(
                    [
                        'chat_id' => $this->chat_id,
                        'photo' => $this->telegram->photoFileID(),
                        'caption' => $this->telegram->Caption(),
                        'reply_to_message_id' => $this->user_message_id,
                    ]
                );

            } elseif ($this->telegram->getUpdateType() == "video") {

                $this->telegram->sendMessage(
                    [
                        'chat_id' => $this->chat_id,
                        'text' => "<a href=\"tg://user?id=$this->user_id\">$this->user_id</a>ga siz yuborgan videoni yuborib qo'ydim, rahmat.",
                        'parse_mode' => "html",
                    ],
                );

                $this->telegram->sendChatAction(
                    [
                        'chat_id' => $this->user_id,
                        'action' => "upload_video",
                    ]
                );

                sleep(2);

                $this->telegram->sendVideo(
                    [
                        'chat_id' => $this->chat_id,
                        'video' => $this->telegram->voiceFileID(),
                        'caption' => $this->telegram->Caption(),
                        'reply_to_message_id' => $this->user_message_id,
                    ]
                );

            }

        }

    }

}