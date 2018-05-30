<%-- 
    Document   : paginaPrincipal
    Created on : 13/05/2017, 06:04:09 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!doctype html>
<%
  HttpSession egresado = request.getSession();
  if(egresado.getAttribute("correo") == null && egresado.getAttribute("id") == null){
      response.sendRedirect("../.");
  }
  String xNombre = (String)egresado.getAttribute("nombre");
%>
<html lang="es">
    <head>
        <title>Inicio</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="imagenes/icon.ico" />
        <script type="text/javascript"></script>
        <style>
            @keyframes slidein {
                0% {
                    transform: translateX(150%);
                }
                50%{
                    transform: translateX(-8%);
                }
                65%{
                    transform: translateX(4%);
                }
                80%{
                    transform: translateX(-4%);
                }
                95%{
                    transform: translateX(2%);
                }			
                100% {
                    transform: translateX(0%);
                }	
            }
            body
            {
                background-color: white;
                align-content: center;
                font-family: Arial;
                margin:0;
                animation-duration: 1.7s;
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
            #titulo
            {
                background-color: crimson;
                color: white;
                font-size: 40px;
            }
            #tabla
            {
                position: absolute;
                width: 100%;
                height: 100%;
                background-color: whitesmoke;
            }
            table
            {
                background-size: auto;
            }
            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: whitesmoke;
            }

            li {
                float: left;
                border-right:1px solid #bbb;
            }

            li:last-child {
                border-right: none;
            }

            li a {
                display: block;
                color: crimson;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: silver;
            }

            .active {
                background-color: crimson;
            }
            #saludo{
                background-color: crimson;
                font-size: 40px;
                color: white;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }
            #segundo
            {
                background-color: transparent;
                border-color: crimson;

            }
            #uno{
                background-image: url("imagenes/Principal/cuestionarioo.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;

            }
            #dos{
                background-image: url("imagenes/Principal/exameen.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;

            }
            #tres{
                background-image: url("imagenes/Principal/Encuesta.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;

            }
            #tercero
            {
                background-image: url("../imagenes/Principal/escuela.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                background-attachment: fixed;

            }
            #opaco{
                background-color: black;
                border: 1px solid black;
                opacity: 0.6;
                filter: alpha(opacity=60); 
            }
            #cuadro1{
                background-color: crimson;
            }
            #resultados
            {
                margin: 0;
            }
            #encabezado
            {
                background-color: crimson;
                color: ghostwhite;
            }
            #arriba{
                background-image: URL("imagenes/Principal/resultados.jpeg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
            }
            #redondeado{
                border: 4px solid crimson;
                border-radius: 10px;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }
            #select{
                background-color: transparent;
                transition: all 500ms ease;
            }
            #select:hover{
                background-color: whitesmoke;
            }
            /* unvisited link */
            #link1:link, #link2:link, #link3:link {
                color: gray;
                text-decoration: none;
                transition: all 300ms ease;
            }

            /* visited link */
            #link1:visited, #link2:visited, #link3:visited {
                color: gray;
                text-decoration: none;
            }

            /* mouse over link */
            #link1:hover, #link2:hover, #link3:hover {
                color: crimson;
                text-decoration: none;
            }

            /* selected link */
            #link4:active{
                color: crimson;
                text-decoration: none;
            }
            #link4:link{
                color: gray;
                text-decoration: none;
                transition: all 300ms ease;
            }

            /* visited link */
            #link4:visited{
                color: gray;
                text-decoration: none;
            }

            /* mouse over link */
            #link4:hover{
                color: crimson;
                text-decoration: none;
            }
            /* selected link */
            #link5:active{
                color: orange;
                text-decoration: none;
            }
            #link5:link{
                color: whitesmoke;
                text-decoration: none;
                transition: all 300ms ease;
            }

            /* visited link */
            #link5:visited{
                color: whitesmoke;
                text-decoration: none;
            }

            /* mouse over link */
            #link5:hover{
                color: orange;
                text-decoration: none;
            }
            #sugerencia{
                background-image: URL("../cecyts/carreras/turismo.jpg"); background-repeat: no-repeat;
                background-size: 100%, 100%;
            }
        </style>
    </head>
    <body>
        <ul>
            <li><a class="active" href="#home"><font color="white">Inicio</font></a></li>
            <li><a href="escuelas.jsp">Nuestras escuelas</a></li>
            <li style="float:right"><a href="destruyeSesion.jsp">Cerrar Sesión</a></li>
            <li style="float:right"><a href="obtenerData.jsp"><%=xNombre%></a></li>
        </ul>
        <div id="saludo">
            <center><br><br><br>¡Bienvenido <%=xNombre%>!<br><br><br><br></center>
        </div>
        <br><br>
        <div id="segundo">
            <div style="padding-left: 70px; padding-top: 90px; width: 700px; float: left;">
                <span style="color: crimson; font-size: 30px;">¡Es hora de comentar tus experiencias!</span><br><br>
                <span style="color: gray; font-size: 20px;">Puedes checar y dar tu opinión sobre los cecyt's que tenemos disponibles <br><a href="" id="link4">aqui</a></span>
            </div>
            <div id="sugerencia" style="float: right; width: 500px; margin-right: 70px; height: 270px">
                <br><br><br>
            </div>
        </div>
        <div style="clear: both;"></div>
        <br><br>
        <div id="tercero">
            <div id="opaco">
                <br><br><br><div style="color: white; font-size: 40px; text-align: center"><a href="escuelas.jsp" id="link4">Todo lo que necesitas saber sobre tu Cecyt <br>está aquí</a><br><br></div>
                <font color="FFFFFF" size="+2"><center>Puedes checar el plan de estudios de cada una de ellas, especialidades,<br> ubicación y muchas cosas más.</center></font><br>    
            </div>
        </div>
    </body>
</html>

