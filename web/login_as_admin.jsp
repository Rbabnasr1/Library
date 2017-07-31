<%-- 
    Document   : login_as_admin
    Created on : Dec 18, 2014, 11:03:42 PM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <style>
            #contain {
                    margin-left: 550px;
                    margin-top: 300px;
                    }
        </style>
    </head>
    <body>
        <h1 style="text-align:center;">Admin Login</h1>
        <div id="contain">
            <form action="LoginAsAdmin">
                <table border="1">
                    <tr>
                        <td>User Name</td>
                        <td> <input type="text" required="required"name="username" /> </td>
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
