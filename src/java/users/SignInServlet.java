/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users;

import dao.HibernateUtil;
import dao.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import dao.DatabaseInteraction;

/**
 *
 * @author dmitriy
 */
public class SignInServlet extends HttpServlet {

    String username;
    String pass;
    String email;
    boolean passwordMatch;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void validValues(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {

            out.println("Succesful login.");

//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet SignInServlet</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet SignInServlet at " + request.getContextPath() + "</h1>");
//            out.println("<h2>");
//            out.println(username + " " + pass + " " + email + " ");
//            out.println("</h2>");
//            out.println("<h2>");
//            out.println("</h2>");
//            out.println("</body>");
//            out.println("</html>");
        }
    }

    protected void invalidValues(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {

            out.println("Invalid Values.");
        }
    }

    // <editor-fold desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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

        username = request.getParameter("username");
        pass = request.getParameter("pass");

        User user = DatabaseInteraction.getUser(username);
        if (user == null) {
            invalidValues(request, response);
        }
        username = user.getUsername();
        if (!user.getPassword().equals(pass)) {
            invalidValues(request, response);
        }

        validValues(request, response);
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

        username = request.getParameter("username");
        pass = request.getParameter("pass");

        User user = DatabaseInteraction.getUser(username);
        if (user == null) {
            invalidValues(request, response);
        }
        username = user.getUsername();
        if (!user.getPassword().equals(pass)) {
            invalidValues(request, response);
        }

        validValues(request, response);
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
