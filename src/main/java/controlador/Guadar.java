/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Braulio
 */
@WebServlet(name = "Guadar", urlPatterns = {"/Guadar"})
public class Guadar extends HttpServlet {

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
            throws ServletException, IOException, ParseException {
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        String DNI = request.getParameter("dni");
        String Nombre = request.getParameter("nombre");
        String PAP = request.getParameter("p_apel");
        String SAP = request.getParameter("s_apel");
        String FNAC = request.getParameter("nac");
        String TEL = request.getParameter("telfd");
        String DEP = request.getParameter("dep");
        String CIU = request.getParameter("city");
        String DIST = request.getParameter("dist");
        String CAL = request.getParameter("calle");
        String CORR = request.getParameter("corre");
        String PASS = request.getParameter("passd");
        Integer dni = Integer.parseInt(DNI);
        Integer tel = Integer.parseInt(TEL);
        Date nac = formato.parse(FNAC); 
        modelo.Usuario user = new modelo.Usuario(dni,Nombre,PAP,SAP,nac,tel,DEP,CIU,DIST,CAL,CORR,PASS);
        
        EntityManager em;
        EntityManagerFactory emf;
        emf = Persistence.createEntityManagerFactory("com.mycompany_Tienda_online_war_1.0-SNAPSHOTPU");
        em= emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(user);
        em.flush();
        em.getTransaction().commit();
        response.sendRedirect("CORRECTO.jsp");
        
    }

}
