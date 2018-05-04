<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/action_page.php" target="_blank" method="POST">
  Email Address:<br>
  <input type="text" name="Email" maxlength="10" size="10">@
  <select name="email">
  <option value="naver.com"></option>
    <option value="naver.com">naver.com</option>
    <option value="daum.net">daum.net</option>
    <option value="nate.com">nate.com</option>
    <option value="yahoo.co.kr">yahoo.co.kr</option>
  </select>
 
  <br><br>
  Password:<br>
  <input type="password" name="psw" maxlength="20">
  <br><br>
  <input type="submit" value="Submit">
  <input type="reset">
</form> 
</form>

</body>
</html>