<%-- 
    Document   : hacerExamenes
    Created on : 5/05/2017, 12:46:29 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!doctype html>
<%
    HttpSession sesion = request.getSession();
  if(sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null){
      response.sendRedirect("index.html");
  }
  int c1 = (Integer)sesion.getAttribute("c1");
  int servicioSocial = (Integer)sesion.getAttribute("servicioSocial");
  int n1 = (Integer)sesion.getAttribute("n1");
  //!sesion.getAttribute("necesidades").equals(-1) || !sesion.getAttribute("aciertos").equals(-1)
  if( c1 != -1 && servicioSocial != -1 && n1 != -1){
      response.sendRedirect("resultados.jsp");
  }
  String xNombre = (String)sesion.getAttribute("nombre");
  Object xId = session.getAttribute("id");
  String xCorreo = (String)sesion.getAttribute("correo");
  
%>
<html lang="es">
    <head>
        <title>Resultados</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="imagenes/icon.ico" />
        <script></script>
        <style>
            @keyframes slidein {
                0% {
                    transform: scale(1.3);
                    opacity: 0.7;
                }	
                100% {
                    transform: scale(1);
                    opacity: 1;
                }	
            }
            body
            {
                background-color: white;
                align-content: center;
                font-family: Arial;
                margin:0;
                animation-duration: 1.5s;
                animation-name: slidein;

            }
            button 
            {
                border: none;
                background: #00C853;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
            }
            button:hover {
                background: rgba(0,0,0,0);
                color: #00C853;
                box-shadow: inset 0 0 0 3px #00C853;
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
                color: #00C850;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: silver;
            }

            .active {
                background-color: #00C853;
            }
            #contenido{
                background-color: white;
                font-family: Arial;
                font-size: 20px;
            }
            #contenedor{ 
                margin: 10px;
            } 
            .clear { 
                clear:both; 
            }
            #titulo{
                color: white;
                background-color: #00C853;
                font-size: 50px;
                text-align: center;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }
            #contenedor{
                background-color: whitesmoke;
                border: 5px solid gray;
                border-radius: 10px;
                margin-left: 100px;
                margin-right: 100px;
                margin-top: -100px;
                margin-bottom: 50px;
                position:relative; 
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }
            hr{
                margin-left: -5px;
                margin-right: -5px;
                border: 0;
                height: 0;
                border-top: 1px solid #00C853;
                border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            }
            #graficas, #escuela, #info{
                color: gray;
                font-size: 20px;
                margin-left: 20px;
                margin-right: 20px;
                margin-top: 10px;
            }
            #subtitulos{font-size: 30px; color: #00C853; margin-top: 20px;}
            #cecyt9{
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 700px;
                height: 310px;
                margin:15px; 
                transition: all 500ms ease;
            }
            #cecyt9:hover{
                border-color: #2979FF;
            }
            #fondo9{
                background-image: URL("imagenes/Escuelas/Cecyt1/cecyt9.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio9{
                background-color: #2979FF;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo9{
                background-color: #2962FF;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo9:hover{
                color: #2962FF;
                background-color: whitesmoke;
            }
            #b9{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #2979FF;
            }
            #b9:hover {
                background: rgba(0,0,0,0);
                color: #2979FF;
                box-shadow: inset 0 0 0 3px #2979FF;
            }
            .clear{
                clear: both;
            }

        </style>
    </head>
    <body>
        <ul>
            <li><a href="paginaPrincipal.jsp">Inicio</a></li>
            <li><a href="escuelas.jsp">Nuestras escuelas</a></li>
            <li><a href="obtenerExamenes.jsp">Examenes y cuestionarios</font></a></li>
            <li><a class="active" href=""><font color="white">Resultados</a></li>
            <li style="float:right"><a href="destruyeSesion.jsp">Cerrar Sesión</a></li>
            <li style="float:right"><a href="obtenerDatos.jsp"><%=xNombre%></a></li>
        </ul>
        <div id="titulo"><br><br>Tus resultados<br><br><br></div>
        <div style="color: #00C853; font-size: 35px; text-align: center; padding-top: 60px;">
            ¡Todavía no podemos mostrar tus resultados!
            <div style="color: gray; font-size: 18px; text-align: center; padding-bottom: 10px;">
                Debes de contestar los examenes que están disponibles para mostrarte <br>adecuadamente tus resultados.
            </div>
            <center><a href="obtenerExamenes.jsp"><button>Hacer examenes</button></a></center>
        </div>
    </body>
</html>
