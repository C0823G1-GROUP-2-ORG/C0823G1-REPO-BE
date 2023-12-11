<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 11/12/2023
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="servlet/SendMail">
  To:<input type="text" name="to"/><br/>
  Subject:<input type="text" name="subject"><br/>
  Text:<textarea rows="10" cols="70" name="msg"></textarea><br/>
  <input type="submit" value="send"/>
</form>
</body>
</html>
