<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : 17.03.2016, 19:24:55
    Author     : dmitriy
--%>

<jsp:directive.page contentType="text/html" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Old Icon Tattoo</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="libs/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="libs/bootstrap/bootstrap-grid.min.css" />
        <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css" />
        <link rel="stylesheet" href="libs/linea/styles.css" />
        <link rel="stylesheet" href="libs/magnific-popup/magnific-popup.css" />
        <link rel="stylesheet" href="libs/animate/animate.min.css" />
        <link rel="stylesheet" href="css/fonts.css" />
        <link rel="stylesheet" href="css/main.css" />
        <link rel="stylesheet" href="css/media.css" />
    </head>
    <body>

        <div class="loader">
            <div class="loader_inner"></div>
        </div>

        <header class="main_head" data-parallax="scroll" data-image-src="img/bg2.jpg" data-z-index="1" data-position="top center" data-speed="0.15">
            <div class="container">
                <div class="row">

                    <div class="col-md-12">

                        <a href="store.jsp">
                            <button class="shop" type="submit">Shop</button>
                        </a>

                        <jsp:scriptlet>
                            pageContext.setAttribute("logged", session.getAttribute("logged"));
                            pageContext.setAttribute("username", session.getAttribute("username"));
                        </jsp:scriptlet>

                        <c:choose>
                            <c:when test="${logged == true}">

                                <div id="loggedUserContent" class="logged-user-content">

                                    <div class="logged-user">
                                        <a href="user_info.jsp">
                                            <i class="fa fa-user"></i>
                                            <c:out value=" ${username} " /> </a>
                                    </div>

                                    <form style="float: right" action="SignInServlet" method="get">
                                        <button class="login" type="submit"><i class="fa fa-sign-out"></i> Выход </button>
                                    </form>

                                </div>

                            </c:when>
                            <c:otherwise>
                                <div id="newcomerContent">
                                    <form novalidate id="signIn" action="SignInServlet" method="post">
                                        <button class="login" type="button" data-toggle="modal" data-target="#myModal">Вход</button>
                                        <div class="modal fade" id="myModal" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Вход</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <label class="form-group">
                                                            <i class="fa fa-user"></i> Enter ur name
                                                            <input id="inputLogin" type="text" name="username" placeholder="Ur name" data-validation-required-message="Enter the name" required    >
                                                            <span class="help-block text-danger"></span>
                                                        </label>
                                                        <label class="form-group">
                                                            <i class="fa fa-unlock-alt"></i> Enter ur password
                                                            <input type="password" name="pass" data-minlength="6"  id="inputPassword" placeholder="Password" data-validation-required-message="Enter the password" required >
                                                            <span class="help-block text-danger"></span>
                                                        </label>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <label id="errorMessageLogin" class="footer_mes"> </label>
                                                        <button id="buttonSignIn" class="btn btn-default btn-lg" type="submit">Log in</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>	

                                    <form novalidate id="signUp" action="SignUpServlet" method="post">
                                        <button class="login" type="button" data-toggle="modal" data-target="#myModal2">Регистрация</button>	
                                        <div class="modal fade" id="myModal2" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Регистрация</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <label class="form-group">

                                                            <i class="fa fa-user"></i> Enter ur name
                                                            <input type="text" name="username" placeholder="Ur name" data-validation-required-message="Enter the name" required    >
                                                            <span class="help-block text-danger"></span>
                                                        </label>
                                                        <label class="form-group">
                                                            <i class="fa fa-envelope"></i> Enter ur E-mail
                                                            <input type="email" name="email" placeholder="Email" data-validation-required-message="Enter the E-mail" required >
                                                            <span class="help-block text-danger"></span>
                                                        </label>
                                                        <label class="form-group">
                                                            <i class="fa fa-unlock-alt"></i> Enter ur password
                                                            <input type="password" name="pass" data-minlength="6"  placeholder="Password" data-validation-required-message="Enter the password" required >
                                                            <span class="help-block text-danger"></span>
                                                        </label>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <label id="errorMessageReg" class="footer_mes"> </label>
                                                        <button class="btn btn-default btn-lg" type="submit">Sign Up</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </form>

                                </div>

                            </c:otherwise>
                        </c:choose>


                    </div>	
                </div>
            </div>

            <div class="top_wrapper">
                <div class="top_descr">
                    <div class="top_centered">
                        <div class="top_text">
                            <h1>OLD ICON TATTOO SHOP</h1>
                            <p>K P A C U B O &nbsp; L U X U R Y</p>
                        </div>
                    </div>
                </div>
            </div>



        </header>




        <section class="j_about" >
            <div class="section_header">
                <h2>About us</h2>
                <div class="s_descr_wrap">
                    <div class="s_descr">Make tattooes for U<hr>
                    </div>
                </div>
            </div>

            <div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-md-push-4 animation_j">
                            <h3>foto</h3>
                            <div class="person">
                                <a href="img/Krut.jpg" class="popup"><img src="img/Krut.jpg" alt="Alt"></a>
                            </div>
                        </div>

                        <div class="col-md-4 col-md-pull-4 padclass">
                            <h3>About</h3>
                            <p class="placeholder">Здесь будет вся информация об Ярославе</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum architecto odio, fugiat blanditiis facilis, minus, ipsam ducimus deserunt adipisci consequatur porro id delectus amet natus expedita odit dolorem et perspiciatis!</p>
                        </div>

                        <div class="col-md-4 padclass">

                            <h3>Personal info</h3>
                            <h2>Jaroslava Krutova</h2>
                            <ul>
                                <li>Администратор</li>
                                <li>Назначение консультаций</li>
                                <li>Номер телефона: +3 050 222 22 22</li>
                            </ul>
                            <div class="social_wrap ">
                                <a href="https://vk.com/kruttova" target="_blank"><i class="fa fa-vk fa-2x"></i></a>
                                <a href="https://www.instagram.com/kruttova/" target="_blank"><i class="fa fa-instagram fa-2x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>	
            </div>
        </section>









        <section id="about" class="a_about">

            <div class="section_conteiner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-md-push-4 animation_j">

                            <div class="person">
                                <a href="img/Ann1.jpeg" class="popup"><img src="img/Ann1.jpeg" alt="Alt"></a>
                            </div>
                        </div>

                        <div class="col-md-4 col-md-pull-4">

                            <p class="placeholder">Здесь будет вся информация о Анне</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum architecto odio, fugiat blanditiis facilis, minus, ipsam ducimus deserunt adipisci consequatur porro id delectus amet natus expedita odit dolorem et perspiciatis!</p>
                        </div>

                        <div class="col-md-4 padclass">


                            <h2>Anna Frolkova</h2>
                            <ul>
                                <li>Создание эскизов</li>
                                <li>Работа в любом стиле</li>
                                <li>Исправление уже набитых тату</li>
                                <li>Номер телефона: +3 050 222 22 22</li>
                            </ul>
                            <div class="social_wrap">
                                <a href="https://vk.com/anna_free" target="_blank"><i class="fa fa-vk fa-2x"></i></a>
                                <a href="https://www.instagram.com/free_ann/" target="_blank"><i class="fa fa-instagram fa-2x"></i></a>
                                <a href="https://www.facebook.com/freeanntattoo" target="_blank"><i class="fa fa-facebook fa-2x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>	
            </div>
        </section>





        <section class="b_about">
            <div class="section_conteiner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-md-push-4 animation_j">

                            <div class="person">
                                <a href="img/Dem.jpg" class="popup"><img src="img/Dem.jpg" alt="Alt"></a>
                            </div>
                        </div>

                        <div class="col-md-4 col-md-pull-4">

                            <p class="placeholder">Здесь будет информация о Бориславе Дементьеве</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum architecto odio, fugiat blanditiis facilis, minus, ipsam ducimus deserunt adipisci consequatur porro id delectus amet natus expedita odit dolorem et perspiciatis!</p>
                        </div>

                        <div class="col-md-4 padclass">


                            <h2>Boryslav Dementyev</h2>
                            <ul>
                                <li>Создание эскизов</li>
                                <li>Работа в любом стиле</li>
                                <li>Исправление уже набитых тату</li>
                                <li>Номер телефона: +3 050 222 22 22</li>
                            </ul>
                            <div class="social_wrap">
                                <a href="https://vk.com/damngoodtattoo" target="_blank"><i class="fa fa-vk fa-2x"></i></a>
                                <a href="https://www.instagram.com/damngoodtattoo/" target="_blank"><i class="fa fa-instagram fa-2x"></i></a>
                                <a href="https://www.facebook.com/damngoodtattoo" target="_blank"><i class="fa fa-facebook fa-2x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>	
            </div>
        </section>






        <section class="i_about">
            <div class="section_conteiner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-md-push-4 animation_j">

                            <div class="person">
                                <a href="img/Ira.jpg" class="popup"><img src="img/Ira.jpg" alt="Alt"></a>
                            </div>
                        </div>

                        <div class="col-md-4 col-md-pull-4 ">

                            <p class="placeholder">Здесь будет информация об Ирине Шалфей</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum architecto odio, fugiat blanditiis facilis, minus, ipsam ducimus deserunt adipisci consequatur porro id delectus amet natus expedita odit dolorem et perspiciatis!</p>
                        </div>

                        <div class="col-md-4 padclass">


                            <h2>Ira Shalfey</h2>
                            <ul>
                                <li>Создание эскизов</li>
                                <li>Работа в любом стиле</li>
                                <li>Исправление уже набитых тату</li>
                                <li>Номер телефона: +3 050 222 22 22</li>
                            </ul>
                            <div class="social_wrap">
                                <a href="https://vk.com/ira_shalfey" target="_blank"><i class="fa fa-vk fa-2x"></i></a>
                                <a href="https://www.instagram.com/irashalfey/" target="_blank"><i class="fa fa-instagram fa-2x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>	
            </div>
        </section>











        <section class="k_about">
            <div class="section_conteiner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-md-push-4 animation_j">

                            <div class="person">
                                <a href="img/Dron.jpg" class="popup"><img src="img/Dron.jpg" alt="Alt"></a>
                            </div>
                        </div>

                        <div class="col-md-4 col-md-pull-4">

                            <p class="placeholder">Здесь будет информация об Андрее Клише</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum architecto odio, fugiat blanditiis facilis, minus, ipsam ducimus deserunt adipisci consequatur porro id delectus amet natus expedita odit dolorem et perspiciatis!</p>
                        </div>

                        <div class="col-md-4 padclass">


                            <h2>Andrey Klishe</h2>
                            <ul>
                                <li>Создание эскизов</li>
                                <li>Работа в любом стиле</li>
                                <li>Исправление уже набитых тату</li>
                                <li>Номер телефона: +3 050 222 22 22</li>
                            </ul>
                            <div class="social_wrap">
                                <a href="https://vk.com/klishetattooist" target="_blank"><i class="fa fa-vk fa-2x"></i></a>
                                <a href="https://www.instagram.com/andrew_klishe/" target="_blank"><i class="fa fa-instagram fa-2x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>	
            </div>
        </section>








        <section id="portfolio" class="s_portfolio" >
            <div class="section_header">
                <h2>Рortfolio</h2>
                <div class="s_descr_wrap">
                    <div class="s_descr">Здесь собраны наши новые и не очень работы
                        <hr align="center" width="250" color="black" /></div>
                </div>
            </div>

            <div class="section_conteiner">
                <div class="container">
                    <div class="row">
                        <div class="filter_div_controls">
                            <ul>
                                <li class="filter active" data-filter="all">All kartinki</li>
                                <li class="filter" data-filter=".category-1">Borys</li>
                                <li class="filter" data-filter=".category-2">Ann</li>
                                <li class="filter" data-filter=".category-3">Ira</li>
                                <li class="filter" data-filter=".category-4">Klishe</li>
                            </ul>
                        </div>
                        <div id="portfolio_grid" class="open_image">
                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-1">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/1.jpg" alt="*">   
                                    <a href="img/portfolio/1.jpg" class="popup_content"></a>  
                                </div>

                            </div>

                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-2">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/4.jpg" alt="*">     
                                </div>
                                <a href="img/portfolio/4.jpg" class="popup_content"></a>
                            </div>

                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-1">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/2.jpg" alt="*">
                                </div>
                                <a href="img/portfolio/2.jpg" class="popup_content"></a>
                            </div>

                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-4">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/10.jpg" alt="*">			       
                                </div>
                                <a href="img/portfolio/10.jpg" class="popup_content"></a>
                            </div>

                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-1">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/3.jpg" alt="*">			       
                                </div>
                                <a href="img/portfolio/3.jpg" class="popup_content"></a>
                            </div>

                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-2">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/6.jpg" alt="*">			       
                                </div>
                                <a href="img/portfolio/6.jpg" class="popup_content"></a>
                            </div>

                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-3">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/9.jpg" alt="*">			       
                                </div>
                                <a href="img/portfolio/9.jpg" class="popup_content"></a>
                            </div>

                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-4">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/11.jpg" alt="*">			       
                                </div>
                                <a href="img/portfolio/11.jpg" class="popup_content"></a>
                            </div>

                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-4">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/12.jpg" alt="*">			       
                                </div>
                                <a href="img/portfolio/12.jpg" class="popup_content"></a>
                            </div>

                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-3">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/7.jpg" alt="*">			       
                                </div>
                                <a href="img/portfolio/7.jpg" class="popup_content"></a>
                            </div>

                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-3">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/8.jpg" alt="*">			       
                                </div>
                                <a href="img/portfolio/8.jpg" class="popup_content"></a>
                            </div>

                            <div class="mix col-sm-6 col-md-4 col-xs-12 portfolio_item category-2">
                                <div class="thumbnail">
                                    <img class="img-responsive" src="img/portfolio/5.jpg" alt="*">			       
                                </div>
                                <a href="img/portfolio/5.jpg" class="popup_content"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <section id="contacts" class="s_contacts" >
            <div class="section_header_without">
                <h2>Contacts</h2>
                <div class="s_descr_wrap">
                    <div class="s_descr">Send your message
                        <hr align="center" width="250" color="black" /></div>
                </div>
            </div>

            <div class="section_conteiner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="contact_box">
                                <h4>Contact us and we'll get back to you within 24 hours.</h4>
                                <p>
                                    <span class="contacts_icon icon-basic-geolocalize-01 "></span> "Kharkiv, Ukraine" 
                                </p>
                                <p>
                                    <span class="contacts_icon icon-basic-smartphone "></span> +38-050-874-08-39
                                </p>
                                <p>
                                    <span class="contacts_icon icon-basic-webpage-img-txt "></span> <a href="https://vk.com/oldicontattooshop.kharkov" target="_blank">  OLD ICON TATTOO SHOP </a>
                                </p>
                                <p>
                                    <span class="contacts_icon icon-basic-mail "></span> myemail@something.com
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <form action="" class="main_form" novalidate>
                                <label class="form-group">
                                    <input type="text" name="name" placeholder="Ur name" data-validation-required-message="Enter the name" required    >
                                    <span class="help-block text-danger"></span>
                                </label>

                                <label class="form-group">
                                    <input type="email" name="email" placeholder="Ur email" data-validation-required-message="Invalid E-mail" required    >
                                    <span class="help-block text-danger"></span>
                                </label>

                                <label class="form-group">
                                    <textarea name="message" placeholder="Ur мессэдж" data-validation-required-message="Enter the comment" required></textarea>
                                    <span class="help-block text-danger"></span>
                                </label>
                                <button>Send</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <div id="googleMap" class="googleMap">

        </div>




        <footer class="main_footer">	
            <div class="container">
                <div class="foot_descr">
                    &copy; 2016 URICH and ЖМЫХ
                    <div class="foot_icons">
                        <a href="https://vk.com/klishetattooist" target="_blank"><i class="fa fa-vk fa-2x"></i></a>
                        <a href="https://vk.com/klishetattooist" target="_blank"><i class="fa fa-instagram fa-2x"></i></a>
                        <a href="https://www.instagram.com/klishettd/" target="_blank"><i class="fa fa-google fa-2x"></i></a>
                        <a href="https://www.instagram.com/klishettd/" target="_blank"><i class="fa fa-facebook fa-2x"></i></a>
                        <a href="https://www.instagram.com/klishettd/" target="_blank"><i class="fa fa-twitter fa-2x"></i></a>
                        <a href="https://www.instagram.com/klishettd/" target="_blank"><i class="fa fa-linkedin fa-2x"></i></a>
                    </div>
                </div>
            </div>
        </footer>



        <div class="hidden"></div>
        <!--[if lt IE 9]>
        <script src="libs/html5shiv/es5-shim.min.js"></script>
        <script src="libs/html5shiv/html5shiv.min.js"></script>
        <script src="libs/html5shiv/html5shiv-printshiv.min.js"></script>
        <script src="libs/respond/respond.min.js"></script>
        <![endif]-->

        <script src="libs/jquery/jquery-2.1.3.min.js"></script>
        <script src="libs/parallax/parallax.min.js"></script>
        <script src="libs/magnific-popup/jquery.magnific-popup.min.js"></script>
        <script src="libs/bootstrap/bootstrap.min.js"></script>
        <script src="libs/mixitup/mixitup.min.js"></script>
        <script src="libs/scroll2id/PageScroll2id.min.js"></script>
        <script src="libs/waypoints/waypoints.min.js"></script>
        <script src="libs/animate/animate-css.js"></script>
        <script src="libs/jqBootstrapValidation/jqBootstrapValidation.js"></script>
        <script src="js/common.js"></script>
        <script src="libs/jqBootstrapValidation/jqBootstrapValidation.js"></script>
        <script src="js/signUpIn.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js"></script>
        <script>
            var myCenter = new google.maps.LatLng(49.993848, 36.238026);

            function initialize() {
                var mapProp = {
                    center: myCenter,
                    zoom: 14,
                    scrollwheel: false,
                    draggable: true,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

                var marker = new google.maps.Marker({
                    position: myCenter
                });

                marker.setMap(map);
            }

            google.maps.event.addDomListener(window, 'load', initialize);</script>
        <!-- Yandex.Metrika counter --><!-- /Yandex.Metrika counter -->
        <!-- Google Analytics counter --><!-- /Google Analytics counter -->
    </body>
</html>