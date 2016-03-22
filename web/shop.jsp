<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : shop
    Created on : 22.03.2016, 18:05:20
    Author     : dmitriy
--%>

<%@page import="dao.DatabaseInteraction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Shop</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="libs/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="libs/bootstrap/bootstrap-grid.min.css" />
        <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css" />
        <link rel="stylesheet" href="libs/linea/styles.css" />
        <link rel="stylesheet" href="libs/magnific-popup/magnific-popup.css" />
        <link rel="stylesheet" href="libs/animate/animate.min.css" />
        <link rel="stylesheet" href="css/shop.css" />
        <link rel="stylesheet" href="css/fonts.css" />

        <script src="libs/jquery/jquery-2.1.3.min.js"></script>
        <script src="libs/parallax/parallax.min.js"></script>
        <script src="libs/magnific-popup/jquery.magnific-popup.min.js"></script>
        <script src="libs/bootstrap/bootstrap.min.js"></script>
    </head>
    <body>


        <section>
            <div class="section_header">
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <h2>Old IT Shop</h2>

                        <div>
                            <p>Всякая хуйня для вас</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <span class="fa fa-shopping-cart fa-2x"></span>
                        <i class="fa fa-user fa-3x"></i>
                    </div>   
                </div>
            </div>


            <div class="section_container">
                <form>
                    <p>
                        <select name="demo" >
                            <option disabled value="choose">Choose product</option>
                            <option value="all">All prod</option>
                            <option value="maz">Maz' for jeppa</option>
                            <option value="t-shirt">T-shirt</option>
                            <option value="vaseline">Vaseline</option>
                        </select></p>
                </form>
            </div>
        </section>

        <% pageContext.setAttribute("products", DatabaseInteraction.getProductList());%>
        <div class="container">

            <c:forEach var = "product" items = "${products}">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <label class="col-md-6">
                            <c:out value = "${product.getProductName()}"  />
                        </label>
                        <label class="col-md-6 product_type">
                            <c:out value = "${product.getProductTypeID()}" />
                        </label>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-3 product_image">
                            <img src=" <c:out value = "${product.getProductPic()}" /> " alt="product">
                        </div>

                        <div class="col-md-9 product_description">
                            <div class="product_info">
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
                            </div>

                            <div class="buying_section">
                                <p> <c:out value = "${product.getProductPrice()}" /> грн.</p>
                                <button type="submit">Купить</button>
                            </div>
                        </div>

                    </div>
                </div>
            </c:forEach>

        </div>

    </body>
</html>
