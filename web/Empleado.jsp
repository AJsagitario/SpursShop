<%-- 
    Document   : Empleado
    Created on : 28 may. 2024, 01:01:41
    Author     : Frank
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleado</title>
        <style>
            body {
                background-color: #000;
                color: #fff;
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }
            .form-group label {
                color: #fff;
            }
            .form-control {
                background-color: #333;
                border: 1px solid #555;
                color: #fff;
            }
            .btn {
                background-color: #f00;
                border: none;
                color: #fff;
                padding: 10px 20px;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s;
                border-radius: 5px;
            }
            .btn:hover {
                background-color: #ff5050;
            }
            .table {
                color: #fff;
                background-color: #333;
            }
            .table th, .table td {
                border: 1px solid #555;
                padding: 10px;
            }
            .btn-warning {
                background-color: #f90;
                transition: background-color 0.3s;
            }
            .btn-warning:hover {
                background-color: #ffaa00;
            }
            .btn-danger {
                background-color: #c00;
                transition: background-color 0.3s;
            }
            .btn-danger:hover {
                background-color: #ff3333;
            }
        </style>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Empleado" method="POST">
                        <div class="form-group">
                            <label>Dni</label>
                            <input type="text" value="${empleado.getDni()}" name="txtDni" class="form-control">
                        </div>
                        <div>
                            <label>Nombres</label>
                            <input type="text" value="${empleado.getNom()}" name="txtNombres" class="form-control">
                        </div>
                        <div>
                            <label>Telefono</label>
                            <input type="text" value="${empleado.getTel()}" name="txtTel" class="form-control">
                        </div>
                        <div>
                            <label>Estado</label>
                            <input type="text" value="${empleado.getEstado()}" name="txtEstado" class="form-control">
                        </div>
                        <div>
                            <label>Usuario</label>
                            <input type="text" value="${empleado.getUser()}" name="txtUsuario" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>DNI</td>
                            <td>NOMBRES</td>
                            <td>TELEFONO</td>
                            <td>ESTADO</td>
                            <td>USER</td>
                            <td>ACCIONES</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="em" items="${empleados}">
                            <tr>
                                <td>${em.getId()}</td>
                                <td>${em.getDni()}</td>
                                <td>${em.getNom()}</td>
                                <td>${em.getTel()}</td>
                                <td>${em.getEstado()}</td>
                                <td>${em.getUser()}</td>
                                <td>
                                    <a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Delete&id=${em.getId()}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table> 
            </div>
        </div>
    </body>
</html>
