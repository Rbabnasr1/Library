<%-- 
    Document   : registr
    Created on : Dec 21, 2014, 8:16:36 PM
    Author     : mm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           
                    
                        
            #content {text-align: center;
                      margin-top: 150px;}
            #loginbutton{text-align: center;
                        width: 120px;
                        height: 40px;
                        margin-right: 70px;
                        margin-top: 15px;
                      
            }
                            
        </style>
    </head>
    <body>
       <div id="content">
            <h1 style="margin-left:-60px;"> Registration </h1>
            <form>
                <button id="loginbutton" formaction="signup.jsp">Sign Up as user </button>
            <button id="loginbutton" formaction="signup2.jsp">Sign Up as admin</button>
        </form>
        </div>
        
    </body>
</html>
