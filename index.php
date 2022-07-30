<?php

date_default_timezone_set('Asia/Tashkent');

require './config/database.php';
require './config/telegram.php';
require './config/text.php';

require './libs/Controller.php';
require './libs/Database.php';
require './libs/Model.php';
require './libs/Main.php';
require './libs/Telegram.php';

var_dump(file_get_contents("https://api.telegram.org/bot". text::API_TOKEN . "/setWebhook?url=https://bot.javokhir-media.uz/contact/"));
var_dump(file_get_contents("https://api.telegram.org/bot". text::API_TOKEN . "/getWebhookInfo"));

$application = new Main();
