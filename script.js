function ZP() {
  var x = 0;
  $('.inp').each(function(){  //Перебор всех input через метод .each()
    if($(this).val()!= "")    //Условие для проверки заполненности полей input
      x++;});
  if (x < 2){
    $('.fsendfalse').html("NOT FULL");
    $('.fsendfalse').css('display','block');
  }
  else {
    DBLOG();
    $('.fsendfalse').css('display','none');
  }
}

function DBLOG(){
   var msg = $('form').serialize(); //Получение значений формы
    var xhr = new XMLHttpRequest();  // Получение значения о ошибке или успешной записи в БД из php файла
    xhr.open('POST', 'handler.php', true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); //Указание о том какой вид будут иметь данные
    xhr.send(msg); //Отправка асинхронного запроса на сервер
    xhr.onreadystatechange = function() {
      if (xhr.readyState == 4 && xhr.status == 200) {
        var res = JSON.parse(xhr.responseText); //Получение ответа от сервера
        console.log(res); //Вывод в консоль браузера результата
        if (res == true) { //Условие при успешной записи в БД
          $('.fdiv *').css('display','none');
          $('.fsend').css('display','block');
        }
        else if (res == false){ //При неудачной записи в БД
          $('.fsendfalse').html("ERROR");
          $('.fsendfalse').css('display','block');
        }
        else if(res == "NUL"){ //При повторе логина
          $('.fsendfalse').html("LOGIN");
          $('.fsendfalse').css('display','block');
        }
        else if(res == "DBERROR"){
          $('.fsendfalse').html("DB CONNECTION ERROR");
          $('.fsendfalse').css('display','block');
        }
      }
    }
}
