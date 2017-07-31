<%-- 
    Document   : addbook
    Created on : Dec 18, 2014, 11:49:07 PM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book</title>
        <style>
            #addbook {
                    margin-left:480px;
                    margin-top: 200px;
                    }
        </style>
    </head>
    <body>
        <h1 style="text-align:center;">Add Book</h1>
        <div id="addbook">
            <form  action="AddBook" method="post" >
                <table>
                    <tr>
                        <td>ID</td>
                        <td> <input type="text" required="required" name="id"/> </td>
                    </tr>
                    <tr>
                        <td>ISBN</td>
                        <td> <input type="text" required="required" name="isbn" /> </td>
                    </tr>
                    <tr>
                        <td>Title</td>
                        <td> <input type="text" required="required" name="title" /> </td>
                    </tr>
                    
                    <tr>
                        <td>Author</td>
                        <td> <input type="text" required="required" name="author" /> </td>
                    </tr>
                    <tr>
                        <td>Publishing Year</td>
                        <td> <input type="text" required="required" name="pub_year" /> </td>
                    </tr>
                </table>
                <input type="submit" name="Add"  />
            </form>
        </div>
    </body>
</html>
