<%-- 
    Document   : newVendor
    Created on : May 28, 2017, 2:47:10 PM
    Author     : MMM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert new Vendor</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="./vendors.css">
    </head>
    <body>
        <h1>Record new Vendor</h1><br>
        <form action="${pageContext.request.contextPath}/insertvendor" method="put">
            <table>
                <tr><td>code:</td><td><input type="text" name="inputform_newVendor_code"></input></td></tr>
                <tr><td>Name:</td><td><input type="text" name="inputform_newVendor_name"></input></td></tr>
                <tr><td>Address:</td><td><input type="text"name="inputform_newVendor_address"></input></td></tr>
                <tr><td>Balance:</td><td><input type="text"name="inputform_newVendor_balance"></input></td></tr>
                
            </table>
            <input type="submit" class="button3" value="Save" name="inputform_save">
        </form>
    </body>
</html>
