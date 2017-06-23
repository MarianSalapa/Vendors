<%-- 
    Document   : payInvoice
    Created on : Jun 8, 2017, 10:54:58 PM
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
        <title>Pay Invoice</title>
    </head>
    <body>
        <h1>Pay Invoice</h1>
        <form action="${pageContext.request.contextPath}/payinvoice" method="put">
            <table>
                <tr><td>Name of Supplier:</td><td><input type="text" name="inputform_name_pay"></input></td></tr>
                <tr><td>No of invoice:</td><td><input type="text" name="inputform_inv_pay"></input></td></tr>
            </table>
            <input type="submit" class="button3" value="Pay" name="inputform_save">
        </form>
    </body>
</html>
