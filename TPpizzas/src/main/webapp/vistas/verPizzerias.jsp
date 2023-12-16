<%-- 
    Document   : verOradores
    Created on : 12 dic. 2023, 20:52:14
    Author     : Home
--%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="dao.OradoresDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Orador"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lista de Pizzerias</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-5">
            <h2>Vota la mejor pizzeria</h2>
            <form action="SumarValorServlet" method="post">
               
                <tbody>
                    <%
                        // Crear una instancia de OradoresDAO para acceder a la base de datos
                        OradoresDAO oradoresDAO1 = new OradoresDAO();

                        // Obtener la lista de oradores desde la base de datos
                        List<Orador> oradores1 = oradoresDAO1.obtenerTodos();
                        Collections.sort(oradores1, Comparator.comparing(Orador::getNombre));

                        if (oradores1 != null && !oradores1.isEmpty()) {
                            // Iterar sobre la lista de oradores y mostrar sus datos en la tabla
                            for (Orador orador1 : oradores1) {
                    %>
                    <tr>
                        
                        <td><%= orador1.getNombre()%></td>
                
                        <td><button type="submit" name="votar" value="<%= orador1.getIdOrador() %>" type="button" class="btn btn-outline-warning"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
</svg></button></td>

    <br>

                        
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="5">No hay Pizzerias registradas.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </form>
            
            
        </div>
        <div class="container mt-5">
            <h2>Ranking de Pizzerias Top Argentina</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        
                        <th>Nombre</th>
                        <th>Direccion</th>
                        <th>Puntaje</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Crear una instancia de OradoresDAO para acceder a la base de datos
                        OradoresDAO oradoresDAO = new OradoresDAO();

                        // Obtener la lista de oradores desde la base de datos
                        List<Orador> oradores = oradoresDAO.obtenerTodos();
                        Collections.sort(oradores, Comparator.comparing(Orador::getPuntaje).reversed());

                        if (oradores != null && !oradores.isEmpty()) {
                            // Iterar sobre la lista de oradores y mostrar sus datos en la tabla
                            for (Orador orador : oradores) {
                    %>
                    <tr>
                        
                        <td><%= orador.getNombre()%></td>
                        <td><%= orador.getDireccion()%></td>
                        <td><%= orador.getPuntaje()%></td>
                        
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="5">No hay Pizzerias registradas.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <!-- Botón para volver al índice -->
            <a href="../" class="btn btn-success">Volver</a>   
        </div>
    </body>
</html>
