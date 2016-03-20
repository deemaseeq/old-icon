<%@page import="dao.Product"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : store
    Created on : 12.03.2016, 17:16:59
    Author     : dmitriy
--%>

<%@page import="dao.DatabaseInteraction"%>
<%@page import="java.util.List"%>
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
            <%--
            <%= products.View.showProductList() %>
            --%>

            <% pageContext.setAttribute("products", DatabaseInteraction.getProductList());%>

            <c:forEach var = "product" items = "${products}">
                <div>
                    <h3>
                        <c:out value = "${product.getProductTypeID()}" />&nbsp;
                        <c:out value = "${product.getProductName()}"  /> &nbsp;
                        <c:out value = "${product.getProductID()}" />  &nbsp;
                    </h3>

                    <img src = " <c:out value = "${product.getProductPic()}" /> " alt="Товар">

                    <p>
                        Цена - <c:out value = "${product.getProductPrice()}" />
                    </p>
                </div>
            </c:forEach>

        </div>
    </body>
</html>
