<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : store
    Created on : 23.03.2016, 20:06:25
    Author     : dmitriy
--%>

<%@page import="dao.DatabaseInteraction"%>
<jsp:directive.page contentType="text/html" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>

    <title>Old Icon Shop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="libs/w3css/w3.css">
    <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css" >
    <link rel="stylesheet" href="css/store.css">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/fonts.css" />



    <script src="js/storeStyle.js" ></script>

    <body>
        <header>

            <jsp:scriptlet>
                pageContext.setAttribute("logged", session.getAttribute("logged"));
                pageContext.setAttribute("username", session.getAttribute("username"));
            </jsp:scriptlet>

            <div class="w3-top">
                <ul class="w3-navbar w3-card-2 w3-black">
                    <li class="w3-center">
                        <label class="w3-xlarge header-text">OLD ICON SHOP</label>
                    </li>
                    <li  class="w3-left"><a class="w3-hover-amber" href="/OldIcon"><i class="fa fa-home w3-large"></i></a></li>
                    <li  class="w3-right"><a class="w3-hover-amber" onclick="toggleFilter()"><i class="fa fa-search w3-large"></i></a></li>
                    <li  class="w3-right"><a class="w3-hover-amber" href="#"><i class="fa fa-shopping-cart w3-large"></i></a></li>

                    <c:choose>
                        <c:when test="${logged == true}">
                            <li  class="w3-right">
                                <a class="w3-hover-amber" href="user_info.jsp">
                                    <i class="fa fa-user w3-large"></i>
                                    <c:out value="${username}" />
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li  class="w3-right"><a class="w3-hover-amber" href="#"><i class="fa fa-user w3-large"></i></a></li>
                                </c:otherwise>
                            </c:choose>

                </ul>

                <jsp:scriptlet>
                    pageContext.setAttribute("types", DatabaseInteraction.getProductTypeList());
                </jsp:scriptlet>
                <nav class="w3-container w3-dropnav w3-white w3-card-4">
                    <form action="ProductsProcessingServlet" method="get">

                            <div class="w3-col filter-col">
                                <input name="1" value="1_cheked" id="vaseline-check" class="w3-check" type="checkbox">
                                <label>Vaseline</label>
                            </div>
                        
                            <div class="w3-col filter-col">
                                <input name="2" value="2_cheked" id="clothes-check" class="w3-check" type="checkbox">
                                <label>Clothes</label>
                            </div>
                        
                            <div class="w3-col filter-col">
                                <input name="3" value="3_cheked" id="accessories-check" class="w3-check" type="checkbox">
                                <label>Accessories</label>
                            </div>
                        
                            <div class="w3-col filter-col">
                                <input name="4" value="4_cheked" id="hair-supply-check" class="w3-check" type="checkbox">
                                <label>Hair supply</label>
                            </div>
                        
                            <div class="w3-col filter-col">
                                <input name="5" value="5_cheked" id="other-check" class="w3-check" type="checkbox">
                                <label>Other</label>
                            </div>
                        
                    </form>
                </nav>

            </div>

        </header>

        <jsp:scriptlet>
            pageContext.setAttribute("products", DatabaseInteraction.getProductList());
        </jsp:scriptlet>
        <div class="w3-container w3-white w3-margin-64">


            <form class="sort w3-center w3-container w3-white w3-border" action="ProductProcessingServlet">
                <h5>Сортировать</h5>
                <ul>
                    <li>по названию</li>
                    <li>по цене</li>
                </ul>
            </form>

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
