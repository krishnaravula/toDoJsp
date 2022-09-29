<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="java.sql.*" %>
     <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body  bgcolor="Yellow">
 Error


 <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://127.0.0.1:3306/rsk" 
 user="root" password="Acadia@123"/>
 <sql:query var="rs" dataSource="${db}">select * from Student</sql:query>
 <c:forEach items="${rs.rows}" var="Students">
 <c:out value="${Students.studentId}"  ></c:out>
 Test
 <br>
 </c:forEach>
 
 <c:set  var="str" value="Sai Krishna Ravula"></c:set>
 length : ${ fn:length(str)}
 
 <c:forEach items="${fn:split(str,' ')}" var="s" >
 ${s}
 <br>
 </c:forEach>
</body>
</html>