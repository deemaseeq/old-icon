/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.*;
import org.hibernate.Session;

/**
 *
 * @author ДмитрийГ
 */
public class SignUpServlet extends HttpServlet {

    String username;
    String pass;
    String email;

    public SignUpServlet() {
        super();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /*protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          out.println("<!DOCTYPE html>");
          out.println("<html>");
          out.println("<head>");
          out.println("<title>Servlet SignUpServlet</title>");            
          out.println("</head>");
          out.println("<body>");
          out.println("<h1>Servlet SignUpServlet at " + request.getContextPath() + "</h1>");
          out.println("</body>");
          out.println("</html>");
        }
    }*/
    protected void noConnectionResponse(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignUpServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignUpServlet at " + request.getContextPath() + "</h1>");
            out.println("<h2>Failed connection to database!</h2>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    protected void usernameTakenResponse(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignUpServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignUpServlet at " + request.getContextPath() + "</h1>");
            out.println("<h2>This username or email is already taken.</h2>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    protected void succesfullConnectionResponse(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignUpServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignUpServlet at " + request.getContextPath() + "</h1>");
            out.println("<h2>User succesfully registered. Check database.</h2>");
            out.println("<h2>");
            out.println(username);
            out.println(pass);
            out.println(email);
            out.println("</h2>");
            out.println("</body>");
            out.println("</html>");
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
        email = request.getParameter("email");
        
        if(pass.length() < 6){
            System.out.println("Password is too short!");
            noConnectionResponse(request, response);
            return;
        }

        if (DatabaseInteraction.emailTaken(email)) {
            System.out.println("Email " + email + " is already taken!");
            usernameTakenResponse(request, response);
            return;
        }

        if (DatabaseInteraction.usernameTaken(username)) {
            System.out.println("Username " + username + " is already taken!");
            usernameTakenResponse(request, response);
            return;
        }

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            session.beginTransaction();
            User newUser = new User();
            newUser.setUsername(username);
            newUser.setEmail(email);
            newUser.setPassword(pass);
            newUser.setUserGroupID(2);
            newUser.setRegisterDate(new java.util.Date());

            session.save(newUser);
            session.getTransaction().commit();
            succesfullConnectionResponse(request, response);
        }

//        HibernateUtil.closeSessionFactory();
//        try {
//            
//            Connection dbConnect = DriverManager.getConnection("jdbc:mysql://localhost:3306/usrs?zeroDateTimeBehavior=convertToNull", "root", "password");
//            
//            if(dbConnect != null){
//                Statement addUser = dbConnect.createStatement();
//                addUser.execute("INSERT INTO usrs.users (login, pass) VALUES ('" + username + "','" + pass + "')");
//            } else {
//                noConnectionResponse(request, response);
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(SignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
//            noConnectionResponse(request, response);
//        }
        //processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /*@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }*/
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
