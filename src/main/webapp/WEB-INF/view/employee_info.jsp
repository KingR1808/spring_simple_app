<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: pasch
  Date: 19.11.2021
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Employee Info</h1>
<br>
<form:form action="/saveEmployee" modelAttribute="employee">
    <form:hidden path="id"/>
    Name <form:input path="name"/><br>
    Surname <form:input path="surname"/><br>
    Department <form:input path="department"/><br>
    Salary <form:input path="salary"/><br>
    <input type="submit" value="OK">

</form:form>

</body>
</html>
