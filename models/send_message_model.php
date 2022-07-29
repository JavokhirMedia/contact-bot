<?php

class message_model extends Model
{

    /**
     * @var string
     */
    private string $table;

    public function __construct()
    {
        parent::__construct();
        $this->table = 'message';
    }

    /**
     * @param $user_id
     * @param $message_id
     * @param $time
     * @return bool
     */

    function set($user_id, $message_id, $user_message_id, $time): bool
    {
        return $this->db->prepare("INSERT INTO `$this->table` (`user_id`, `message_id`, `user_message_id`, `time`) VALUES ('$user_id', $message_id, $user_message_id, '$time')")->execute();
    }

    /**
     * @param $message_id
     * @return array|false
     */

    function get($value, $message_id): bool|array
    {
        $q = $this->db->prepare("SELECT * FROM `$this->table` WHERE `$value` = $message_id");
        $q->execute();
        return $q->fetchAll();
    }

    function getStat(): bool|array
    {
        $q = $this->db->prepare("SELECT * FROM `$this->table`");
        $q->execute();
        return $q->fetchAll();
    }


}