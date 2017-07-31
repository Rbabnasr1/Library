<%-- 
    Document   : login_as_user
    Created on : Dec 18, 2014, 10:50:19 PM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <style>
            #contain {
                    margin-left: 550px;
                    margin-top: 300px;
                    }
        </style>
    </head>
    <body>
        <h1 style="text-align:center;">User Login</h1>
        <div id="contain">
            <form action="LoginAsUser"  method="post" >
                <table border="1">
                    <tr>
                        <td>User Name</td>
                        <td> <input type="text" required="required" name="name"/> </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td> <input type="password" required="required" name="password" /> </td>
                    </tr>
                </table>
                <input type="submit" value="Login" style="margin-left: 60px; height: 30px;"/>
            </form>
            
        </div>
    </body>
</html>
