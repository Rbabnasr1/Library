

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        
            String uID = request.getSession().getAttribute("userID").toString();
            
                    

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
            
            
            String select = "SELECT  * from sent_email where user_id = '"+uID+"' " ;
            PreparedStatement pes = Con.prepareStatement(select);
            RS =pes.executeQuery(select);
            
            
            
    }
           catch(Exception cnfe)
      {
            System.err.println("Exception: " + cnfe);
        }
        %>
        
         <% while (RS.next()) { %>
        <p> admin id : <%=RS.getString("admin_id")%></p>
        <p> user id : <%=RS.getString("user_id")%></p>
        <p> subject : <%=RS.getString("subject")%></p>
        <p> about : <%=RS.getString("about")%></p>
               
<% 
}
RS.close();
Con.close();

 %>
        
     </body>
</html>
