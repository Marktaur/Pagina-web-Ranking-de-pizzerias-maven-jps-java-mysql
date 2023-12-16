<%-- 
    Document   : gestionOradores
    Created on : 14 dic. 2023, 20:31:15
    Author     : Home
--%>
<%@page import="dao.OradoresDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Orador"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Gestión de Oradores</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-5">
            <section class="anotate" id="anotate">
                <h3>Agregar Pizzerias</h3>
                <form action="registroOrador" method="post">

                    <div class="inputGroup">
                        <div class="form-group">
                            <h6> Nombre </h6>
                            <input type="text" name="nombre" id="nombre" placeholder="Nombre">
                        </div>
                        <div class="form-group">
                             <h6> Direccion </h6>
                            <input type="text" name="direccion" id="direccion" placeholder="Direccion">
                        </div>
                    </div>


                    <input type="submit" id="btnEnviar" value="Agregar">
                </form>
            </section>
        </div>

        <div class="container mt-5">
            <h2>Gestión de Pizzerias</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Direccion</th>
                        <th>Puntaje</th>
                        <th>Fecha Alta</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        OradoresDAO oradoresDAO = new OradoresDAO();
                        List<Orador> oradores = oradoresDAO.obtenerTodos();

                        if (oradores != null && !oradores.isEmpty()) {
                            for (Orador orador : oradores) {
                    %>
                    <tr>
                        <td><%= orador.getIdOrador()%></td>
                        <td><%= orador.getNombre()%></td>
                        <td><%= orador.getDireccion()%></td>
                        <td><%= orador.getPuntaje()%></td>
                        <td><%= orador.getFechaAlta()%></td>
                        <td>
                            <div class="d-flex">
                                <!-- Formulario para actualizar -->
                                <form action="GestionOradorServlet" method="post" class="mr-2">
                                    <input type="hidden" name="accion" value="actualizar">
                                    <input type="hidden" name="id" value="<%= orador.getIdOrador()%>">
                                    <button type="submit" class="btn btn-warning btn-block">Actualizar</button>
                                </form>

                                <!-- Formulario para eliminar -->
                                <form action="GestionOradorServlet" method="post">
                                    <input type="hidden" name="accion" value="eliminar">
                                    <input type="hidden" name="id" value="<%= orador.getIdOrador()%>">
                                    <button type="submit" class="btn btn-danger btn-block">Eliminar</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="6">No hay pizzerias registradas.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <a href="../" class="btn btn-success">Volver</a>   
        </div>
    </body>
</html>
