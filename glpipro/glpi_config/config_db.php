<?php
class DB extends DBmysql {
   public $dbhost = 'db-glpi-10';
   public $dbuser = 'glpi';
   public $dbpassword = 'usercoren';
   public $dbdefault = 'glpi';
   public $use_utf8mb4 = true;
   public $allow_myisam = false;
   public $allow_datetime = false;
   public $allow_signed_keys = false;
}
