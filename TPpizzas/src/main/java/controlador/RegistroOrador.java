/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import dao.OradoresDAO;
import modelo.Orador;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;


@WebServlet("/vistas/registroOrador")
public class RegistroOrador extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener datos del formulario
        String nombre = request.getParameter("nombre");
        String direccion = request.getParameter("direccion");
        

        // Crear un objeto Orador con los datos
        Orador orador = new Orador();
        orador.setNombre(nombre);
        orador.setDireccion(direccion);
        orador.setPuntaje(0);
       

        // Obtener la fecha actual
        java.util.Date fechaActual = new java.util.Date(); //es una forma de utilizar la clase sin necesitar una declaracion 'import'
        orador.setFechaAlta(new Date(fechaActual.getTime()));
        System.out.println(orador);

        // Agregar el orador a la base de datos
        OradoresDAO oradoresDAO = new OradoresDAO();
        oradoresDAO.agregarOrador(orador);
System.out.println("cargue registro");
        // Redireccionar a la página de visualización de oradores
        response.sendRedirect(request.getContextPath() + "/vistas/verPizzerias.jsp");
    }
}
