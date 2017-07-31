<%-- 
    Document   : follow_search
    Created on : Dec 19, 2014, 5:32:51 PM
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
            
            //String x = request.getSession().getAttribute("u").toString();
            String r=request.getParameter("txt"); 
            
            
            String select = "SELECT *  from book WHERE title like '%" + r + "%'";
            PreparedStatement pes = Con.prepareStatement(select);
            RS =pes.executeQuery(select);
            
            
            
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
       
        
        <input type="submit" value="update" name="update"/><br/>
        </form>
        
        <%
        if(request.getParameter("update")!=null)
    {
    String selected= request.getParameter("src");
    //session.setAttribute("update", selected);
    response.sendRedirect("addbook2.jsp?update="+selected);
    }
        %>
        
        
       
    </body>
</html>
