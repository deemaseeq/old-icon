<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : newjsp
    Created on : 23.03.2016, 20:06:25
    Author     : dmitriy
--%>

<%@page import="dao.DatabaseInteraction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <style>
        .header-text {
            font-family: "Impact", Charcoal, sans-serif;
            padding-left: 10px;
            padding-right: 10px;
        }

        .desc {
            font-family: monospace;
            font-size: large;
            text-align: center;
            margin: auto;
        }

        .w3-third{
            height: 140px;
        }

        .tagline {
            font-family: monospace;
        }

        .w3-top{
            width: 100%;
            display: block;
            top: 0;
        }

        .w3-card-4 {
            width: 70%;
            margin: auto;
            margin-bottom: 16px;
            margin-top: 16px;
        }

        .product-image {
            width: 100%;
        }

        .image-container {
            width: 30%;
            vertical-align: central;
            height: auto;
            padding: auto;
        }

        .product-descr {
            width: 70%;
            padding: 0px;
        }
        .product-descr p{
            width: 100%;
        }

    </style>

    <title>Old Icon Shop Sample</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="libs/w3css/w3.css">
    <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css" >



    <script>
        function myFunction() {
            document.getElementById("demo").classList.toggle("w3-show");
        }
    </script>


    <body>
        <header>

            <div class="w3-top">
                <ul class="w3-navbar w3-card-2 w3-black">
                    <li class="w3-hide-medium w3-hide-large w3-black w3-opennav w3-right">
                        <a href="javascript:void(0);" onclick="myFunction()">☰</a>
                    </li>
                    <li class="w3-center w3-hide-small">
                        <label class="w3-xlarge header-text">OLD ICON SHOP</label>
                    </li>
                    <li  class="w3-left"><a href="#"><i class="fa fa-home w3-large"></i></a></li>
                    <li  class="w3-right w3-hide-small"><a href="#"><i class="fa fa-user w3-large"></i></a></li>
                    <li  class="w3-right w3-hide-small"><a href="#"><i class="fa fa-shopping-cart w3-large"></i></a></li>
                    <li  class="w3-right w3-hide-small"><a href="#"><i class="fa fa-search w3-large"></i></a></li>
                </ul>

                <div id="demo" class="w3-hide w3-hide-large w3-hide-medium">
                    <ul class="w3-navbar w3-left-align w3-large w3-black">
                        <li class="w3-center">
                            <label class="w3-xlarge header-text">OLD ICON SHOP</label>
                        </li>
                        <li class="w3-right"><a href="#"><i class="fa fa-user w3-large"></i></a></li>
                        <li  class="w3-center"><a href="#"><i class="fa fa-shopping-cart w3-large"></i></a></li>
                        <li  class="w3-center"><a href="#"><i class="fa fa-search w3-large"></i></a></li>
                    </ul>
                </div>

            </div>

        </header>

        <% pageContext.setAttribute("products", DatabaseInteraction.getProductList());%>
        <div class="w3-container w3-white w3-padding-64">

            <c:forEach var = "product" items = "${products}">
                <div class="w3-card-4 w3-animate-bottom">

                    <header class="w3-container w3-light-grey">
                        <label class="w3-xlarge w3-margin-4 w3-left">
                            <c:out value = "${product.getProductName()}"  />
                        </label>
                        <label class="w3-xlarge w3-margin-4 w3-right">
                            <c:out value = "${product.getProductPrice()}" /> грн.
                        </label>
                    </header>

                    <div class="w3-container">
                        <div class="w3-container w3-left image-container">
                            <img src=" <c:out value = "${product.getProductPic()}" /> "
                                 alt="Product"
                                 class="product-image" />
                        </div>

                        <div class="w3-right w3-container product-descr">
                            <p> <c:out value = "${product.getProductTypeID()}" /> </p>

                            <article>Professional Tattoo Vaseline с ароматом от MAZH TATTOO:
                                <ul>
                                    <li>становится прозрачным на коже;</li>
                                    <li>не стирает трансфер;</li>
                                    <li>экономно расходуется;</li>
                                    <li>питает и защищает кожу клиента;</li>
                                    <li>ускоряет заживление;</li>
                                    <li>имеет приятный аромат, который раскрывается в процессе работы.</li>
                                </ul>
                                Фактический цвет продукта может отличаться от изображенного.
                                Объем: 300 мл
                            </article>

                            <p><button class="w3-btn-block w3-grey">Купить</button></p>

                        </div>
                    </div>

                </div>
            </c:forEach>

        </div>

    </body>

</html>
