<%-- 
    Document   : store
    Created on : 12.03.2016, 17:16:59
    Author     : dmitriy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="libs/w3css/w3.css">
        <title>JSP Store Sample</title>
    </head>
    <body>
        <h1>Here will be store</h1>
        <h2>Product list sample</h2>
        <div id="productList">
            <%= products.View.showProductList() %>
        </div>
    </body>
</html>
