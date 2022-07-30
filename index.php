<?php

include './config/database.php';
include './config/telegram.php';
include './config/text.php';

include './libs/Controller.php';
include './libs/Database.php';
include './libs/Model.php';
include './libs/Main.php';
include './libs/Telegram.php';

var_dump(file_get_contents("https://api.telegram.org/bot". text::API_TOKEN . "/setWebhook?url=https://bot.javokhir-media.uz/contact-bot/"));

$application = new Main();
