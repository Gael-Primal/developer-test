<?php

namespace Primal\CommonTest\Service;

class PDOFactory
{
  public static function getMysqlConnexion()
  {
    $db = new \PDO('mysql:host=db;dbname=test-primal', "root", "test");
    $db->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
    return $db;
  }
}
