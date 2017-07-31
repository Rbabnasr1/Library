<%-- 
    Document   : signup2
    Created on : Dec 21, 2014, 7:58:58 PM
    Author     : mm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style>
             
            #signup {text-align: center;
                     margin-left:120px; 
                     margin-top:25px; 
                     height:30px;}
        </style>
    </head>
    <body>
        <h1 style="text-align: center;">Sign Up</h1>
        <form action="SignUp2" method="post" >
           
            <table border="1">
                <tr>
                    <td>ID</td>
                    <td><input type="text" required="required" name="id" /> </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" required="required" name="name" /> </td>
                </tr>
                <tr>
                     <td>Password</td>
                     <td> <input type="password" required="required" name="password" /> </td>
                 </tr>
                  <tr>
                     <td> Repeat password </td>
                     <td> <input type="password" required="required"/> </td>
                 </tr>
                <tr>
                    <td>Age</td>
                    <td> <input type="text" name="age" /> </td>
                 </tr>
                 <tr>
                     <td> Phone </td>
                     <td> <input type="text" required="required" name="mobile" /> </td>
                 </tr>
                 <tr>
                     <td>Email</td>
                     <td><input type="email" required="required" name="email" /> </td>
                 </tr>
           
            </table>
            <input type="submit" value="Sign Up" id="signup"/>
        </form>
    </body>
</html>
