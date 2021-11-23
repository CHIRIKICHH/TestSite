<?
  $password = $_POST['pass'];
  $login = $_POST['login'];
  // Соединямся с БД
  $link=mysqli_connect("127.0.0.1", "root", "root", "logbase");

      // Вытаскиваем из БД запись, у которой логин равняеться введенному
      $query = mysqli_query($link,"SELECT * FROM users WHERE Login='".mysqli_real_escape_string($link,$login)."' LIMIT 1");
      $data = mysqli_fetch_assoc($query);

  	// Сравниваем логины
  	if($data['Login'] === $login)
  	{
      	// Сравниваем пароли
  	    if($data['Password'] === $password)
  	    {
            $ret = true;
            exit(json_encode($ret));
        }
  	    else
  	    {
  	        $ret = 'NUL';
  	    }
  	}
  	else
  	{
  		$ret = 'NUL';
  	}
    exit(json_encode($ret));
