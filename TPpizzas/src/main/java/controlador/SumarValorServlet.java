/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;
import dao.OradoresDAO;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import modelo.Orador;

@WebServlet("/vistas/SumarValorServlet")
public class SumarValorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        OradoresDAO oradoresDAO = new OradoresDAO();

 //toma elvalor capturado del getidorador
        int idOrador = Integer.parseInt(request.getParameter("votar"));
           System.out.println(idOrador);
        Orador orador = oradoresDAO.obtenerPorId(idOrador);
        // pide el valor de cada registro y los devuelve igual exceptuando el 
        //puntaje que le suma 1 por votacion
        
        int puntaje = orador.getPuntaje();
        String nombre = orador.getNombre();
        String direccion = orador.getDireccion();
        Date fecha = orador.getFechaAlta();
        System.out.println(fecha);
         System.out.println(puntaje);
                Orador oradorActualizado = new Orador();
                oradorActualizado.setIdOrador(idOrador);
                
                oradorActualizado.setPuntaje(puntaje+1);
                oradorActualizado.setNombre(nombre);
                oradorActualizado.setDireccion(direccion);
                oradorActualizado.setPuntaje(puntaje+1);
                // Asume que el método setFechaAlta acepta un java.sql.Date
                oradorActualizado.setFechaAlta(fecha);
              

                oradoresDAO.actualizarOrador(oradorActualizado);
                response.sendRedirect("verPizzerias.jsp");
          
           
        
    }
}

        
        
        
        

        
 