<%-- 
    Document   : borrow
    Created on : Dec 18, 2014, 11:06:21 PM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrow Book</title>
        <style>
            #borrowform {
                        text-align: center;
                        margin-left: 550px;
                        margin-top: 250px;
                        }
        </style>
    </head>
    <body>
         <%
            String selected= request.getParameter("borrow");
            session.setAttribute("borrow", selected);
            %>
        <h1 style="text-align: center;">Borrow</h1>
        <div id="borrowform">
            <form action="Borrow1" method="post" >
                <table border="1">
                    <tr>
                        <td>Start Date</td>
                        <td> <input type="text" required="required" name="sDate" /> </td>
                    </tr>
                    <tr>
                        <td>Return Date</td>
                        <td> <input type="text" required="required" name="rDate" /> </td>
                    </tr>
                </table>
                <input type="submit" name="Borrow" value="Borrow"   />
            </form>
            <form action="SearchToBorrow.jsp" method="post" >
                <input type="submit" name="Cancel" value="Cancel"  />
            </form>
            
        </div>
    </body>
</html>
