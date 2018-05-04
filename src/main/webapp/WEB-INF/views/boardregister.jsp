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
	<form method = "post">
		<div>
			<input type = "text" name = "title" placeholder = "제목">
		</div>
		
		<div>
			<input type = "text" name = "contents" placeholder = "내용">
		</div>
		
		<div>
			<input type = "text" name = "author" placeholder = "작성자">
		</div>
	</form>

</body>
</html>