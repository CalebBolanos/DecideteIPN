<%-- 
    Document   : aptitudes
    Created on : 13/04/2017, 11:42:07 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null) {
        response.sendRedirect("index.html");
    }
    String xNombre = (String) sesion.getAttribute("nombre");
    int xId = (Integer)session.getAttribute("id");
    String xCorreo = (String) sesion.getAttribute("correo");
    
    validaciones.obtenerCalificaciones revisar = new validaciones.obtenerCalificaciones();
    
    if(revisar.calificaAptitudes(xId)){
        response.sendRedirect("../obtenerExamenes.jsp");
    }
%>
<html lang="es">
    <head>
        <title>Aptitudes</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="../imagenes/icon.ico" />
        <script>
            function calificar() {
                var servicioSocial = 0;
                var ejecutiva = 0;
                var verbal = 0;
                var artistico = 0;
                var musical = 0;
                var organizacion = 0;
                var cientifico = 0;
                var calculo = 0;
                var mecanica = 0;
                var aireLibre = 0;

                //pregunta1
                if (document.getElementById("unoo1").checked === true) {
                    servicioSocial = servicioSocial + 3;
                }
                if (document.getElementById("doos1").checked === true) {
                    servicioSocial = servicioSocial + 2;
                }
                if (document.getElementById("trees1").checked === true) {
                    servicioSocial = servicioSocial + 1;
                }
                if (document.getElementById("cuatroo1").checked === true) {
                    servicioSocial = servicioSocial + 0;
                }

                //pregunta2
                if (document.getElementById("unoo2").checked === true) {
                    ejecutiva = ejecutiva + 3;
                }
                if (document.getElementById("doos2").checked === true) {
                    ejecutiva = ejecutiva + 2;
                }
                if (document.getElementById("trees2").checked === true) {
                    ejecutiva = ejecutiva + 1;
                }
                if (document.getElementById("cuatroo2").checked === true) {
                    ejecutiva = ejecutiva + 0;
                }

                //pregunta3
                if (document.getElementById("unoo3").checked === true) {
                    verbal = verbal + 3;
                }
                if (document.getElementById("doos3").checked === true) {
                    verbal = verbal + 2;
                }
                if (document.getElementById("trees3").checked === true) {
                    verbal = verbal + 1;
                }
                if (document.getElementById("cuatroo3").checked === true) {
                    verbal = verbal + 0;
                }

                //pregunta4
                if (document.getElementById("unoo4").checked === true) {
                    artistico = artistico + 3;
                }
                if (document.getElementById("doos4").checked === true) {
                    artistico = artistico + 2;
                }
                if (document.getElementById("trees4").checked === true) {
                    artistico = artistico + 1;
                }
                if (document.getElementById("cuatroo4").checked === true) {
                    artistico = artistico + 0;
                }

                //pregunta5
                if (document.getElementById("unoo5").checked === true) {
                    musical = musical + 3;
                }
                if (document.getElementById("doos5").checked === true) {
                    musical = musical + 2;
                }
                if (document.getElementById("trees5").checked === true) {
                    musical = musical + 1;
                }
                if (document.getElementById("cuatroo5").checked === true) {
                    musical = musical + 0;
                }

                //pregunta6
                if (document.getElementById("unoo6").checked === true) {
                    organizacion = organizacion + 3;
                }
                if (document.getElementById("doos6").checked === true) {
                    organizacion = organizacion + 2;
                }
                if (document.getElementById("trees6").checked === true) {
                    organizacion = organizacion + 1;
                }
                if (document.getElementById("cuatroo6").checked === true) {
                    organizacion = organizacion + 0;
                }

                //pregunta7
                if (document.getElementById("unoo7").checked === true) {
                    cientifico = cientifico + 3;
                }
                if (document.getElementById("doos7").checked === true) {
                    cientifico = cientifico + 2;
                }
                if (document.getElementById("trees7").checked === true) {
                    cientifico = cientifico + 1;
                }
                if (document.getElementById("cuatroo7").checked === true) {
                    cientifico = cientifico + 0;
                }

                //pregunta8
                if (document.getElementById("unoo8").checked === true) {
                    calculo = calculo + 3;
                }
                if (document.getElementById("doos8").checked === true) {
                    calculo = calculo + 2;
                }
                if (document.getElementById("trees8").checked === true) {
                    calculo = calculo + 1;
                }
                if (document.getElementById("cuatroo8").checked === true) {
                    calculo = calculo + 0;
                }

                //pregunta9
                if (document.getElementById("unoo9").checked === true) {
                    mecanica = mecanica + 3;
                }
                if (document.getElementById("doos9").checked === true) {
                    mecanica = mecanica + 2;
                }
                if (document.getElementById("trees9").checked === true) {
                    mecanica = mecanica + 1;
                }
                if (document.getElementById("cuatroo9").checked === true) {
                    mecanica = mecanica + 0;
                }

                //pregunta10
                if (document.getElementById("unoo10").checked === true) {
                    aireLibre = aireLibre + 3;
                }
                if (document.getElementById("doos10").checked === true) {
                    aireLibre = aireLibre + 2;
                }
                if (document.getElementById("trees10").checked === true) {
                    aireLibre = aireLibre + 1;
                }
                if (document.getElementById("cuatroo10").checked === true) {
                    aireLibre = aireLibre + 0;
                }

                //pregunta11
                if (document.getElementById("unoo11").checked === true) {
                    servicioSocial = servicioSocial + 3;
                }
                if (document.getElementById("doos11").checked === true) {
                    servicioSocial = servicioSocial + 2;
                }
                if (document.getElementById("trees11").checked === true) {
                    servicioSocial = servicioSocial + 1;
                }
                if (document.getElementById("cuatroo11").checked === true) {
                    servicioSocial = servicioSocial + 0;
                }

                //pregunta12
                if (document.getElementById("unoo12").checked === true) {
                    ejecutiva = ejecutiva + 3;
                }
                if (document.getElementById("doos12").checked === true) {
                    ejecutiva = ejecutiva + 2;
                }
                if (document.getElementById("trees12").checked === true) {
                    ejecutiva = ejecutiva + 1;
                }
                if (document.getElementById("cuatroo12").checked === true) {
                    ejecutiva = ejecutiva + 0;
                }

                //pregunta13
                if (document.getElementById("unoo13").checked === true) {
                    verbal = verbal + 3;
                }
                if (document.getElementById("doos13").checked === true) {
                    verbal = verbal + 2;
                }
                if (document.getElementById("trees13").checked === true) {
                    verbal = verbal + 1;
                }
                if (document.getElementById("cuatroo13").checked === true) {
                    verbal = verbal + 0;
                }

                //pregunta14
                if (document.getElementById("unoo14").checked === true) {
                    artistico = artistico + 3;
                }
                if (document.getElementById("doos14").checked === true) {
                    artistico = artistico + 2;
                }
                if (document.getElementById("trees14").checked === true) {
                    artistico = artistico + 1;
                }
                if (document.getElementById("cuatroo14").checked === true) {
                    artistico = artistico + 0;
                }

                //pregunta15
                if (document.getElementById("unoo15").checked === true) {
                    musical = musical + 3;
                }
                if (document.getElementById("doos15").checked === true) {
                    musical = musical + 2;
                }
                if (document.getElementById("trees15").checked === true) {
                    musical = musical + 1;
                }
                if (document.getElementById("cuatroo15").checked === true) {
                    musical = musical + 0;
                }

                //pregunta16
                if (document.getElementById("unoo16").checked === true) {
                    organizacion = organizacion + 3;
                }
                if (document.getElementById("doos16").checked === true) {
                    organizacion = organizacion + 2;
                }
                if (document.getElementById("trees16").checked === true) {
                    organizacion = organizacion + 1;
                }
                if (document.getElementById("cuatroo16").checked === true) {
                    organizacion = organizacion + 0;
                }

                //pregunta17
                if (document.getElementById("unoo17").checked === true) {
                    cientifico = cientifico + 3;
                }
                if (document.getElementById("doos17").checked === true) {
                    cientifico = cientifico + 2;
                }
                if (document.getElementById("trees17").checked === true) {
                    cientifico = cientifico + 1;
                }
                if (document.getElementById("cuatroo17").checked === true) {
                    cientifico = cientifico + 0;
                }

                //pregunta18
                if (document.getElementById("unoo18").checked === true) {
                    calculo = calculo + 3;
                }
                if (document.getElementById("doos18").checked === true) {
                    calculo = calculo + 2;
                }
                if (document.getElementById("trees18").checked === true) {
                    calculo = calculo + 1;
                }
                if (document.getElementById("cuatroo18").checked === true) {
                    calculo = calculo + 0;
                }

                //pregunta19
                if (document.getElementById("unoo19").checked === true) {
                    mecanica = mecanica + 3;
                }
                if (document.getElementById("doos19").checked === true) {
                    mecanica = mecanica + 2;
                }
                if (document.getElementById("trees19").checked === true) {
                    mecanica = mecanica + 1;
                }
                if (document.getElementById("cuatroo19").checked === true) {
                    mecanica = mecanica + 0;
                }

                //pregunta20
                if (document.getElementById("unoo20").checked === true) {
                    aireLibre = aireLibre + 3;
                }
                if (document.getElementById("doos20").checked === true) {
                    aireLibre = aireLibre + 2;
                }
                if (document.getElementById("trees20").checked === true) {
                    aireLibre = aireLibre + 1;
                }
                if (document.getElementById("cuatroo20").checked === true) {
                    aireLibre = aireLibre + 0;
                }
                
                //
                
                return true;
            }

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
                height: 430px;
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
                color: black;
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
        <div style="background-color: #0288D1; color: white; font-size: 50px; text-align: center; color: white; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"><br><br>Cuestionario de aptitudes<br><br><br>
        </div>
        <div id="contenedor">
            <p style="font-size: 35px; text-align: center; color: #0288D1;">¿Qué tanto  te gusta?</p>
            <form method="post" action="../verificaAptitudes.jsp" onsubmit="return calificar();">
                <div class="radioex">
                    Atender y cuidar enfermos <br/>
                    <div id="opc"><input  type="radio" name="preg1" id="unoo1"  value="3" required>
                        <label for="unoo1">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg1" id="doos1"  value="2">
                        <label for="doos1">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg1" id="trees1"  value="1">
                        <label for="trees1">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg1" id="cuatroo1"  value="0">
                        <label for="cuatroo1">Nada</label></div>

                </div>
                <div class="radioex" >
                    Intervenir activamente en las discusiones de clase<br/>
                    <div id="opc"><input  type="radio" name="preg2" id="unoo2"  value="3" required>
                        <label for="unoo2">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg2" id="doos2"  value="2">
                        <label for="doos2">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg2" id="trees2"  value="1">
                        <label for="trees2">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg2" id="cuatroo2"  value="0">
                        <label for="cuatroo2">Nada</label></div>
                </div>
                <div class="radioex" >
                    Escribir cuentos, crónicas y artículos <br/>
                    <div id="opc"><input  type="radio" name="preg3" id="unoo3"  value="3" required>
                        <label for="unoo3">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg3" id="doos3"  value="2">
                        <label for="doos3">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg3" id="trees3"  value="1">
                        <label for="trees3">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg3" id="cuatroo3"  value="0">
                        <label for="cuatroo3">Nada</label></div>
                </div>
                <div class="radioex" >
                    Dibujar y pintar<br/>
                    <div id="opc"><input  type="radio" name="preg4" id="unoo4"  value="3" required>
                        <label for="unoo4">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg4" id="doos4"  value="2">
                        <label for="doos4">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg4" id="trees4"  value="1">
                        <label for="trees4">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg4" id="cuatroo4"  value="0">
                        <label for="cuatroo4">Nada</label></div>
                </div>
                <div class="radioex" >
                    Cantar en un coro estudiantil <br/>
                    <div id="opc"><input  type="radio" name="preg5" id="unoo5"  value="3" required>
                        <label for="unoo5">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg5" id="doos5"  value="2">
                        <label for="doos5">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg5" id="trees5"  value="1">
                        <label for="trees5">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg5" id="cuatroo5"  value="0">
                        <label for="cuatroo5">Nada</label></div>
                </div>
                <div class="radioex" >
                    Llevar en orden tus libros y cuaadernos<br/>
                    <div id="opc"><input  type="radio" name="preg6" id="unoo6"  value="3" required>
                        <label for="unoo6">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg6" id="doos6"  value="2">
                        <label for="doos6">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg6" id="trees6"  value="1">
                        <label for="trees6">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg6" id="cuatroo6"  value="0">
                        <label for="cuatroo6">Nada</label></div>
                </div>
                <div class="radioex" >
                    Conocer y estudiar la estructura de las plantas y de los animales <br/>
                    <div id="opc"><input  type="radio" name="preg7" id="unoo7"  value="3" required>
                        <label for="unoo7">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg7" id="doos7"  value="2">
                        <label for="doos7">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg7" id="trees7"  value="1">
                        <label for="trees7">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg7" id="cuatroo7"  value="0">
                        <label for="cuatroo7">Nada</label></div>
                </div>
                <div class="radioex" >
                    Resolver cuestiones matemáticas<br/>
                    <div id="opc"><input  type="radio" name="preg8" id="unoo8"  value="3" required>
                        <label for="unoo8">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg8" id="doos8"  value="2">
                        <label for="doos8">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg8" id="trees8"  value="1">
                        <label for="trees8">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg8" id="cuatroo8"  value="0">
                        <label for="cuatroo8">Nada</label></div>
                </div>
                <div class="radioex" >
                    Armar y desarmar objetos mecánicos<br/>
                    <div id="opc"><input  type="radio" name="preg9" id="unoo9"  value="3" required>
                        <label for="unoo9">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg9" id="doos9"  value="2">
                        <label for="doos9">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg9" id="trees9"  value="1">
                        <label for="trees9">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg9" id="cuatroo9"  value="0">
                        <label for="cuatroo9">Nada</label></div>
                </div>

                <div class="radioex" >
                    Salir de excursión  <br/>
                    <div id="opc"><input  type="radio" name="preg10" id="unoo10"  value="3" required>
                        <label for="unoo10">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg10" id="doos10"  value="2">
                        <label for="doos10">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg10" id="trees10"  value="1">
                        <label for="trees10">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg10" id="cuatroo10"  value="0">
                        <label for="cuatroo10">Nada</label></div>
                </div>
                <div class="radioex" >
                    Enseñar a los analfabetos<br/>
                    <div id="opc"><input  type="radio" name="preg11" id="unoo11"  value="3" required>
                        <label for="unoo11">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg11" id="doos11"  value="2">
                        <label for="doos11">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg11" id="trees11"  value="1">
                        <label for="trees11">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg11" id="cuatroo11"  value="0">
                        <label for="cuatroo11">Nada</label></div>
                </div>
                <div class="radioex" >
                    Hacer propaganda para la difusión de una idea<br/>
                    <div id="opc"><input  type="radio" name="preg12" id="unoo12"  value="3" required>
                        <label for="unoo12">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg12" id="doos12"  value="2">
                        <label for="doos12">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg12" id="trees12"  value="1">
                        <label for="trees12">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg12" id="cuatroo12"  value="0">
                        <label for="cuatroo12">Nada</label></div>
                </div>

                <div class="radioex" >
                    Representar un papel en una obra de teatro <br/>
                    <div id="opc"><input  type="radio" name="preg13" id="unoo13"  value="3" required>
                        <label for="unoo13">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg13" id="doos13"  value="2">
                        <label for="doos13">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg13" id="trees13"  value="1">
                        <label for="trees13">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg13" id="cuatroo13"  value="0">
                        <label for="cuatroo13">Nada</label></div>
                </div>
                <div class="radioex" >
                    Idear y mostrar el escudo de un club o sociedad<br/>
                    <div id="opc"><input  type="radio" name="preg14" id="unoo14"  value="3" required>
                        <label for="unoo14">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg14" id="doos14"  value="2">
                        <label for="doos14">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg14" id="trees14"  value="1">
                        <label for="trees14">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg14" id="cuatroo14"  value="0">
                        <label for="cuatroo14">Nada</label></div>
                </div>
                <div class="radioex" >
                    Ser miembro de una asociación musical<br/>
                    <div id="opc"><input  type="radio" name="preg15" id="unoo15"  value="3" required>
                        <label for="unoo15">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg15" id="doos15"  value="2">
                        <label for="doos15">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg15" id="trees15"  value="1">
                        <label for="trees15">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg15" id="cuatroo15"  value="0">
                        <label for="cuatroo15">Nada</label></div>
                </div>


                <div class="radioex" >
                    Ayudar a calificar pruebas<br/>
                    <div id="opc"><input  type="radio" name="preg16" id="unoo16"  value="3" required>
                        <label for="unoo16">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg16" id="doos16"  value="2">
                        <label for="doos16">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg16" id="trees16"  value="1">
                        <label for="trees16">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg16" id="cuatroo16"  value="0">
                        <label for="cuatroo16">Nada</label></div>
                </div>
                <div class="radioex" >
                    Estudiar y entender las causas de los movimientos sociales

                    <br/>
                    <div id="opc"><input  type="radio" name="preg17" id="unoo17"  value="3" required>
                        <label for="unoo17">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg17" id="doos17"  value="2">
                        <label for="doos17">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg17" id="trees17"  value="1">
                        <label for="trees17">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg17" id="cuatroo17"  value="0">
                        <label for="cuatroo17">Nada</label></div>
                </div>
                <div class="radioex" >
                    Explicar a otros como resolver problemas de matemáticas
                    <br/>
                    <div id="opc"><input  type="radio" name="preg18" id="unoo18"  value="3" required>
                        <label for="unoo18">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg18" id="doos18"  value="2">
                        <label for="doos18">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg18" id="trees18"  value="1">
                        <label for="trees18">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg18" id="cuatroo18"  value="0">
                        <label for="cuatroo18">Nada</label></div>
                </div>

                <div class="radioex" >
                    Reparar las instalaciones eléctricas de gas o plomería
                    <br/>
                    <div id="opc"><input  type="radio" name="preg19" id="unoo19"  value="3" required>
                        <label for="unoo19">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg19" id="doos19"  value="2">
                        <label for="doos19">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg19" id="trees19"  value="1">
                        <label for="trees19">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg19" id="cuatroo19"  value="0">
                        <label for="cuatroo19">Nada</label></div>
                </div>
                <div class="radioex" >
                    Sembrar en una granja durante las vacaciones<br/>
                    <div id="opc"><input  type="radio" name="preg20" id="unoo20"  value="3" required>
                        <label for="unoo20">Mucho</label></div>
                    <div id="opc"><input  type="radio" name="preg20" id="doos20"  value="2">
                        <label for="doos20">Bastante</label></div>
                    <div id="opc"><input  type="radio" name="preg20" id="trees20"  value="1">
                        <label for="trees20">Poco</label></div>
                    <div id="opc"><input  type="radio" name="preg20" id="cuatroo20"  value="0">
                        <label for="cuatroo20">Nada</label></div>
                </div>
                <center><input type="submit" id="btnEnviar" name="btnEnviar" value="Enviar" /></center>
            </form>

        </div>
    </body>
</html>