<%-- 
    Document   : listVendors
    Created on : May 28, 2017, 8:46:17 PM
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
        <title>Display all Vendors</title>
    </head>
    <body>
        <h1>Display all Vendors</h1>
        <br>
        <sql:setDataSource 
            var="snapshot" 
            driver="org.apache.derby.jdbc.ClientDriver40"
            url="jdbc:derby://localhost/ebooks2;create=true;"
            user="derbyremote"  
            password="derbyremote"/>
        
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from Vendors
        </sql:query>

        <table border="1" bgcolor="white" width="100%">
            <tr>
            <th>CODE</th>
            <th>NAME</th>
            <th>ADDRESS</th>
            <th>BALANCE</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.code}"/></td>
                <td><c:out value="${row.name}"/></td>
                <td><c:out value="${row.address}"/></td>
                <td><c:out value="${row.balance}"/></td>
            </tr>
            </c:forEach>
        </table>
        <form action="index.jsp" flush="true">    
            <input type="submit" class="button3" name="displayallebooks_exit" value="Back" size="40">
        </form>  
    </body>
</html>
