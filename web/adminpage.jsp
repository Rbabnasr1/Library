<%-- 
    Document   : adminpage
    Created on : Dec 18, 2014, 11:24:40 PM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <style>
            #buttons {
                    margin-left:560px;
                    margin-top: 200px;
                   
                        }
        </style>
    </head>
    <body>
        <h1 style="text-align: center;">Admin</h1>
        <div id="buttons">
            <form>
                <button formaction="addbook.jsp" style="height: 30px; margin-right:10px;">Add Book</button>
                
                <button formaction="SearchToUpdate.jsp" style="height: 30px; margin-left:10px;">Update Book</button>
            </form>
            <form>
                <button formaction="email.jsp" style="height: 30px; margin-left: 45px; margin-top:10px;">Send Email</button>
            </form>
        </div>
    </body>
</html>
