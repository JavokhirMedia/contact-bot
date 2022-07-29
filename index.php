<?php

require './config/database.php';
require './config/telegram.php';

require './libs/Controller.php';
require './libs/Database.php';
require './libs/Model.php';
require './libs/Main.php';
require './libs/Telegram.php';

require './models/session_model.php';

$application = new Main();
