<?php

class admin_reply_model extends Model
{

    public string $table;

    public function __construct()
    {
        parent::__construct();
        $this->table = 'admin_replays';
    }

    public function set($chat_id, $from_id, $from_message_id, $type, $message_file_id): bool
    {
        return $this->db->prepare("INSERT INTO `$this->table` (`admin_id`, `from_chat_id`, `from_message_id`, `type`, `message_file_id`) VALUES ($chat_id, $from_id, $from_message_id, $type, $message_file_id)")->execute();
    }



}