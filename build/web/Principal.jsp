<%-- 
    Document   : Principal
    Created on : 27 may. 2024, 15:52:57
    Author     : Frank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Spurs Shop</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css">
        <style>
            body {
                background-color: #000;
                color: #fff;
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }
            .navbar {
                background-color: #333;
                padding: 10px 0;
                font-size: 18px;
            }
            .container {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 0 20px;
            }
            .navbar-nav {
                display: flex;
                list-style-type: none;
                margin: 0;
                padding: 0;
            }
            .nav-item {
                margin-right: 20px;
            }
            .nav-link, .btn {
                text-decoration: none;
                color: #fff;
                padding: 10px 15px;
                border-radius: 5px;
                transition: background-color 0.3s;
                border: 2px solid transparent;
                font-weight: bold;
            }
            .nav-link.active, .btn:hover {
                background-color: #f00;
                border-color: #f00;
            }
            .dropdown {
                position: relative;
            }
            .dropdown-menu {
                position: absolute;
                top: 100%;
                right: 0;
                background-color: #333;
                border-radius: 5px;
                padding: 10px;
                display: none;
            }
            .dropdown:hover .dropdown-menu {
                display: block;
            }
            .dropdown-item {
                color: #fff;
                text-decoration: none;
                display: block;
                padding: 5px 0;
            }
            .dropdown-item img {
                width: 30px;
                height: 30px;
                border-radius: 50%;
                margin-right: 10px;
            }
        </style>

    </head>
    <body>
        <nav class="navbar">
            <div class="container">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn" href="Controlador?menu=Producto">Producto</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn"  href="Controlador?menu=Empleado&accion=Listar" >Empleados</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn" href="Controlador?menu=Cliente" >Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn" href="Controlador?menu=NuevaVenta" >Nueva Venta</a>
                    </li>
                </ul>
            </div>
            <div class="dropdown">
                <button class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    ${usuario.getNom()}
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">
                        <img src="img/logo-removebg-preview.png" alt=""/>
                    </a>
                    <a class="dropdown-item" href="#">${usuario.getUser()}</a>
                    <a class="dropdown-item" href="#">gmail</a>
                    <div class="dropdown-divider"></div>
                    <form action="Validar" method="POST">
                        <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                    </form>
                </div>
            </div>
        </nav>        

    </body>
</html>
