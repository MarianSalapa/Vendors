<%-- 
    Document   : newInvoice
    Created on : May 29, 2017, 10:36:09 PM
    Author     : MMM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert new Invoice</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="./vendors.css">
    </head>
    <body>
        <h1>Record new invoice</h1><br>
        <form action="${pageContext.request.contextPath}/insertinvoice" method="put">
            <table>
                <tr><td>No of invoice:</td><td><input type="text" name="inputform_newNo_Inv"></input></td></tr>
                <tr><td>Date:</td><td><input type="text" name="inputform_newDate"></input></td></tr>
                <tr><td>Name of Supplier:</td><td><input type="text" name="inputform_newName_Supp"></input></td></tr>
                <tr><td>Description:</td><td><input type="text" name="inputform_newDescription"></input></td></tr>
                <tr><td>Amount:</td><td><input type="text"name="inputform_newAmount"></input></td></tr>
                
            </table>
            <input type="submit" class="button3" value="Save" name="inputform_save">
        </form>
    </body>
</html>
