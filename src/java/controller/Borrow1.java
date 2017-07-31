/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mm
 */
@WebServlet(name = "Borrow1", urlPatterns = {"/Borrow1"})
public class Borrow1 extends HttpServlet {

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
        String url = "jdbc:mysql://localhost:3306/project";
          String user = "root";
          String password = "1234";
          Connection Con =null;
          Statement Stmt = null;
          Statement Stmt2 = null;
          ResultSet RS = null;
        
        try {
            String sDate =   request.getParameter("sDate");
            String rDate = request.getParameter("rDate");
            String x = "2003-02-04" ;
            
            
            HttpSession session = request.getSession();
            String borrow = request.getSession().getAttribute("borrow").toString();
            String uID = request.getSession().getAttribute("userID").toString();
            
            Class.forName("com.mysql.jdbc.Driver");
            Con = DriverManager.getConnection(url, user, password);
            
            DatabaseMetaData DBMetaData = Con.getMetaData();
            
            String EngineName=DBMetaData.getDatabaseProductName();
            String EngineVer=DBMetaData.getDatabaseProductVersion();
            
            System.out.println("DB Name " +EngineName);
            System.out.println("DB Version "+EngineVer);
            
            Stmt = Con.createStatement();
          
         final PreparedStatement insertStatement = Con.prepareStatement("insert into borrowed_by values(?, ?,?,?,? )");
{
    try 
        (ResultSet resultSet = Stmt.executeQuery("select * from book where title = '"+borrow+"'"))
    {
        while (resultSet.next())
        {
            // Get the values from the table1 record
           final String book_id = resultSet.getString("book_id");
            // Insert a row with these values into able2
            insertStatement.clearParameters();
            insertStatement.setString(1,uID );
            insertStatement.setString(2, book_id);
            insertStatement.setString(3, sDate);
            insertStatement.setString(4, rDate);
            insertStatement.setString(5, x);
            
            insertStatement.executeUpdate();
        }
    }
}
            
            
            response.sendRedirect("SearchToBorrow.jsp");
}

catch(Exception cnfe)
{
System.err.println("Exception: " + cnfe);   }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
