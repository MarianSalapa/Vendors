<%-- 
    Document   : listInvoices
    Created on : Jun 6, 2017, 11:19:20 PM
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
        <title>Display all Invoices</title>
    </head>
    <body>
        <h1>Display all Invoices</h1>
        <br>
        <sql:setDataSource 
            var="snapshot" 
            driver="org.apache.derby.jdbc.ClientDriver40"
            url="jdbc:derby://localhost/ebooks2;create=true;"
            user="derbyremote"  
            password="derbyremote"/>
        
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from Invoices
        </sql:query>

        <table border="1" bgcolor="white" width="100%">
            <tr>
            <th>NO INVOICE</th>
            <th>DATE</th>
            <th>NAME</th>
            <th>DESCRIPTION</th>
            <th>AMOUNT</th>
            <th>STATUS</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.noinv}"/></td>
                <td><c:out value="${row.dateinv}"/></td>
                <td><c:out value="${row.namesup}"/></td>
                <td><c:out value="${row.description}"/></td>
                <td><c:out value="${row.amount}"/></td>
                <td><c:out value="${row.status}"/></td>
            </tr>
            </c:forEach>
        </table>
        <form action="index.jsp" flush="true">    
            <input type="submit" class="button3" name="displayallinvoices_exit" value="Back" size="40">
        </form>  
    </body>
</html>
