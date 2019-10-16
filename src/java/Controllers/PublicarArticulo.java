/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Articulo.Articulo;
import Categoria.SubCategoria;
import Cuenta.Cuenta;
import Cuenta.CuentaDAO;
import Publicacion.Publicacion;
import Publicacion.publicarArticulo;
import Usuario.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author cnk
 */
@WebServlet(name = "PublicarArticulo", urlPatterns = {"/PublicarArticulo"})
public class PublicarArticulo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String[] images = {"a","b"};
            String title = "Vendo Celular";
            Double precio = 350.00;
            String descripcion = "Vendo Bicicleta marca x";
            int categoria = 12;
            String ubicacion = "Sonzacate,Sonsonate";
            
            Articulo ar = new Articulo();
            ar.setImagesList(images[0]);
            ar.setImagesList(images[1]);
            ar.setNombre(title);
            ar.setPrecio(precio);
            SubCategoria su = new SubCategoria();
            su.setIdCat(categoria);
            ar.setSubCategoria(su);
            
            Publicacion pos = new Publicacion();
            
            HttpSession session=request.getSession(false);
            
            int id = (int) session.getAttribute("idUsuario");
            
            pos.setArticulo(ar);
            Usuario user = new Usuario();
            user.setIdUsuario(id);
            CuentaDAO ctD = new CuentaDAO();
            Cuenta ct1 = new Cuenta();
            Cuenta ct2 = new Cuenta();
             ct1 = ctD.LeerCuenta(user);
            ct2.setIdCuenta(ct1.getIdCuenta());
            
            pos.setCuenta(ct2);
            pos.setEstado(null);
            pos.setUbicacion(ubicacion);
            
            publicarArticulo pa = new publicarArticulo(pos);
            pa.CrearArticulo();
            pa.CrearPublicacion();
            
            
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PublicarArticulo "+ct2.getIdCuenta()+"</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PublicarArticulo at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
