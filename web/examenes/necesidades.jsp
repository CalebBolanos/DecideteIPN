<%-- 
    Document   : necesidades
    Created on : 7/05/2017, 01:35:34 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null) {
        response.sendRedirect("index.html");
    }
    String xNombre = (String) sesion.getAttribute("nombre");
    int xId = (Integer) session.getAttribute("id");
    String xCorreo = (String) sesion.getAttribute("correo");

    validaciones.obtenerCalificaciones revisar = new validaciones.obtenerCalificaciones();

    if (revisar.calificaNecesidades(xId)) {
        response.sendRedirect("../obtenerExamenes.jsp");
    }
%>
<html lang="es">
    <head>
        <title>Necesidades</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="../imagenes/icon.ico" />
        <script>
        </script>
        <style>
            @keyframes traer{
                0% {
                    transform: scaleY(.5);
                }
                40% {
                    transform: scaleY(1.02);
                }
                60% {
                    transform: scaleY(0.98);
                }
                80% {
                    transform: scaleY(1.01);
                }
                100% {
                    transform: scaleY(0.98);
                }				
                80% {
                    transform: scaleY(1.01);
                }
                100% {
                    transform: scaleY(1);
                }
            }
            body
            {
                background-color: white;
                align-content: center;
                font-family: Arial;
                margin:0;
                animation-duration: 1.5s;
                animation-name: traer;

            }
            button 
            {
                border: none;
                background: #0288D1;
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
                color: #0288D1;
                box-shadow: inset 0 0 0 3px #0288D1;
            }
            #titulo
            {
                background-color: #0288D1;
                color: white;
                font-size: 35px;
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
                color: #0288D1;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: silver;
            }

            .active {
                background-color: #0288D1;
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
            #opcion1, #opcion2, #opcion3 { 
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 1000px;
                height: 310px;
                margin:15px; 
                float:left;
                transition: all 500ms ease;
            }
            #opcion1:hover, #opcion2:hover, #opcion3:hover { 
                border-color: #0288D1;
            }
            #texto1, #texto2, #texto3{
                background-color: #0288D1;
                position: absolute;
                height: 310px;
                width: 300px;
                font-family: Arial;
                font-size: 27px;
                text-align: center;
                color: white;
                transition: all 500ms ease;
            }
            #imagen1, #imagen2, #imagen3  {
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                width: 700px;
                height: 310px;
                float: right;
                transition: all 500ms ease;

            }
            #texto1:hover, #texto2:hover, #texto3:hover{
                color: #0288D1;
                background-color: white;
            }
            iframe
            {
                border: 0px;
            }
            .radioex{
                font-size: 20px;
                text-align: left;
                margin-left: 50px;
                margin-right: 50px;
                margin-top: 10px;
                height: 250px;
            }
            #contenedor{
                background-color: whitesmoke;
                border: 5px solid gray;
                border-radius: 10px;
                margin-left: 150px;
                margin-right: 150px;
                margin-top: -100px;
                margin-bottom: 50px;
                position:relative;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }

            #opc{
                clear: both;
                margin: 0 50px;
            }

            label {
                width: 200px;
                border-radius: 3px;
                border: 1px solid #D1D3D4
            }

            /* hide input */
            input[type=radio]:empty {
                margin-left: -100000000px;
            }

            /* style label */
            input[type=radio]:empty ~ label {
                position: relative;
                float: left;
                line-height: 2.5em;
                text-indent: 3.25em;
                margin-top: 2em;
                cursor: pointer;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;


            }

            input[type=radio]:empty ~ label:before {
                position: absolute;
                display: block;
                top: 0;
                bottom: 0;
                left: 0;
                content: '';
                width: 2.5em;
                background: #D1D3D4;
                border-radius: 3px 0 0 3px;
                transition: all 500ms ease;
            }

            /* toggle hover */
            input[type=radio]:hover:not(:checked) ~ label:before {
                content:'\2714';
                text-indent: .9em;
                color: #C2C2C2;
                transition: unset;
            }

            input[type=radio]:hover:not(:checked) ~ label {
                color: #888;
            }

            /* toggle on */
            input[type=radio]:checked ~ label:before {
                content:'\2714';
                text-indent: .9em;
                color: white;
                background-color: #0288D1;
            }

            input[type=radio]:checked ~ label {
                color: #0288D1;
                border-color: #0288D1;
            }

            /* radio focus */
            input[type=radio]:focus ~ label:before {
                box-shadow: 0 0 0 3px #999;
            }
            input[type=submit]
            {
                border: none;
                background: #0288D1;
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
                color: #0288D1;
                box-shadow: inset 0 0 0 3px #0288D1;
            }
        </style>
    </head>
    <body>
        <ul>
            <li><a href="../paginaPrincipal.jsp">Inicio</a></li>
            <li><a href="../escuelas.jsp">Nuestras escuelas</a></li>
            <li><a href="../obtenerExamenes.jsp" class="active"><font color="white">Examenes y cuestionarios</font></a></li>
            <li><a href="../checaResultados.jsp">Resultados</a></li>
            <li style="float:right"><a href="../destruyeSesion.jsp">Cerrar Sesión</a></li>
            <li style="float:right"><a href="../obtenerDatos.jsp"><%=xNombre%></a></li>
        </ul>
        <div style="background-color: #0288D1; color: white; font-size: 50px; text-align: center; color: white; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"><br><br>Cuestionario de necesidades<br><br><br>
        </div>
        <div id="contenedor">
            <p style="font-size: 35px; text-align: center; color: #0288D1;">Necesitas que la escuela...</p>
            <form method="post" action="../verificaNecesidades.jsp">
                <div class="radioex" >
                    Este cerca de un transporte público <br/>
                    <div id="opc"><input  type="radio" name="preg1" id="unoo1"  value="1" required>
                        <label for="unoo1">Sí</label></div>
                    <div id="opc"><input  type="radio" name="preg1" id="doos1"  value="0">
                        <label for="doos1">No</label></div>

                </div>
                <div class="radioex" >
                    Este ubicada a menos de 30 min de tu hogar<br/>
                    <div id="opc"><input  type="radio" name="preg2" id="unoo2"  value="1" required>
                        <label for="unoo2">Sí</label></div>
                    <div id="opc"><input  type="radio" name="preg2" id="doos2"  value="0">
                        <label for="doos2">No</label></div>

                </div>
                <div class="radioex" >
                    Sea diurna <br/>
                    <div id="opc"><input  type="radio" name="preg3" id="unoo3"  value="1" required>
                        <label for="unoo3">Sí</label></div>
                    <div id="opc"><input  type="radio" name="preg3" id="doos3"  value="0">
                        <label for="doos3">No</label></div>

                </div>
                <div class="radioex" >
                    Posea determinada carrera<br/>
                    <div id="opc"><input  type="radio" name="preg4" id="unoo4"  value="1" required>
                        <label for="unoo4">Sí</label></div>
                    <div id="opc"><input  type="radio" name="preg4" id="doos4"  value="0">
                        <label for="doos4">No</label></div>

                </div>
                <div class="radioex" >
                    Otorgue atención a capacidades diferentes
                    <br/>
                    <div id="opc"><input  type="radio" name="preg5" id="unoo5"  value="1" required>
                        <label for="unoo5">Sí</label></div>
                    <div id="opc"><input  type="radio" name="preg5" id="doos5"  value="0">
                        <label for="doos5">No</label></div>

                </div>
                <div class="radioex" >
                    Cuente con instalaciones de ultima generación <br/>
                    <div id="opc"><input  type="radio" name="preg6" id="unoo6"  value="1" required>
                        <label for="unoo6">Sí</label></div>
                    <div id="opc"><input  type="radio" name="preg6" id="doos6"  value="0">
                        <label for="doos6">No</label></div>

                </div>
                <div class="radioex" >
                    Posea una capacidad de alumnos pequeña <br/>
                    <div id="opc"><input  type="radio" name="preg7" id="unoo7"  value="1" required>
                        <label for="unoo7">Sí</label></div>
                    <div id="opc"><input  type="radio" name="preg7" id="doos7"  value="0">
                        <label for="doos7">No</label></div>

                </div>
                <div class="radioex" >
                    Posea actividades etraescolares (talleres)<br/>
                    <div id="opc"><input  type="radio" name="preg8" id="unoo8"  value="1" required>
                        <label for="unoo8">Sí</label></div>
                    <div id="opc"><input  type="radio" name="preg8" id="doos8"  value="0">
                        <label for="doos8">No</label></div>

                </div>
                <center><input type="submit" id="btnEnviar" name="btnEnviar" value="Enviar" /></center>
            </form>
        </div>
    </body>
</html>
