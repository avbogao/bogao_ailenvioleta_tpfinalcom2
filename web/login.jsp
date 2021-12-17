<%-- 
    Document   : login
    Created on : 11/12/2021, 18:40:40
    Author     : Merlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="es">
<!-- Head -->

<head>
    <title>Ingresa</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Login para nuestros empleados">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">
    <!-- //fonts -->
    <link rel="stylesheet" href="css/font-awesome.css" type="text/css" media="all">
    <!-- //Font-Awesome-File-Links -->
</head>
<!-- //Head -->
<!-- Body -->

<body>
    <h1 class="title-agile text-center">Ingreso para nuestros empleados</h1>
    <div class="content-w3ls">
        <div class="content-bottom">
            <form action="SvUsuario" method="post">
                <div class="field-group">
                    <span class="fa fa-user" aria-hidden="true"></span>
                    <div class="wthree-field">
                        <input name="user" id="user" type="text" value="" placeholder="usuario" required>
                    </div>
                </div>
                <div class="field-group">
                    <span class="fa fa-lock" aria-hidden="true"></span>
                    <div class="wthree-field">
                        <input name="pass" id="myInput" type="Password" placeholder="contraseña">
                    </div>
                </div>
                <div class="field-group">
                    <div class="check">
                        <label class="checkbox w3l">
                            <input type="checkbox" onclick="myFunction()">
                            <i> </i>mostrar contaseña</label>
                    </div>
                    <!-- script for show password -->
                    <script>
                        function myFunction() {
                            var x = document.getElementById("myInput");
                            if (x.type === "password") {
                                x.type = "text";
                            } else {
                                x.type = "password";
                            }
                        }
                    </script>
                    <!-- //script for show password -->
                </div>
                <div class="wthree-field">
                    <input id="saveForm" name="saveForm" type="submit" value="Ingresar" />
                </div>
                <ul class="list-login">
                    <li class="switch-agileits">
                       <!-- <label class="switch">
                            <input type="checkbox">
                            <span class="slider round"></span>
                            keep me signed in
                        </label>-->
                    </li>
                    <li>
                       <!-- <a href="#" class="text-right">forgot password?</a> -->
                    </li>
                    <li class="clearfix"></li>
                </ul>
            </form>
        </div>
    </div>
    <div class="copyright text-center">
        
    </div>
</body>
<!-- //Body -->
</html>