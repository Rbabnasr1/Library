<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            #signupbutton {float       : right;
                            width      : 80px;
                             height    : 30px;
                             text-align: center;
                             margin-top: -130px;
                        }
                    
                        
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
        <form>
            <button type="submit"  formaction="registr.jsp" id="signupbutton">Sign Up </button>
            
        
        </form>
        
        <div id="content">
            <h1 style="margin-left:-60px;"> Login </h1>
            <form>
                <button id="loginbutton" formaction="login_as_admin.jsp">Admin</button>
            <button id="loginbutton" formaction="login_as_user.jsp">User</button>
        </form>
        </div>
        
         
    </body>
</html>
