<%-- 
    Document   : user_info
    Created on : 12.03.2016, 17:14:41
    Author     : dmitriy
--%>

<%@page import="dao.User"%>
<%@page import="dao.DatabaseInteraction"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>My profile</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="libs/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="libs/bootstrap/bootstrap-grid.min.css" />
        <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/fonts.css" /> 
        <link rel="stylesheet" href="css/user_info.css" />
    </head>
    
    <jsp:scriptlet>
        String username = session.getAttribute("username").toString();
        User loggedUser = DatabaseInteraction.getUser(username);
    </jsp:scriptlet>

    <body>
        <header class="main_head">
            <div class="container">

                <div class="row"><h1>Profile settings</h1>
                    <div class="col-md-4 settings">

                        <jsp:scriptlet> System.out.println(loggedUser.getUsername()); </jsp:scriptlet>

                        <h3> <jsp:expression> loggedUser.getEmail() </jsp:expression> </h3>
                        <a href="#">изменить</a>
                        <h3> <jsp:expression> loggedUser.getUsername() </jsp:expression> </h3>
                        <a href="#">изменить</a>

                        <h3><a href="#">изменить ваш пароль</a></h3>
                    </div>
                    <div class="col-md-8 history">
                        <div class="one-order">
                            <div class="descr_up">
                                <h4>Order №</h4>
                                <p>xx.xx.xxxxy</p>
                            </div>
                            <div class="col-md-9 descr_down">
                                <p><img src="img/products/lemon.jpg" alt="*">
                                    MAZH Tattoo Mint Vaseline</p>
                            </div>
                            <div class="col-md-3 price">
                                <h6>$120.00</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
