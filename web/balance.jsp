<%-- 
    Document   : balance
    Created on : Jun 8, 2017, 11:47:07 PM
    Author     : MMM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./vendors.css"> 
        <title>Balance</title>
    </head>
    <body>
        <h1>Balance</h1>
        <br>
        <sql:setDataSource 
            var="snapshot" 
            driver="org.apache.derby.jdbc.ClientDriver40"
            url="jdbc:derby://localhost/ebooks2;create=true;"
            user="derbyremote"  
            password="derbyremote"/>
        
        <sql:query dataSource="${snapshot}" var="result">
            select namesup,sum(AMOUNT) as sum_amount,status from invoices group by namesup, status order by status
        </sql:query>

        <table border="1" bgcolor="white" width="100%">
            <tr>
            <th>NAME</th>
            <th>SUM AMOUNT</th>
            <th>STATUS</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.namesup}"/></td>
                <td><c:out value="${row.sum_amount}"/></td>
                <td><c:out value="${row.status}"/></td>
            </tr>
            </c:forEach>
        </table>
        <form action="index.jsp" flush="true">    
            <input type="submit" class="button3" name="displayallebooks_exit" value="Back" size="40">
        </form>  
    </body>
</html>