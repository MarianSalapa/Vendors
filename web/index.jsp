<%-- 
    Document   : index
    Created on : May 28, 2017, 12:01:30 PM
    Author     : MMM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendors</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="./vendors.css"> 
    </head>
    <body>
        <h1>Vendors</h1>
        
        <form action="${pageContext.request.contextPath}/index" method="post">
            <table class="tablewithborder">
                <tr><td class="tdc"><input type="submit" class="button2" name="mainpage_add_vendor" value="Add Vendor" size="30"></td></tr>
                <tr><td class="tdc"><input type="submit" class="button2" name="mainpage_list_vendors" value="list Vendor" size="30"></td></tr>
                <tr><td class="tdc"><input type="submit" class="button2" name="mainpage_del_vendor" value="Delete Vendor" size="30"></td></tr>
                <tr><td class="tdc"><input type="submit" class="button2" name="mainpage_add_inv" value="Add invoice" size="30"></td></tr>
                <tr><td class="tdc"><input type="submit" class="button2" name="mainpage_pay_inv" value="Pay Invoice" size="30"></td></tr>
                <tr><td class="tdc"><input type="submit" class="button2" name="mainpage_list_inv" value="List Invoices" size="30"></td></tr>
                <tr><td class="tdc"><input type="submit" class="button2" name="mainpage_balance" value="Payments status" size="30"></td></tr>
            </table>
            <br>
        </form>
    </body>
</html>
