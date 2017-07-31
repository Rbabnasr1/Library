<%-- 
    Document   : UpdateBook
    Created on : Dec 19, 2014, 1:31:13 AM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Book</title>
        <style>
            #updateinfo {
                        margin-left: 540px;
                        margin-top: 200px;
                        }
        </style>
    </head>
    <body>
        <h1 style="text-align: center;">Update Information</h1>
        <div id="updateinfo">
            <form>
                <table>
                    <tr>
                        <td>ISBN</td>
                        <td> <input type="text"/> </td>
                    </tr>
                    <tr>
                        <td>Title</td>
                        <td> <input type="text"/> </td>
                    </tr>
                    <tr>
                        <td>Author</td>
                        <td> <input type="text"/> </td>
                    </tr>
                    <tr>
                        <td>Publishing Year</td>
                        <td> <input type="text"/> </td>
                    </tr>
                </table>
                <button formaction="" style="margin-top:10px; margin-left:130px; height:30px; width:70px;" >Update</button>
                <button formaction="SearchToUpdate.jsp" style="height:30px; width:70px;">Cancel</button>
            </form>
            
               
            
        </div>
    </body>
</html>
