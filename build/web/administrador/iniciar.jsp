<%-- 
    Document   : iniciar
    Created on : 14/05/2017, 09:45:42 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>...</title>
        <style>
            input[type=text] {
                width: 70%;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                font-size: 20px;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }
            input[type=text]:hover {
                border: 3px solid #2196F3;
            }
            input[type=text]:focus {
                border: 3px solid #2196F3;
            }
            input[type=submit]
            {
                border: none;
                background: #2196F3;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
            }
            input[type=submit]:hover {
                background: rgba(0,0,0,0);
                color: blue;
                box-shadow: inset 0 0 0 3px #2196F3;
            }
        </style>
    </head>
    <body>
        <div style="padding: 300px;">
        <center>
            <form action="crearSesion.jsp">
            <input type="text" id="acceso" name="acceso" placeholder="¿Qué haces aquí?" required><br>
            </form>
        </center>
        </div>
    </body>
</html>
