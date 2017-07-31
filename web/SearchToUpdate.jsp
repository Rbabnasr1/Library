<%-- 
    Document   : SearchToUpdate
    Created on : Dec 19, 2014, 1:09:04 AM
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
        
        
        <h1 style="text-align: center;">Search</h1>
        <div id="searchtoupdate">
            <form action="follow_search.jsp" method="post" >
              
               <input type="text" required="required" name="txt" /> 
            <input type="submit" value="find" name="find"/>
            </form>
          
        </div>
        <%
         if(request.getParameter("find")!=null)
    {
    String selected= request.getParameter("src");
    session.setAttribute("u", selected);
    
    
    }
         
    %>
    </body>
</html>
