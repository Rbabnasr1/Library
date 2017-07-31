<%-- 
    Document   : email
    Created on : Dec 18, 2014, 11:35:42 PM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send E-mail</title>
        <style>
            #emailcontain {
                        margin-left:450px;
                        margin-top: 100px;
                            }
        </style>
    </head>
    <body>
        <h1 style="text-align:center;">E-mail</h1>
        <div id="emailcontain">
            <form action="SendEmail" method="post" >
                <table>
                    <tr>
                        <td>To</td>
                        <td> <input type="text" required="required" name="to" /> </td>
                    </tr>
                    <tr>
                        <td>Subject</td>
                        <td> <input type="text" required="required" name="sub" /> </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td> <textarea rows="5" cols="60" name="txt" ></textarea> </td>
                    </tr>
                </table>
                <input type="submit" name="Send"  />
            </form>
        </div>
    </body>
</html>
