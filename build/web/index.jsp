<%-- 
    Document   : index
    Created on : 27 may. 2024, 13:01:58
    Author     : Frank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>LOGIN</title>
        <style>
            body {
                background-color: #f0f0f0;
                color: #333;
                font-family: Arial, sans-serif;
                text-align: center;
            }
            .container {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .card {
                background-color: #fff;
                border-radius: 10px;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            .form-group {
                margin-bottom: 20px;
            }
            .form-group label {
                display: block;
                margin-bottom: 5px;
            }
            .form-control {
                width: 100%;
                padding: 10px;
                border-radius: 5px;
                border: 1px solid #ccc;
                background-color: #f8f8f8;
                color: #333;
            }
            .btn {
                width: 100%;
                padding: 10px;
                border: none;
                border-radius: 5px;
                background-color: #f00;
                color: #fff;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            .btn:hover {
                background-color: #ff4444;
            }
        </style>

    </head>
    <body>
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group">
                            <h3>Login</h3>
                            <img src="img/logo-tot.png" alt="70" width="170"/>                          
                            <label>Welcome to Tottenham Shop</label>
                        </div>
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" name="txtuser" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="txtpass" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Ingresar" class="btn">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
