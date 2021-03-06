﻿<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Login | SIGECU</title>
    <!-- Favicon-->

    <!-- Google Fonts -->
    <!--<link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">-->
    <link rel="stylesheet" href="http://localhost:8084/SIGECU/fonts/material-design-icons-master/material-icons.css">

    <!-- Bootstrap Core Css -->
    <link href="http://localhost:8084/SIGECU/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="http://localhost:8084/SIGECU/plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="http://localhost:8084/SIGECU/plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="http://localhost:8084/SIGECU/css/style.css" rel="stylesheet">
</head>

<body class="login-page">
    <div class="login-box">
        <div class="logo">
            <a href="javascript:void(0);"><b>SIGECU</b></a>
            <small>Sistema de Gestion de Cursos</small>
        </div>
        <div class="card">
            <div class="body">
                <form id="login" name="login" action="j_security_check" method="POST">
                    <div class="msg">Ingresa tus datos para iniciar sesión</div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
                            <input type="text" class="form-control" name="j_username" placeholder="Usuario" required autofocus>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <input type="password" class="form-control" name="j_password" placeholder="Contraseña" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8 col-xs-offset-2">
                            <input class="btn btn-block bg-pink waves-effect" type="submit" name="submit" value="INGRESAR">
                        </div>
                    </div>
                    <div class="row m-t-15 m-b--20">
                        <div class="col-xs-6">
                            <a href="sign-up.html">Registrar ahora!</a>
                        </div>
                        <div class="col-xs-6 align-right">
                            <a href="forgot-password.html">Recuperar contraseña!</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Jquery Core Js -->
    <script src="http://localhost:8084/SIGECU/plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="http://localhost:8084/SIGECU/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="http://localhost:8084/SIGECU/plugins/node-waves/waves.js"></script>

    <!-- Validation Plugin Js -->
    <script src="http://localhost:8084/SIGECU/plugins/jquery-validation/jquery.validate.js"></script>

    <!-- Custom Js -->
    <script src="http://localhost:8084/SIGECU/js/admin.js"></script>
    <script src="http://localhost:8084/SIGECU/js/pages/examples/sign-in.js"></script>
</body>

</html>