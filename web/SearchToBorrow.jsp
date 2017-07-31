<%-- 
    Document   : SearchToBorrow
    Created on : Dec 19, 2014, 1:28:29 AM
    Author     : Mohamed
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
            //String r=request.getParameter("txt"); 
            
            
            String select = "SELECT  * from book " ;
            PreparedStatement pes = Con.prepareStatement(select);
            RS =pes.executeQuery(select);
            
            
            
    }
           catch(Exception cnfe)
      {
            System.err.println("Exception: " + cnfe);
        }
        %>
        
        <select name = "src" size ="10" >
        <%  while(RS.next()){ %>
            <option><%= RS.getString("title")%></option>
        <% } %>
 
        </select>
        
        
        <h1 style="text-align: center;">Search</h1>
        <div id="searchtoupdate">
            
               <form action="follow_search2.jsp" method="post" >
                   
               Tittle<input type="text"  name="txt" /> 
               Author<input type="text" name="txt2" /> 
            <input type="submit" value="find" name="find"/>
            </form>
            <form action="view_mails.jsp" method="post" >
              
               
            <input type="submit" value="view  mails " name="view mails"/>
            </form>
        </div>
        
    </body>
</html>
