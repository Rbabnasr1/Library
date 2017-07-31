<%-- 
    Document   : follow_search2
    Created on : Dec 20, 2014, 4:55:05 PM
    Author     : mm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Books</title>
        <style>
            #searchtoupdate {
                               margin-left:300px;
                               margin-top: 150px;
                               
                            }
            #result     {
                        float: right;
                        margin-top: -240px;
                        margin-right:100px;
                            }
        </style>
    </head>
   
    <body>
     <%@page import="java.sql.*"%>
         <%
        
          String url = "jdbc:mysql://localhost:3306/project";
          String user = "root";
          String password = "1234";
          Connection Con =null;
          Statement Stmt = null;
          ResultSet RS = null;
        

       try
    {
            Class.forName("com.mysql.jdbc.Driver");
            Con = DriverManager.getConnection(url, user, password);
            
            DatabaseMetaData DBMetaData = Con.getMetaData();
            
            String EngineName=DBMetaData.getDatabaseProductName();
            String EngineVer=DBMetaData.getDatabaseProductVersion();
            
            System.out.println("DB Name " +EngineName);
            System.out.println("DB Version "+EngineVer);
            
            
            String r=request.getParameter("txt");
            String r2=request.getParameter("txt2"); 
            String x = "null" ;
            
           if ((r != "x")  && (r2.equals(x)))
        {
             String select = "SELECT *  from book WHERE title like '%" + r + "%'";
            PreparedStatement pes = Con.prepareStatement(select);
            RS =pes.executeQuery(select);
            
           
        }
            if ((r2 != "x")  && (r.equals(x)))
        {
             String select = "SELECT *  from book WHERE author like '%" + r2 + "%'";
            PreparedStatement pes = Con.prepareStatement(select);
            RS =pes.executeQuery(select);
            
           
        }
            
             if ((r2 != "x")  && (r != "x"))
        {
             String select = "SELECT *  from book WHERE author like '%" + r2 + "%' and title like '%" + r + "%'";
            PreparedStatement pes = Con.prepareStatement(select);
            RS =pes.executeQuery(select);
            
           
        }
            
            
            
            
    }
           catch(Exception cnfe)
      {
            System.err.println("Exception: " + cnfe);
        }
        %>
        
       <form method="post" action="">    
       <select name = "src" size ="10" >
        <%  while(RS.next()){ %>
            <option><%= RS.getString("title")%></option>
        <% } %>
 
        </select>
       
        
        <input type="submit" value="borrow" name="borrow"/><br/>
        </form>
        
        <%
        if(request.getParameter("borrow")!=null)
    {
    String selected= request.getParameter("src");
    //session.setAttribute("update", selected);
    response.sendRedirect("borrow.jsp?borrow="+selected);
    }
        %>  
    </body>
</html>
