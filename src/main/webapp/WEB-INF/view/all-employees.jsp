<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pasch
  Date: 19.11.2021
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
<h1>All Employees</h1>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operation</th>
    </tr>

    <c:forEach var="emp" items="${allEmployees}">
        <%--        link--%>
        <c:url var="updateButton" value="/updateInfo">
            <%--            param in link--%>
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <tr>
            <td>
                    ${emp.name}
            </td>
            <td>
                    ${emp.surname}
            </td>
            <td>
                    ${emp.department}
            </td>
            <td>
                    ${emp.salary}
            </td>
            <td>
                <input type="button" value="Update" onclick="window.location.href = '${updateButton}'">
                <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'">
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<input type="button" value="Add" onclick="window.location.href='/addNewEmployee'"/>
</body>
</html>
