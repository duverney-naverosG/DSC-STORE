/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import static java.lang.Integer.parseInt;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.DAO_productos;
import modelo.DAO_usuario;
import modelo.productos;
import modelo.usuarios;

/**
 *
 * @author DUVER NAVEROS
 */
public class controlador extends HttpServlet {

    productos product = new productos();
    usuarios usuario = new usuarios();
    DAO_productos daoproductos = new DAO_productos();
    DAO_usuario daousuario = new DAO_usuario();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        String menu = request.getParameter("menu");

        if (menu.equalsIgnoreCase("principal")) {
            switch (accion) {
                case "listar":
                    List lista1 = daoproductos.listar();
                    request.setAttribute("productos", lista1);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        if (menu.equalsIgnoreCase("categoria_hombres")) {
            switch (accion) {
                case "listar":
                    List lista2 = daoproductos.listarHombres();
                    request.setAttribute("hombres", lista2);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Categoria_Hombres.jsp").forward(request, response);
        }
        if (menu.equalsIgnoreCase("categoria_mujer")) {
            switch (accion) {
                case "listar":
                    List lista3 = daoproductos.listarMujeres();
                    request.setAttribute("mujer", lista3);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Categoria_Mujeres.jsp").forward(request, response);
        }
        if (menu.equalsIgnoreCase("categoria_niño")) {
            switch (accion) {
                case "listar":
                    List lista4 = daoproductos.listarNiños();
                    request.setAttribute("niños", lista4);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Categoria_Niños.jsp").forward(request, response);
        }
        if (menu.equalsIgnoreCase("admin-index")) {
            switch (accion) {
                case "listar":
                    List lista4 = daoproductos.listar();
                    request.setAttribute("index-administador", lista4);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("index-admistrador.jsp").forward(request, response);
        }
        
        if (menu.equalsIgnoreCase("registrar")) {
            switch (accion) {
                case "agregar":
                    try {
                    int identificacion = parseInt(request.getParameter("input-identificacion"));
                    String nombres = request.getParameter("input-nombre");
                    String primerApellido = request.getParameter("input-primer-apellido");
                    String segundoApellido = request.getParameter("input-segundo-apellido");
                    String correo = request.getParameter("input-correo");
                    String direccion = request.getParameter("input-direccion");
                    String numeroTelefonico = request.getParameter("input-numero");
                    String contraseña = request.getParameter("pass");
                    usuario.setIdentificacion(identificacion);
                    usuario.setNombre(nombres);
                    usuario.setPrimerApellido(primerApellido);
                    usuario.setSegundoApellido(segundoApellido);
                    usuario.setCorreo(correo);
                    usuario.setDireccion(direccion);
                    usuario.setNumero_telefonico(numeroTelefonico);
                    usuario.setContraseña(contraseña);
                    usuario.setPermiso(2);
                    daousuario.agregar(usuario);
                    break;

                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "error al registrar el usuario");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }

            }
            request.getRequestDispatcher("login.jsp").forward(request, response);
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
