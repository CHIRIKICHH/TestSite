<?
  $log = $_POST['login'];
  $pass = $_POST['pass'];

  $dbLogin = 'root';
  $dbPass = 'root';
  $dbHost = 'localhost';
  $db_name = 'logbase';
  $dblink = mysqli_connect ($dbHost, $dbLogin, $dbPass, $db_name);
  if(mysqli_num_rows(mysqli_query($dblink,'SELECT `Login` FROM  `users`  WHERE `Login`="'.$log.'"')) > 0){
    $data = "NUL";
    exit( json_encode($data) );
  }

  $sql_query = 'INSERT INTO `users` (`Login`, `Password`, `Reg_Date`) VALUES ("'.$log.'", "'.$pass.'", current_timestamp());';
  if ($dblink){
    $answer = mysqli_query($dblink, $sql_query);
    if (!$answer) {
      $data = false; //Возвращаемое значение при неудачном добавлении
    }
    else {
      $data = true; //Возвращаемое значение при успешном добавлении
    }
  }
  else{
    $data = "DBERROR"; // Код для ошибки подключения к БД
  }
exit( json_encode($data) );
