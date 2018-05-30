<%-- 
    Document   : iniciarSesion
    Created on : 13/04/2017, 10:46:46 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<%
   String xxxD = "";
%>

<% 
    String error = request.getParameter("e");
    if(error != null){
        xxxD = error;
    }
%>
<html lang="es">
    <head>
        <title>Iniciar Sesión</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="imagenes/icon.ico" />
        <script>
            function validar()
            {
                var contrasena = document.getElementById('contrasena').value;
                var email = document.getElementById('email').value;
                var expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

                if (email === '')
                {
                    alert('Escribe tu correo electronico');
                    return false;
                } else
                if (contrasena === '')
                {
                    alert('Escribe tu contraseña');
                    return false;
                } else
                if (!expr.test(email))
                {
                    alert('Algo salió mal. Asegurate de escribir bien tu correo electrónico');
                    return false;
                } else
                    return true;


            }
        </script>
        <style>
            @keyframes slidein {
                from {
                    margin-top: 100%;
                    width: 500%
                }

                to {
                    margin-right: 0%;
                    width: 100%;
                }
            }
            body
            {
                width: 100%;
                background-color: whitesmoke;
                align-content: center;
                font-family: Arial;
                margin:0;
                animation-duration: 1s;
                animation-name: slidein;

            }
            input[type=submit]
            {
                border: none;
                background: crimson;
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
                color: crimson;
                box-shadow: inset 0 0 0 3px crimson;
            }
            #content{
                margin:0 auto;
                position:relative;
                width: 100%;
            }
            #cuadro1
            {
                background-color: crimson;
                color: white;
                font-size: 55px;
                text-align: center;
                width: 40%;
                height: 100%;
                float: left;
                position: fixed;  
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);

            }
            #cuadro2
            {
                background-color: whitesmoke;
                color: white;
                width: 60%;
                height: 100%;
                float: right;
            }
            input[type=email] {
                width: 70%;
                padding: 12px 20px;
                font-size: 20px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }

            input[type=email]:focus {
                border: 3px solid crimson;
            }
            input[type=password] {
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

            input[type=password]:focus {
                border: 3px solid crimson;
            }
            button
            {
                border: none;
                background: rgba(0,0,0,0);
                color: crimson;
                padding: 10px;
                font-size: 15px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
            }
            button:hover {
                background: rgba(0,0,0,0);
                color: crimson;
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <div id="content">
            <div id="cuadro1">
                <br><br><br><br><br>Iniciar sesión<span style="font-size: 25px"><br>Como aspirante</span>
            </div>
            <div id="cuadro2">
                <center><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                    <form id="iniciar" method="post" action="validaSesion.jsp" onsubmit="">
                        <input type="email" id="email" name="email" placeholder="Escribe tu correo electrónico" required><br><br>
                        <input type="password" id="contrasena" name="contrasena" placeholder="Escribe tu contraseña" required><br><br><br>
                        <input type="submit" id="btnInicio" name="btnInicio" value="Ingresar" />
                        <input type="hidden" id="checa" name="checa" value="chk1" /> 
                    </form>
                    <div style="">
                        <center><a href="registroUsuarios.jsp"><button>¿Todavía no tienes una cuenta? registrate aquí</button></a></center>
                        <center><a href="index.html"><button>Regresar a inicio</button></a></center>
                    </div>
                    <div style="color: gray; padding-top: 10px; ">
                    <%=xxxD%>
                    </div>
                </center>
            </div>
        </div>
    </body>
</html>

