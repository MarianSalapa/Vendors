<%-- 
    Document   : deleteVendor
    Created on : May 28, 2017, 10:09:48 PM
    Author     : MMM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./vendors.css"> 
        <title>Search and Delete a Vendor</title>
    </head>
    <body>
        <h1>Delete Vendor</h1>
        <form action="${pageContext.request.contextPath}/deletevendor" method="put">
            <table>
                <tr><td>Code:</td><td><input type="text" name="inputform_code_delete"></input></td></tr>
            </table>
            <input type="submit" class="button3" value="Delete" name="inputform_delete">
        </form>
        
        
        <%--
        <h1>Search Vendor using its code</h1>
        <h3>You have to search first using code and after identifying the Vendor you can delete it.</h3>
        <br>
        <form action = "deleteVendor.jsp" method="post">
            Code: <input type="text" name="inputform_searchvendor_Code" value="Vendor Code" ></input>
                      <input type="submit" value="Search" name="inputform_searchvendor_search">
                      <br>
                      <input type="submit" class="button3" value="Delete" name="inputform_deletevendor_delete">
        </form>
         we are using ebooksstorebeans.eBookBean Java Bean Class to identify the record based on ISBN and to load values in bean 
        when Search button is pushed 
        <% // this code - Scriptlet - is used to analyse push of buttons in DeleteEBook.JSP servlet
            if (request.getParameter("inputform_searchvendor_search")!= null) {
                %>
                        <jsp:useBean id="eBookBean" class="vendorbeans.vendorBean" scope="session">
                            <jsp:setProperty name="eBookBean" property="isbn" value= "<%= request.getParameter("inputform_searchvendor_Code") %>" /> 
                            CODE: <jsp:getProperty name="eBookBean" property="code"/><br>
                            NAME: <jsp:getProperty name="eBookBean" property="name"/><br>
                            ADDRESS: <jsp:getProperty name="eBookBean" property="address"/><br>
                            BALANCE: <jsp:getProperty name="eBookBean" property="balance"/> <br>
                        </jsp:useBean>    
                <%
            }
            if (request.getParameter("inputform_deletevendor_delete") != null) {
                %> 
                    <jsp:setProperty name="vendorBean"
                    property="delete" value="true"/>
                    <jsp:forward page="index.jsp"></jsp:forward>
                <%                         
            }
        %>
       --%>
    </body>
</html>
