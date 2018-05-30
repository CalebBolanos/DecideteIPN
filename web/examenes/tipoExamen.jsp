<%-- 
    Document   : tipoExamen
    Created on : 7/05/2017, 04:49:59 AM
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

    if (revisar.calificaExamen(xId)) {
        response.sendRedirect("../obtenerExamenes.jsp");
    }
%>
<html lang="es">
    <head>
        <title>Examen</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="../imagenes/icon.ico" />
        <script>

            function evaluar()
            {
                var aciertos = 0;
                var c1 = 0; <%-- habilidad matematica / habilidad verbal 1 --%>
                var c2 = 0; <%-- habilidad verbal / habilidad matematica 2 --%>
                var c3 = 0; <%-- matematicas / español 3 --%>
                var c4 = 0; <%-- español / matematicas 4--%>
                var c5 = 0; <%-- historia/ geografia5 --%>
                var c6 = 0; <%-- geografia / biologia6 --%>
                var c7 = 0; <%-- formacion / quimica 7--%>
                var c8 = 0; <%-- biologia / fisica 8--%>
                var c9 = 0; <%-- fisica/ historia9 --%>
                var c10 = 0; <%-- quimica / forma10 --%>

                if (document.getElementById(" cuatroo 1 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" doos 2 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" trees 3 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" cuatroo 4 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" unoo 5 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" trees 6 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" trees 7 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" unoo 8 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" cuatroo 9 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" cincoo 10 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" cuatroo 11 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" cuatroo 12 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" trees 13 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" cincoo 14 ").checked === true) {
                    aciertos++;
                    c2++;
                }
                if (document.getElementById(" doos 15 ").checked === true) {
                    aciertos++;
                    c2++;
                }

                if (document.getElementById(" cincoo 16 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" cuatroo 17 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" unoo 18 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" cincoo 19 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" unoo 20 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" cuatroo 21 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" unoo 22 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" unoo 23 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" doos 24 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" cuatroo 25 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" doos 26 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" trees 27 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" trees 28 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" cuatroo 29 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" trees 30 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" cuatroo 31 ").checked === true) {
                    aciertos++;
                    c1++;
                }

                if (document.getElementById(" cuatroo 32 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" cincoo 33 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" doos 34 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" cincoo 35 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" cincoo 36 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" cincoo 37 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" trees 38 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" trees 39 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" unoo 40 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" cincoo 41 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" cuatroo 42 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" cuatroo 43 ").checked === true) {
                    aciertos++;
                    c4++;
                }

                if (document.getElementById(" cincoo 44 ").checked === true) {
                    aciertos++;
                    c3++;
                }

                if (document.getElementById(" unoo 45 ").checked === true) {
                    aciertos++;
                    c3++;
                }

                if (document.getElementById(" trees 46 ").checked === true) {
                    aciertos++;
                    c3++;
                }

                if (document.getElementById(" trees 47 ").checked === true) {
                    aciertos++;
                    c3++;
                }

                if (document.getElementById(" cincoo 48 ").checked === true) {
                    aciertos++;
                    c3++;
                }

                if (document.getElementById(" unoo 49 ").checked === true) {
                    aciertos++;
                    c3++;
                }

                if (document.getElementById(" trees 50 ").checked === true) {
                    aciertos++;
                    c3++;
                }

                if (document.getElementById(" cincoo 51 ").checked === true) {
                    aciertos++;
                    c3++;
                    c3++;
                }

                if (document.getElementById(" cincoo 52 ").checked === true) {
                    aciertos++;
                    c3++;
                }

                if (document.getElementById(" doos 53 ").checked === true) {
                    aciertos++;
                    c3++;
                }

                if (document.getElementById(" unoo 54 ").checked === true) {
                    aciertos++;
                    c3++;
                }

                if (document.getElementById(" unoo 55 ").checked === true) {
                    aciertos++;
                    c3++;
                }

                if (document.getElementById(" cincoo 56 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" trees 57 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" unoo 58 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" cincoo 59 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" unoo 60 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" trees 61 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" trees 62 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" unoo 63 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" unoo 64 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" cincoo 65 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" doos 66 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" trees 67 ").checked === true) {
                    aciertos++;
                    c9++;
                }

                if (document.getElementById(" cuatroo 68 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" trees 69 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" cuatroo 70 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" doos 71 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" doos 72 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" cincoo 73 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" cuatroo 74 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" cuatroo 75 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" unoo 76 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" cincoo 77 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" trees 78 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" doos 79 ").checked === true) {
                    aciertos++;
                    c5++;
                }

                if (document.getElementById(" trees 80 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" doos 81 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" cuatroo 82 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" unoo 83 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" doos 84 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" trees 85 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" cincoo 86 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" trees 87 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" trees 88 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" trees 89 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" trees 90 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" cuatroo 91 ").checked === true) {
                    aciertos++;
                    c10++;
                }

                if (document.getElementById(" cuatroo 92 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" trees 93 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" trees 94 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" doos 95 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" unoo 96 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" trees 97 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" cuatroo 98 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" cincoo 99 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" cuatroo 100 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" trees 101 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" cuatroo 102 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" cuatroo 103 ").checked === true) {
                    aciertos++;
                    c6++;
                }

                if (document.getElementById(" doos 104 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById(" unoo 105 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById(" unoo 106 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById(" cincoo 107 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById(" cincoo 108 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById(" cuatroo 109 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById(" unoo 110 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById(" doos 111 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById("  cuatroo 112 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById("  doos    113 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById("  cuatroo 114 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById("  doos    115 ").checked === true) {
                    aciertos++;
                    c8++;
                }

                if (document.getElementById("  doos    116 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                if (document.getElementById("  unoo    117 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                if (document.getElementById("  unoo    118 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                if (document.getElementById("  doos    119 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                if (document.getElementById("  trees   120 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                if (document.getElementById("  cuatroo 121 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                if (document.getElementById("  unoo    122 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                if (document.getElementById("  cincoo  123 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                if (document.getElementById("  cuatroo 124 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                if (document.getElementById("  doos    125 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                if (document.getElementById("  cuatroo 126 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                if (document.getElementById("  unoo    127 ").checked === true) {
                    aciertos++;
                    c7++;
                }

                location.href = "../verificaTipoExamen.jsp?t="+ aciertos + "&c1="+ c1 + "&c2="+ c2 + "&c3="+ c3 + "&c4="+ c4 + "&c5="+ c5 + "&c6="+ c6 + "&c7="+ c7 + "&c8="+ c8+ "&c9="+ c9 + "&c10="+ c10;

            }
        </script>
        <style>
            @keyframes atenuar {
                from { opacity: 0; background-color: whitesmoke;}
                to   { opacity: 1; background-color: white;}
                /*
                0% {
                    transform: scale(0);
                    border-radius: 100%;
                  }
                  100% {
                    transform: scale(1);
                  }
                    from { opacity: 0; background-color: whitesmoke;}
                to   { opacity: 1; background-color: white;}
                */
            }
            body
            {
                background-color: white;
                align-content: center;
                font-family: Arial;
                margin:0;
                animation-duration: 1.5s;
                animation-name: atenuar;

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
                font-color: gray;
                font-size: 20px;
                text-align: left;
                margin-left: 50px;
                margin-right: 50px;
                margin-top: 10px;
                /*  height: 430px;*/
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
            }

            #opc{
                clear: both;
                margin: 0 50px;
            }

            label {
                width: 700px;
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
                user-select: none;

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
        <div style="background-color: #0288D1; font-color: white; font-size: 50px; text-align: center; color: white;"><br><br>Prueba tipo examen<br><br><br>
        </div>
        <div id="contenedor" style="color: black;">
            <p style="font-size: 35px; text-align: center; color: #0288D1;">Habilidad Matematica</p>
            <div class="radioex" >
                En una carrera. Juan da a Pedro una ventaja de 15 metros Si Juan corre a una
                velocidad de 8 m/s y Pedro corre a 7 m/s. ¿A qué distancia del lugar de arranque de
                Pedro lo alcanzara Juan?.
                <br/>
                <div id="opc"><input  type="radio"  name="pregunta1" id="unoo 1 "  value="A"/><label for="unoo 1 "> 15m </label></div>
                <div id="opc"><input  type="radio" name="pregunta1" id=" doos 1 "  value="B"/><label for=" doos 1 "> 45m </label></div>
                <div id="opc"><input  type="radio" name="pregunta1" id=" trees 1 "  value="C"/><label for=" trees 1 "> 75m </label></div>
                <div id="opc"><input  type="radio" name="pregunta1" id=" cuatroo 1 "  value="D"/><label for=" cuatroo 1 "> 105m </label></div>
                <div id="opc"><input  type="radio" name="pregunta1" id=" cincoo 1 "  value="El"/><label for=" cincoo 1 "> 120m </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                <br>
                Un auto corre a velocidad promedio de 90 km/h durante 4 horas y media. y otro lo hace
                a 40 km/h durante 10 horas y cuarto
                <br/>
                <div id="opc"><input  type="radio" name="preg 2 " id=" unoo 2 "  value=" a "><label for=" unoo 2 "> Los dos recorren igual distancia </label></div>
                <div id="opc"><input  type="radio" name="preg 2 " id=" doos 2 "  value=" b "><label for=" doos 2 "> El segundo recorre poco mas que el primero </label></div>
                <div id="opc"><input  type="radio" name="preg 2 " id=" trees 2 "  value=" c "><label for=" trees 2 "> El primero recorre poco más que el segundo </label></div>
                <div id="opc"><input  type="radio" name="preg 2 " id=" cuatroo 2 "  value=" d "><label for=" cuatroo 2 "> El primero recorre mucho menos que el segundo </label></div>
                <div id="opc"><input  type="radio" onclick="function2()" name="preg 2 " id=" cincoo 2 "  value=" e "><label for=" cincoo 2 "> El segundo recorre mucho menos que el primero </label></div>
            </div>   
            <br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                Si por efecto del desajuste económico lo que costaba 2,000 cuesta ahora 2,820 decimos que el porcentaje aumento de:<br/>
                <div id="opc"><input  type="radio" name="preg 3 " id=" unoo 3 "  value=" a "><label for=" unoo 3 "> 820% </label></div>
                <div id="opc"><input  type="radio" onclick="function3()" name="preg 3 " id=" doos 3 "  value=" b "><label for=" doos 3 "> 410% </label></div>
                <div id="opc"><input  type="radio" name="preg 3 " id=" trees 3 "  value=" c "><label for=" trees 3 "> 41% </label></div>
                <div id="opc"><input  type="radio" name="preg 3 " id=" cuatroo 3 "  value=" d "><label for=" cuatroo 3 "> 82% </label></div>
                <div id="opc"><input  type="radio" name="preg 3 " id=" cincoo 3 "  value=" e "><label for=" cincoo 3 "> 8.20% </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                ¿Cuántos litros hay en un metro cúbico?
                <br/>
                <div id="opc"><input  type="radio" name="preg 4 " id=" unoo 4 "  value=" a "><label for=" unoo 4 "> 1X10 </label></div>
                <div id="opc"><input  type="radio" name="preg 4 " id=" doos 4 "  value=" b "><label for=" doos 4 "> 1x10 1 </label></div>
                <div id="opc"><input  type="radio" name="preg 4 " id=" trees 4 "  value=" c "><label for=" trees 4 "> 1x10 2 </label></div>
                <div id="opc"><input  type="radio" name="preg 4 " id=" cuatroo 4 "  value=" d "><label for=" cuatroo 4 "> 1x10 3 </label></div>
                <div id="opc"><input  type="radio" name="preg 4 " id=" cincoo 4 "  value=" e "><label for=" cincoo 4 "> 1x10 4 </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >Si hay una relacion directa entre cada valor de B y cada valor de A y cuando B=6 A=30
                ¿Cuánto valdra A, si B vale 10?
                <br/>
                <div id="opc"><input  type="radio" name="preg 5 " id=" unoo 5 "  value=" a "><label for=" unoo 5 "> 2 </label></div>
                <div id="opc"><input  type="radio" name="preg 5 " id=" doos 5 "  value=" b "><label for=" doos 5 "> 12 </label></div>
                <div id="opc"><input  type="radio" name="preg 5 " id=" trees 5 "  value=" c "><label for=" trees 5 "> 24 </label></div>
                <div id="opc"><input  type="radio" name="preg 5 " id=" cuatroo 5 "  value=" d "><label for=" cuatroo 5 "> 50 </label></div>
                <div id="opc"><input  type="radio" name="preg 5 " id=" cincoo 5 "  value=" e "><label for=" cincoo 5 "> 100 </label></div>
            </div>    
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Escoja la opción que da continuidad a la serie 10,6,8,13,16,12...<br/>
                <div id="opc"><input  type="radio" name="preg 6 " id=" unoo 6 "  value=" a "><label for=" unoo 6 "> 14,10,13,8 </label></div>
                <div id="opc"><input  type="radio" name="preg 6 " id=" doos 6 "  value=" b "><label for=" doos 6 "> 5,10,15,12 </label></div>
                <div id="opc"><input  type="radio" name="preg 6 " id=" trees 6 "  value=" c "><label for=" trees 6 "> 14,19,22,18 </label></div>
                <div id="opc"><input  type="radio" name="preg 6 " id=" cuatroo 6 "  value=" d "><label for=" cuatroo 6 "> 18,24,32,40 </label></div>
                <div id="opc"><input  type="radio" name="preg 6 " id=" cincoo 6 "  value=" e "><label for=" cincoo 6 "> 9,11,17,8 </label></div>
            </div>            <br>
            <br><br><br><br><br>
            <div class="radioex" >
                ¿Cuales son los lados de un rectangulo cuya area es la mitad del area de un cuadrado de 100cm de lado y cuyo perimetro es igual al perimetro del cuadrado menos 100 cm ?<br/>
                <div id="opc"><input  type="radio" name="preg 7 " id=" unoo 7 "  value=" a "><label for=" unoo 7 "> 40 y 50 cm </label></div>
                <div id="opc"><input  type="radio" name="preg 7 " id=" doos 7 "  value=" b "><label for=" doos 7 "> 50 y 50 cm </label></div>
                <div id="opc"><input  type="radio" name="preg 7 " id=" trees 7 "  value=" c "><label for=" trees 7 "> 50 y 100cm </label></div>
                <div id="opc"><input  type="radio" name="preg 7 " id=" cuatroo 7 "  value=" d "><label for=" cuatroo 7 "> 50 y 150 cm </label></div>
                <div id="opc"><input  type="radio" name="preg 7 " id=" cincoo 7 "  value=" e "><label for=" cincoo 7 "> 100 y 150 cm </label></div>
            </div> 
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Si una cuerda AB de un circulo de radio r esta situada a la distancia d del centro del circulo entonces:_____________________ <br/>
                <div id="opc"><input  type="radio" name="preg 8 " id=" unoo 8 "  value=" a "><label for=" unoo 8 "> La cuerda AB es menor que el diametro </label></div>
                <div id="opc"><input  type="radio" name="preg 8 " id=" doos 8 "  value=" b "><label for=" doos 8 "> Cualquier cuerda de longitud más cercana del centro del circulo </label></div>
                <div id="opc"><input  type="radio" name="preg 8 " id=" trees 8 "  value=" c "><label for=" trees 8 "> Si d disminuye, AB disminuye </label></div>
                <div id="opc"><input  type="radio" name="preg 8 " id=" cuatroo 8 "  value=" d "><label for=" cuatroo 8 "> La cuerda AB es mayor que él diametro del circulo </label></div>
                <div id="opc"><input  type="radio" name="preg 8 " id=" cincoo 8 "  value=" e "><label for=" cincoo 8 "> Si AB aumenta, d aumenta </label></div>
            </div>   
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                ¿En que lugar de la recta numerica queda el "Punto que representa al número 16/12" ?<br/>
                <center><img src="imgCuest/Captura.png"></center>
                <div id="opc"><input  type="radio" name="preg 9 " id=" unoo 9 "  value=" a "><label for=" unoo 9 "> P y Q  </label></div>
                <div id="opc"><input  type="radio" name="preg 9 " id=" doos 9 "  value=" b "><label for=" doos 9 "> Q y R </label></div>
                <div id="opc"><input  type="radio" name="preg 9 " id=" trees 9 "  value=" c "><label for=" trees 9 "> S y R </label></div>
                <div id="opc"><input  type="radio" name="preg 9 " id=" cuatroo 9 "  value=" d "><label for=" cuatroo 9 "> S y T </label></div>
                <div id="opc"><input  type="radio" name="preg 9 " id=" cincoo 9 "  value=" e "><label for=" cincoo 9 "> T y U </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                64 cubos, que miden 3cm de arista cada uno forman un cubo mayor cuyo volumen es igual a: <br/>
                <div id="opc"><input  type="radio" name="preg 10 " id=" unoo 10 "  value=" a "><label for=" unoo 10 "> 64 cm3 </label></div>
                <div id="opc"><input  type="radio" name="preg 10 " id=" doos 10 "  value=" b "><label for=" doos 10 "> 92cm3 </label></div>
                <div id="opc"><input  type="radio" name="preg 10 " id=" trees 10 "  value=" c "><label for=" trees 10 "> 256cm3 </label></div>
                <div id="opc"><input  type="radio" name="preg 10 " id=" cuatroo 10 "  value=" d "><label for=" cuatroo 10 "> 1,024cm3 </label></div>
                <div id="opc"><input  type="radio" name="preg 10 " id=" cincoo 10 "  value=" e "><label for=" cincoo 10 "> 1,728cm3 </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Si se toma un cuadrado de papel de 2m de lado y se dobla horizontalmente en dos; al rectangulo que resulta se le dobla por la mitad; el resultado se vuelve a doblar en dos y se repita la opración otras 3 veces (total 6 dobleces).
                ¿Que se encontrara marcado al desplegar el papel?<br/>
                <div id="opc"><input  type="radio" name="preg 11 " id=" unoo 11 "  value=" a "><label for=" unoo 11 "> 16 rectangulos </label></div>
                <div id="opc"><input  type="radio" name="preg 11 " id=" doos 11 "  value=" b "><label for=" doos 11 "> 32 cuadrados </label></div>
                <div id="opc"><input  type="radio" name="preg 11 " id=" trees 11 "  value=" c "><label for=" trees 11 "> 32 rectangulos </label></div>
                <div id="opc"><input  type="radio" name="preg 11 " id=" cuatroo 11 "  value=" d "><label for=" cuatroo 11 "> 64 cuadrados </label></div>
                <div id="opc"><input  type="radio" name="preg 11 " id=" cincoo 11 "  value=" e "><label for=" cincoo 11 "> 64 rectangulos </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Si en la siguiente digura RO 90 m, RT 60m y SO 75m.
                ¿Cuál es la longitud de ST?<br/>
                <center><img src="imgCuest/Captura1.png"></center>
                <div id="opc"><input  type="radio" name="preg 12 " id=" unoo 12 "  value=" a "><label for=" unoo 12 "> 10m </label></div>
                <div id="opc"><input  type="radio" name="preg 12 " id=" doos 12 "  value=" b "><label for=" doos 12 "> 30m </label></div>
                <div id="opc"><input  type="radio" name="preg 12 " id=" trees 12 "  value=" c "><label for=" trees 12 "> 40m </label></div>
                <div id="opc"><input  type="radio" name="preg 12 " id=" cuatroo 12 "  value=" d "><label for=" cuatroo 12 "> 45m </label></div>
                <div id="opc"><input  type="radio" name="preg 12 " id=" cincoo 12 "  value=" e "><label for=" cincoo 12 "> 60m </label></div>

            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Elija la opcion que contiene el número faltante en la tercera serie horizontal:<br/>
                <center><img src="imgCuest/Captura2.png"></center>
                <div id="opc"><input  type="radio" name="preg 13 " id=" unoo 13 "  value=" a "><label for=" unoo 13 "> 8 </label></div>
                <div id="opc"><input  type="radio" name="preg 13 " id=" doos 13 "  value=" b "><label for=" doos 13 "> 166 </label></div>
                <div id="opc"><input  type="radio" name="preg 13 " id=" trees 13 "  value=" c "><label for=" trees 13 "> 56 </label></div>
                <div id="opc"><input  type="radio" name="preg 13 " id=" cuatroo 13 "  value=" d "><label for=" cuatroo 13 "> 64 </label></div>
                <div id="opc"><input  type="radio" name="preg 13 " id=" cincoo 13 "  value=" e "><label for=" cincoo 13 "> 256 </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                El valor de G varia en proporcion directa con el de L; cuando G = 18 , L = 6.
                ¿Cuánto sera el valor de G si L = 14? <br/>
                <div id="opc"><input  type="radio" name="preg 14 " id=" unoo 14 "  value=" a "><label for=" unoo 14 "> 12 </label></div>
                <div id="opc"><input  type="radio" name="preg 14 " id=" doos 14 "  value=" b "><label for=" doos 14 "> 20 </label></div>
                <div id="opc"><input  type="radio" name="preg 14 " id=" trees 14 "  value=" c "><label for=" trees 14 "> 36 </label></div>
                <div id="opc"><input  type="radio" name="preg 14 " id=" cuatroo 14 "  value=" d "><label for=" cuatroo 14 "> 48 </label></div>
                <div id="opc"><input  type="radio" name="preg 14 " id=" cincoo 14 "  value=" e "><label for=" cincoo 14 "> 42 </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                El valor de R varía en proporción directa con el de T. Cuando R es 12 y T es 60. ¿cuál será el valor de R si T es 100?<br/>
                <div id="opc"><input  type="radio" name="preg 15 " id=" unoo 15 "  value=" a "><label for=" unoo 15 "> 12 </label></div>
                <div id="opc"><input  type="radio" name="preg 15 " id=" doos 15 "  value=" b "><label for=" doos 15 "> 20 </label></div>
                <div id="opc"><input  type="radio" name="preg 15 " id=" trees 15 "  value=" c "><label for=" trees 15 "> 36 </label></div>
                <div id="opc"><input  type="radio" name="preg 15 " id=" cuatroo 15 "  value=" d "><label for=" cuatroo 15 "> 8 </label></div>
                <div id="opc"><input  type="radio" name="preg 15 " id=" cincoo 15 "  value=" e "><label for=" cincoo 15 "> 50 </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>
            <p style="font-size: 35px; text-align: center; color: #0288D1;">Habilidad Verbal</p>
            <div class="radioex" >
                ¿Cuál de las siguientes noticias dichas en el noticiero de la tarde puede ser verdad?<br/>
                <div id="opc"><input  type="radio" name="preg 16 " id=" unoo 16 "  value=" a "><label for=" unoo 16 "> Que suicidaron a un comerciante </label></div>
                <div id="opc"><input  type="radio" name="preg 16 " id=" doos 16 "  value=" b "><label for=" doos 16 "> Que no hacía frio ni calor pues estamos a 0°C </label></div>
                <div id="opc"><input  type="radio" name="preg 16 " id=" trees 16 "  value=" c "><label for=" trees 16 "> Que pondran un robot en la superrficie de Marte </label></div>
                <div id="opc"><input  type="radio" name="preg 16 " id=" cuatroo 16 "  value=" d "><label for=" cuatroo 16 "> Que sintetizo un antibiotico contra el virus Satán, de las computadoras </label></div>
                <div id="opc"><input  type="radio" name="preg 16 " id=" cincoo 16 "  value=" e "><label for=" cincoo 16 "> Que en la ultima manifestación, en el zócalo habia más gente que la que cabia </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Escoja la opción ordenada de manera creciente:<br/>
                <div id="opc"><input  type="radio" name="preg 17 " id=" unoo 17 "  value=" a "><label for=" unoo 17 "> 5,4,3,1,2 </label></div>
                <div id="opc"><input  type="radio" name="preg 17 " id=" doos 17 "  value=" b "><label for=" doos 17 "> 2,1,5,4,3 </label></div>
                <div id="opc"><input  type="radio" name="preg 17 " id=" trees 17 "  value=" c "><label for=" trees 17 "> 5,4,3,2,1 </label></div>
                <div id="opc"><input  type="radio" name="preg 17 " id=" cuatroo 17 "  value=" d "><label for=" cuatroo 17 "> 1,4,5,3,2 </label></div>
                <div id="opc"><input  type="radio" name="preg 17 " id=" cincoo 17 "  value=" e "><label for=" cincoo 17 "> 5,4,3,1,2 </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Algunos mamíferos son animales herbívoros, ningún animal herbívoro como carne<br/>
                <div id="opc"><input  type="radio" name="preg 18 " id=" unoo 18 "  value=" a "><label for=" unoo 18 "> Algunos animales mamiferos no comen carne  </label></div>
                <div id="opc"><input  type="radio" name="preg 18 " id=" doos 18 "  value=" b "><label for=" doos 18 "> Ningun animal mamifero come carne </label></div>
                <div id="opc"><input  type="radio" name="preg 18 " id=" trees 18 "  value=" c "><label for=" trees 18 "> Algunos animales no son herbivoros </label></div>
                <div id="opc"><input  type="radio" name="preg 18 " id=" cuatroo 18 "  value=" d "><label for=" cuatroo 18 "> Todo animal que come carne es mamifero </label></div>
                <div id="opc"><input  type="radio" name="preg 18 " id=" cincoo 18 "  value=" e "><label for=" cincoo 18 "> Los animales herbivoros no son mamiferos </label></div>

            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Señale la opción que ordena mejor las siguientes palabras:         
                CUEVA 1 JUNTO 2 LA 3 A 4 A 5 ALIMAÑA 6 SU 7 HALLO 8<br/>
                <div id="opc"><input  type="radio" name="preg 19 " id=" unoo 19 "  value=" a "><label for=" unoo 19 "> 5,4,3,1,2 </label></div>
                <div id="opc"><input  type="radio" name="preg 19 " id=" doos 19 "  value=" b "><label for=" doos 19 "> 2,1,5,4,3 </label></div>
                <div id="opc"><input  type="radio" name="preg 19 " id=" trees 19 "  value=" c "><label for=" trees 19 "> 5,4,3,2,1 </label></div>
                <div id="opc"><input  type="radio" name="preg 19 " id=" cuatroo 19 "  value=" d "><label for=" cuatroo 19 "> 1,4,5,3,2 </label></div>
                <div id="opc"><input  type="radio" name="preg 19 " id=" cincoo 19 "  value=" e "><label for=" cincoo 19 "> 8,4,3,6,2,7,1,5 </label></div>

            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                La hermana de la hija de la hermana de la madre de A es:<br/>
                <div id="opc"><input  type="radio" name="preg 20 " id=" unoo 20 "  value=" a "><label for=" unoo 20 "> La prima hermana de A </label></div>
                <div id="opc"><input  type="radio" name="preg 20 " id=" doos 20 "  value=" b "><label for=" doos 20 "> La prima segunda de A </label></div>
                <div id="opc"><input  type="radio" name="preg 20 " id=" trees 20 "  value=" c "><label for=" trees 20 "> La tia de A </label></div>
                <div id="opc"><input  type="radio" name="preg 20 " id=" cuatroo 20 "  value=" d "><label for=" cuatroo 20 "> La sobrina de A </label></div>
                <div id="opc"><input  type="radio" name="preg 20 " id=" cincoo 20 "  value=" e "><label for=" cincoo 20 "> La hermana de A </label></div>

            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                ¿Cuál es el significado del mensaje 1234567283972 si conocemos las claves:     
                SOMBRERO = 82345632, OSMOSIS = 2832898 Y CHICO = 71972<br/>
                <div id="opc"><input  type="radio" name="preg 21 " id=" unoo 21 "  value=" a "><label for=" unoo 21 "> hombre moroso </label></div>
                <div id="opc"><input  type="radio" name="preg 21 " id=" doos 21 "  value=" b "><label for=" doos 21 "> ese oso hermoso </label></div>
                <div id="opc"><input  type="radio" name="preg 21 " id=" trees 21 "  value=" c "><label for=" trees 21 "> el mico bombero </label></div>
                <div id="opc"><input  type="radio" name="preg 21 " id=" cuatroo 21 "  value=" d "><label for=" cuatroo 21 "> hombre cosmico </label></div>
                <div id="opc"><input  type="radio" name="preg 21 " id=" cincoo 21 "  value=" e "><label for=" cincoo 21 "> comico mistico </label></div>


            </div>
            <br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                Escoja la secuencia de los fragmentos que muestre mayor orden. lógica y elegancia:<br/>
                <div id="opc"><input  type="radio" name="preg 22 " id=" unoo 22 "  value=" a "><label for=" unoo 22 "> 1,2,3,4,5 </label></div>
                <div id="opc"><input  type="radio" name="preg 22 " id=" doos 22 "  value=" b "><label for=" doos 22 "> 2,5,1,3,4 </label></div>
                <div id="opc"><input  type="radio" name="preg 22 " id=" trees 22 "  value=" c "><label for=" trees 22 "> 3,5,2,4,1 </label></div>
                <div id="opc"><input  type="radio" name="preg 22 " id=" cuatroo 22 "  value=" d "><label for=" cuatroo 22 "> 4,2,1,3,5 </label></div>
                <div id="opc"><input  type="radio" name="preg 22 " id=" cincoo 22 "  value=" e "><label for=" cincoo 22 "> 5,1,2,4,3 </label></div>

            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Antónimo de decrecer<br/>
                <div id="opc"><input  type="radio" name="preg 23 " id=" unoo 23 "  value=" a "><label for=" unoo 23 "> Incrementar </label></div>
                <div id="opc"><input  type="radio" name="preg 23 " id=" doos 23 "  value=" b "><label for=" doos 23 "> Fomentar </label></div>
                <div id="opc"><input  type="radio" name="preg 23 " id=" trees 23 "  value=" c "><label for=" trees 23 "> Desarrollar </label></div>
                <div id="opc"><input  type="radio" name="preg 23 " id=" cuatroo 23 "  value=" d "><label for=" cuatroo 23 "> Progresar  </label></div>
                <div id="opc"><input  type="radio" name="preg 23 " id=" cincoo 23 "  value=" e "><label for=" cincoo 23 "> Ampliar </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Señale la opción que describe mejor el orden de las siguientes frases:<br/>
                <div id="opc"><input  type="radio" name="preg 24 " id=" unoo 24 "  value=" a "><label for=" unoo 24 "> 2,1,7,3,4,6,5 </label></div>
                <div id="opc"><input  type="radio" name="preg 24 " id=" doos 24 "  value=" b "><label for=" doos 24 "> 4,3,6,1,7,2,5 </label></div>
                <div id="opc"><input  type="radio" name="preg 24 " id=" trees 24 "  value=" c "><label for=" trees 24 "> 3,2,5,1,6,4,7 </label></div>
                <div id="opc"><input  type="radio" name="preg 24 " id=" cuatroo 24 "  value=" d "><label for=" cuatroo 24 "> 3,4,5,1,6,2,7 </label></div>
                <div id="opc"><input  type="radio" name="preg 24 " id=" cincoo 24 "  value=" e "><label for=" cincoo 24 "> 3,6,1,5,4,1,7 </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Todos los gatos son felinos. Algunos felinos son salvajes. Luego,<br/>
                <div id="opc"><input  type="radio" name="preg 25 " id=" unoo 25 "  value=" a "><label for=" unoo 25 "> Todos los gatos son salvajes </label></div>
                <div id="opc"><input  type="radio" name="preg 25 " id=" doos 25 "  value=" b "><label for=" doos 25 "> Algunos animales son felinos </label></div>
                <div id="opc"><input  type="radio" name="preg 25 " id=" trees 25 "  value=" c "><label for=" trees 25 "> Todos los felinos son salvajes </label></div>
                <div id="opc"><input  type="radio" name="preg 25 " id=" cuatroo 25 "  value=" d "><label for=" cuatroo 25 "> Algunos gatos son salvajes </label></div>
                <div id="opc"><input  type="radio" name="preg 25 " id=" cincoo 25 "  value=" e "><label for=" cincoo 25 "> Todos los salvajes son felinos </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Jalil es árabe y afirma que todos los árabes mienten. En consecuencia: 1. Jalil miente si dice la verdad 2. Luego Jalil<br/>
                <div id="opc"><input  type="radio" name="preg 26 " id=" unoo 26 "  value=" a "><label for=" unoo 26 "> Nunca miente  </label></div>
                <div id="opc"><input  type="radio" name="preg 26 " id=" doos 26 "  value=" b "><label for=" doos 26 "> Siempre dice la verdad </label></div>
                <div id="opc"><input  type="radio" name="preg 26 " id=" trees 26 "  value=" c "><label for=" trees 26 "> Solo dice la verdad cuando no miente </label></div>
                <div id="opc"><input  type="radio" name="preg 26 " id=" cuatroo 26 "  value=" d "><label for=" cuatroo 26 "> Dice la verdad si miente  </label></div>
                <div id="opc"><input  type="radio" name="preg 26 " id=" cincoo 26 "  value=" e "><label for=" cincoo 26 "> Solo dice mentiras cuando no dice la verdad </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                PROMOVER – REDUCIR es lo mismo que<br/>
                <div id="opc"><input  type="radio" name="preg 27 " id=" unoo 27 "  value=" a "><label for=" unoo 27 "> inducir-producir </label></div>
                <div id="opc"><input  type="radio" name="preg 27 " id=" doos 27 "  value=" b "><label for=" doos 27 "> fomentar-limitar </label></div>
                <div id="opc"><input  type="radio" name="preg 27 " id=" trees 27 "  value=" c "><label for=" trees 27 "> impulsar-auspiciar </label></div>
                <div id="opc"><input  type="radio" name="preg 27 " id=" cuatroo 27 "  value=" d "><label for=" cuatroo 27 "> coordinar-controlar </label></div>
                <div id="opc"><input  type="radio" name="preg 27 " id=" cincoo 27 "  value=" e "><label for=" cincoo 27 "> activar-ajustar </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                La asistencia a las salas de cine ha disminuido actualmente debido a la publicidad generada_________ vídeo clubes de cine caseros, dando origen___________ algunas salas cierren por falta de público.<br/>
                <div id="opc"><input  type="radio" name="preg 28 " id=" unoo 28 "  value=" a "><label for=" unoo 28 "> para cuantos- solo a </label></div>
                <div id="opc"><input  type="radio" name="preg 28 " id=" doos 28 "  value=" b "><label for=" doos 28 "> solo por-en tanto </label></div>
                <div id="opc"><input  type="radio" name="preg 28 " id=" trees 28 "  value=" c "><label for=" trees 28 "> por los-a que </label></div>
                <div id="opc"><input  type="radio" name="preg 28 " id=" cuatroo 28 "  value=" d "><label for=" cuatroo 28 "> con los-de que </label></div>
                <div id="opc"><input  type="radio" name="preg 28 " id=" cincoo 28 "  value=" e "><label for=" cincoo 28 "> en los- para que </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Marque el significado del siguiente diagrama<br/>
                <center><img src="imgCuest/Captura3.png"></center>
                <div id="opc"><input  type="radio" name="preg 29 " id=" unoo 29 "  value=" a "><label for=" unoo 29 "> algunos mexicanos no son americanos </label></div>
                <div id="opc"><input  type="radio" name="preg 29 " id=" doos 29 "  value=" b "><label for=" doos 29 "> Ningún americano es mexicano </label></div>
                <div id="opc"><input  type="radio" name="preg 29 " id=" trees 29 "  value=" c "><label for=" trees 29 "> Todos los americanos son mexicanos </label></div>
                <div id="opc"><input  type="radio" name="preg 29 " id=" cuatroo 29 "  value=" d "><label for=" cuatroo 29 "> Ningun mexicano es americano </label></div>
                <div id="opc"><input  type="radio" name="preg 29 " id=" cincoo 29 "  value=" e "><label for=" cincoo 29 "> Todos los mexicanos son americanos </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                ¿Cuál de las siguientes afirmaciones puede considerarse como una opinión?<br/>
                <div id="opc"><input  type="radio" name="preg 30 " id=" unoo 30 "  value=" a "><label for=" unoo 30 "> La música de Beethoven es más moderna que la de Hayden  </label></div>
                <div id="opc"><input  type="radio" name="preg 30 " id=" doos 30 "  value=" b "><label for=" doos 30 "> En la pintura de  Picasso hay una época cubista </label></div>
                <div id="opc"><input  type="radio" name="preg 30 " id=" trees 30 "  value=" c "><label for=" trees 30 "> Los brasileños son más alegres que los alemanes </label></div>
                <div id="opc"><input  type="radio" name="preg 30 " id=" cuatroo 30 "  value=" d "><label for=" cuatroo 30 "> En la ciudad de Los Ángeles viven más mexicanos que en Tlaxcala </label></div>
                <div id="opc"><input  type="radio" name="preg 30 " id=" cincoo 30 "  value=" e "><label for=" cincoo 30 "> El hierro es más duro que el aluminio </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Siguiendo el razonamiento: ladrillo-pared-habitación. Elige la opción que corresponde<br/>
                <div id="opc"><input  type="radio" name="preg 31 " id=" unoo 31 "  value=" a "><label for=" unoo 31 "> Electrón-protón-átomo </label></div>
                <div id="opc"><input  type="radio" name="preg 31 " id=" doos 31 "  value=" b "><label for=" doos 31 "> Larva-pupa-crisálida </label></div>
                <div id="opc"><input  type="radio" name="preg 31 " id=" trees 31 "  value=" c "><label for=" trees 31 "> Planeta-estrella-galaxia </label></div>
                <div id="opc"><input  type="radio" name="preg 31 " id=" cuatroo 31 "  value=" d "><label for=" cuatroo 31 "> Átomo-molecula-compuesto </label></div>
                <div id="opc"><input  type="radio" name="preg 31 " id=" cincoo 31 "  value=" e "><label for=" cincoo 31 "> Nebulosa-constelación-estrella </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            
            <p style="font-size: 35px; text-align: center; color: #0288D1;">Matematicas</p>
            <div class="radioex" >
                Una alberca que tiene 50 metros de largo. 20 metros de ancho y una profundidad de 2 metros van a ser llenada hasta 3/4 de su capacidad. El volumen de agua que se requiere es de:<br/>
                <div id="opc"><input  type="radio" name="preg 32 " id=" unoo 32 "  value=" a "><label for=" unoo 32 "> 2,000 m3 </label></div>
                <div id="opc"><input  type="radio" name="preg 32 " id=" doos 32 "  value=" b "><label for=" doos 32 "> 1,750 m3 </label></div>
                <div id="opc"><input  type="radio" name="preg 32 " id=" trees 32 "  value=" c "><label for=" trees 32 "> 1,650 m3 </label></div>
                <div id="opc"><input  type="radio" name="preg 32 " id=" cuatroo 32 "  value=" d "><label for=" cuatroo 32 "> 1,500 m3 </label></div>
                <div id="opc"><input  type="radio" name="preg 32 " id=" cincoo 32 "  value=" e "><label for=" cincoo 32 "> 1,250 m3 </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Un ladrillo pesa I kilogramo, dentro del mismo material pero tres veces más ancho. tres veces más largo y tres veces más grueso ¿cuánto pesará?<br/>
                <div id="opc"><input  type="radio" name="preg 33 " id=" unoo 33 "  value=" a "><label for=" unoo 33 "> 3kg </label></div>
                <div id="opc"><input  type="radio" name="preg 33 " id=" doos 33 "  value=" b "><label for=" doos 33 "> 6kg </label></div>
                <div id="opc"><input  type="radio" name="preg 33 " id=" trees 33 "  value=" c "><label for=" trees 33 "> 9kg </label></div>
                <div id="opc"><input  type="radio" name="preg 33 " id=" cuatroo 33 "  value=" d "><label for=" cuatroo 33 "> 18kg </label></div>
                <div id="opc"><input  type="radio" name="preg 33 " id=" cincoo 33 "  value=" e "><label for=" cincoo 33 "> 27kg </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Pilar tiene tres lápices más que Mayra. El doble del número de lápices que tiene Mayra es igual al número de lápices que tiene Pilar. ¿Cuántos lápices tiene Mayra y cuántos tiene Pilar?<br/>
                <div id="opc"><input  type="radio" name="preg 34 " id=" unoo 34 "  value=" a "><label for=" unoo 34 "> 18,47 </label></div>
                <div id="opc"><input  type="radio" name="preg 34 " id=" doos 34 "  value=" b "><label for=" doos 34 "> 3,6 </label></div>
                <div id="opc"><input  type="radio" name="preg 34 " id=" trees 34 "  value=" c "><label for=" trees 34 "> 21,24 </label></div>
                <div id="opc"><input  type="radio" name="preg 34 " id=" cuatroo 34 "  value=" d "><label for=" cuatroo 34 "> 6,3 </label></div>
                <div id="opc"><input  type="radio" name="preg 34 " id=" cincoo 34 "  value=" e "><label for=" cincoo 34 "> 5,3 </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                ¿Cuál es el resultado de elevar (3p<sup>2</sup>q<sup>4</sup> - 6) al cuadrado<br/>
                <div id="opc"><input  type="radio" name="preg 35 " id=" unoo 35 "  value=" a "><label for=" unoo 35 "> 3p<sup>4</sup>q<sup>8</sup>- 6p<sup>2</sup>q<sup>4</sup> + 9  </label></div>
                <div id="opc"><input  type="radio" name="preg 35 " id=" doos 35 "  value=" b "><label for=" doos 35 "> 3p<sup>4</sup>q<sup>8</sup> - 12p<sup>2</sup>q<sup>4</sup> + 16 </label></div>
                <div id="opc"><input  type="radio" name="preg 35 " id=" trees 35 "  value=" c "><label for=" trees 35 "> 3p<sup></sup>q<sup>8</sup> - 18p<sup>2</sup>q<sup>4</sup>+ 36 </label></div>
                <div id="opc"><input  type="radio" name="preg 35 " id=" cuatroo 35 "  value=" d "><label for=" cuatroo 35 "> 9p<sup>4</sup>q<sup>8</sup>- 12p<sup>2</sup>q<sup>4</sup> + 12 </label></div>
                <div id="opc"><input  type="radio" name="preg 35 " id=" cincoo 35 "  value=" e "><label for=" cincoo 35 "> 9p<sup>4</sup>q<sup>8</sup> - 36p<sup>2</sup>q<sup>4</sup>+ 36 </label></div>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>            <div class="radioex" >
                Escoja la opción en que la frase: "Tres veces la mitad de a aumentada con el cuádruplo de b, todo ello al cubo" está escrita correctamente en notación matemática.<br/>
                <div id="opc"><input  type="radio" name="preg 36 " id=" unoo 36 "  value=" a "><label for=" unoo 36 "> 3(a/2+4b)<sup>3</sup> </label></div>
                <div id="opc"><input  type="radio" name="preg 36 " id=" doos 36 "  value=" b "><label for=" doos 36 "> (3a/2 + b/e)<sup>3</sup> </label></div>
                <div id="opc"><input  type="radio" name="preg 36 " id=" trees 36 "  value=" c "><label for=" trees 36 "> 3(1/2a+b/4)<sup>3</sup> </label></div>
                <div id="opc"><input  type="radio" name="preg 36 " id=" cuatroo 36 "  value=" d "><label for=" cuatroo 36 "> [3(aJ2 + b/4)] <sup>3</sup> </label></div>
                <div id="opc"><input  type="radio" name="preg 36 " id=" cincoo 36 "  value=" e "><label for=" cincoo 36 "> (3a/2 + 4b)<sup>3</sup> </label></div>
            </div><br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                Encuentra la distancia entre los puntos (2,7) y (4,2)<br/>
                <div id="opc"><input  type="radio" name="preg 37 " id=" unoo 37 "  value=" a "><label for=" unoo 37 "> Raíz de 15 </label></div>
                <div id="opc"><input  type="radio" name="preg 37 " id=" doos 37 "  value=" b "><label for=" doos 37 "> 4 </label></div>
                <div id="opc"><input  type="radio" name="preg 37 " id=" trees 37 "  value=" c "><label for=" trees 37 "> Raíz de 21 </label></div>
                <div id="opc"><input  type="radio" name="preg 37 " id=" cuatroo 37 "  value=" d "><label for=" cuatroo 37 "> 5 </label></div>
                <div id="opc"><input  type="radio" name="preg 37 " id=" cincoo 37 "  value=" e "><label for=" cincoo 37 "> Raíz de 29 </label></div>
            </div><br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                Cuál de las siguientes expresiones tendrá por resultado 1(uno)<br/>
                <div id="opc"><input  type="radio" name="preg 38 " id=" unoo 38 "  value=" a "><label for=" unoo 38 "> 32<sup>3</sup> - (31 x 32) </label></div>
                <div id="opc"><input  type="radio" name="preg 38 " id=" doos 38 "  value=" b "><label for=" doos 38 "> 32<sup>2</sup> - (32x 33) </label></div>
                <div id="opc"><input  type="radio" name="preg 38 " id=" trees 38 "  value=" c "><label for=" trees 38 "> 32<sup>2</sup> - (31 x 33) </label></div>
                <div id="opc"><input  type="radio" name="preg 38 " id=" cuatroo 38 "  value=" d "><label for=" cuatroo 38 "> 32<sup>2</sup> - (31 x 31) </label></div>
                <div id="opc"><input  type="radio" name="preg 38 " id=" cincoo 38 "  value=" e "><label for=" cincoo 38 "> 32<sup>2</sup> - (33x 33) </label></div>
            </div><br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                7/9 entre 7/4<br/>
                <div id="opc"><input  type="radio" name="preg 39 " id=" unoo 39 "  value=" a "><label for=" unoo 39 "> 9/4 </label></div>
                <div id="opc"><input  type="radio" name="preg 39 " id=" doos 39 "  value=" b "><label for=" doos 39 "> 28/9 </label></div>
                <div id="opc"><input  type="radio" name="preg 39 " id=" trees 39 "  value=" c "><label for=" trees 39 "> 4/9 </label></div>
                <div id="opc"><input  type="radio" name="preg 39 " id=" cuatroo 39 "  value=" d "><label for=" cuatroo 39 "> 7/63 </label></div>
                <div id="opc"><input  type="radio" name="preg 39 " id=" cincoo 39 "  value=" e "><label for=" cincoo 39 "> 9/63 </label></div>
            </div><br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                ¿Para qué valor de X tiene sentido la siguiente expresión? e<sup>2x</sup>=e<sup>3</sup><br/>
                <div id="opc"><input  type="radio" name="preg 40 " id=" unoo 40 "  value=" a "><label for=" unoo 40 "> x = 3/2 </label></div>
                <div id="opc"><input  type="radio" name="preg 40 " id=" doos 40 "  value=" b "><label for=" doos 40 "> x = 2/3 </label></div>
                <div id="opc"><input  type="radio" name="preg 40 " id=" trees 40 "  value=" c "><label for=" trees 40 "> x = 4/3 </label></div>
                <div id="opc"><input  type="radio" name="preg 40 " id=" cuatroo 40 "  value=" d "><label for=" cuatroo 40 "> x = 1/3 </label></div>
                <div id="opc"><input  type="radio" name="preg 40 " id=" cincoo 40 "  value=" e "><label for=" cincoo 40 "> x = 1/2 </label></div>
            </div><br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                Resolver el sistema de ecuaciones: <br>5a -8b = 2b <br>
                b+ a = 16<br/>
                <div id="opc"><input  type="radio" name="preg 41 " id=" unoo 41 "  value=" a "><label for=" unoo 41 "> a = 6 b =10 </label></div>
                <div id="opc"><input  type="radio" name="preg 41 " id=" doos 41 "  value=" b "><label for=" doos 41 "> a = - 6 b = - 10 </label></div>
                <div id="opc"><input  type="radio" name="preg 41 " id=" trees 41 "  value=" c "><label for=" trees 41 "> a = - 6 b =10 </label></div>
                <div id="opc"><input  type="radio" name="preg 41 " id=" cuatroo 41 "  value=" d "><label for=" cuatroo 41 "> a = 6 b = - 10 </label></div>
                <div id="opc"><input  type="radio" name="preg 41 " id=" cincoo 41 "  value=" e "><label for=" cincoo 41 "> a =10 b = 6 </label></div>
            </div><br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                Si se tienen dos triángulos isósceles opuestos por el vértice, cuyo ángulo menor es de 50grados. ¿de cuántos grados será cada uno de los ángulos restantes?<br/>
                <div id="opc"><input  type="radio" name="preg 42 " id=" unoo 42 "  value=" a "><label for=" unoo 42 "> 20° </label></div>
                <div id="opc"><input  type="radio" name="preg 42 " id=" doos 42 "  value=" b "><label for=" doos 42 "> 30° </label></div>
                <div id="opc"><input  type="radio" name="preg 42 " id=" trees 42 "  value=" c "><label for=" trees 42 "> 45° </label></div>
                <div id="opc"><input  type="radio" name="preg 42 " id=" cuatroo 42 "  value=" d "><label for=" cuatroo 42 "> 65° </label></div>
                <div id="opc"><input  type="radio" name="preg 42 " id=" cincoo 42 "  value=" e "><label for=" cincoo 42 "> 70° </label></div>
            </div><br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                17 mililitros pueden expresarse como:<br/>
                <div id="opc"><input  type="radio" name="preg 43 " id=" unoo 43 "  value=" a "><label for=" unoo 43 "> 17 l </label></div>
                <div id="opc"><input  type="radio" name="preg 43 " id=" doos 43 "  value=" b "><label for=" doos 43 "> 1.7 l </label></div>
                <div id="opc"><input  type="radio" name="preg 43 " id=" trees 43 "  value=" c "><label for=" trees 43 "> 0.17 1 </label></div>
                <div id="opc"><input  type="radio" name="preg 43 " id=" cuatroo 43 "  value=" d "><label for=" cuatroo 43 "> 0.017 l </label></div>
                <div id="opc"><input  type="radio" name="preg 43 " id=" cincoo 43 "  value=" e "><label for=" cincoo 43 "> 0.0017 l </label></div>
            </div><br/><br/><br/><br/><br/><br/><br/>
            <p style="font-size: 35px; text-align: center; color: #0288D1;">Español</p>
            <div class="radioex" >
                Seleccione las palabras que completan correctamente el siguiente texto de El Cumpleaños de Juan Ángel, de Mario Benedettti, quien no suele hacer uso de la puntuación:
                He de tomar una decisión para mi historia repentina el ______________ no radica en ser héroe o cucaracha eso sería demasiado____________ el _____________ es abolir todas las esperanzas o dejar unas pocas como muestra<br/>
                <div id="opc"><input  type="radio" name="preg 44 " id=" unoo 44 "  value=" a "><label for=" unoo 44 "> dilema – difícil - problema </label></div>
                <div id="opc"><input  type="radio" name="preg 44 " id=" doos 44 "  value=" b "><label for=" doos 44 "> asunto - cruel- método </label></div>
                <div id="opc"><input  type="radio" name="preg 44 " id=" trees 44 "  value=" c "><label for=" trees 44 "> punto - cuestionante - método </label></div>
                <div id="opc"><input  type="radio" name="preg 44 " id=" cuatroo 44 "  value=" d "><label for=" cuatroo 44 "> cuestionamiento - rudo -camino </label></div>
                <div id="opc"><input  type="radio" name="preg 44 " id=" cincoo 44 "  value=" e "><label for=" cincoo 44 "> problema - fácil -dilema </label></div>
            </div><br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                Seleccione la opción que proponga la secuencia más correcta para las siguientes frases:
                <br>
                1. Cuál es la vía por la que
                2. Los mexicanos podremos seguir avanzando
                3. La ruta de la justicia
                4. y el valle de la calidad de vida para todos
                5. Por el camino de la equidad
                6. Resulta difícil imaginar
                <br/>

                <div id="opc"><input  type="radio" name="preg 45 " id=" unoo 45 "  value=" a "><label for=" unoo 45 "> 6,1,2,5,3,4 </label></div>
                <div id="opc"><input  type="radio" name="preg 45 " id=" doos 45 "  value=" b "><label for=" doos 45 "> 1,5,3,4,2,6 </label></div>
                <div id="opc"><input  type="radio" name="preg 45 " id=" trees 45 "  value=" c "><label for=" trees 45 "> 5.3.4.1.6.2 </label></div>
                <div id="opc"><input  type="radio" name="preg 45 " id=" cuatroo 45 "  value=" d "><label for=" cuatroo 45 "> 6,3,4,5,1,2 </label></div>
                <div id="opc"><input  type="radio" name="preg 45 " id=" cincoo 45 "  value=" e "><label for=" cincoo 45 "> 1,6,3,4,5,2 </label></div>
            </div><br/><br/><br/><br/><br/><br/><br/>
            <div class="radioex" >
                Si tuviera que ordenar alfabéticamente las siguientes palabras. ¿cuál de ellas colocaría en cuarto lugar?<br/>
                <div id="opc"><input  type="radio" name="preg 46 " id=" unoo 46 "  value=" a "><label for=" unoo 46 "> Producir </label></div>
                <div id="opc"><input  type="radio" name="preg 46 " id=" doos 46 "  value=" b "><label for=" doos 46 "> propiciar </label></div>
                <div id="opc"><input  type="radio" name="preg 46 " id=" trees 46 "  value=" c "><label for=" trees 46 "> Prolongar </label></div>
                <div id="opc"><input  type="radio" name="preg 46 " id=" cuatroo 46 "  value=" d "><label for=" cuatroo 46 "> Progenitor </label></div>
                <div id="opc"><input  type="radio" name="preg 46 " id=" cincoo 46 "  value=" e "><label for=" cincoo 46 "> Progenie </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                Las palabras que sirven para completar o modificar el sustantivo son:<br/>
                <div id="opc"><input  type="radio" name="preg 47 " id=" unoo 47 "  value=" a "><label for=" unoo 47 "> Adverbios </label></div>
                <div id="opc"><input  type="radio" name="preg 47 " id=" doos 47 "  value=" b "><label for=" doos 47 "> Gerundios </label></div>
                <div id="opc"><input  type="radio" name="preg 47 " id=" trees 47 "  value=" c "><label for=" trees 47 "> Adjetivos </label></div>
                <div id="opc"><input  type="radio" name="preg 47 " id=" cuatroo 47 "  value=" d "><label for=" cuatroo 47 "> Sujetos </label></div>
                <div id="opc"><input  type="radio" name="preg 47 " id=" cincoo 47 "  value=" e "><label for=" cincoo 47 "> Nexos </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                El núcleo del sujeto siempre es una partícula:<br/>
                <div id="opc"><input  type="radio" name="preg 48 " id=" unoo 48 "  value=" a "><label for=" unoo 48 "> verbal </label></div>
                <div id="opc"><input  type="radio" name="preg 48 " id=" doos 48 "  value=" b "><label for=" doos 48 "> modificativa </label></div>
                <div id="opc"><input  type="radio" name="preg 48 " id=" trees 48 "  value=" c "><label for=" trees 48 "> ad nominal </label></div>
                <div id="opc"><input  type="radio" name="preg 48 " id=" cuatroo 48 "  value=" d "><label for=" cuatroo 48 "> atributiva </label></div>
                <div id="opc"><input  type="radio" name="preg 48 " id=" cincoo 48 "  value=" e "><label for=" cincoo 48 "> sustantiva </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                Si busca todas estas palabras por orden alfabético en el diccionario, ¿cuáles serían la primera y la última que encontraría?<br/>
                <div id="opc"><input  type="radio" name="preg 49 " id=" unoo 49 "  value=" a "><label for=" unoo 49 "> Trascender - trastornar </label></div>
                <div id="opc"><input  type="radio" name="preg 49 " id=" doos 49 "  value=" b "><label for=" doos 49 "> Trascender - trasnochar </label></div>
                <div id="opc"><input  type="radio" name="preg 49 " id=" trees 49 "  value=" c "><label for=" trees 49 "> Trasladar - trascender </label></div>
                <div id="opc"><input  type="radio" name="preg 49 " id=" cuatroo 49 "  value=" d "><label for=" cuatroo 49 "> trashumante - trasladar </label></div>
                <div id="opc"><input  type="radio" name="preg 49 " id=" cincoo 49 "  value=" e "><label for=" cincoo 49 "> Trasnochar – trasladar </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                Selecciona la única opción que incluye un error:<br/>
                <div id="opc"><input  type="radio" name="preg 50 " id=" unoo 50 "  value=" a "><label for=" unoo 50 "> Aún lo dudo </label></div>
                <div id="opc"><input  type="radio" name="preg 50 " id=" doos 50 "  value=" b "><label for=" doos 50 "> En cambio, yo lo acepto </label></div>
                <div id="opc"><input  type="radio" name="preg 50 " id=" trees 50 "  value=" c "><label for=" trees 50 "> No obstante, te lo dije </label></div>
                <div id="opc"><input  type="radio" name="preg 50 " id=" cuatroo 50 "  value=" d "><label for=" cuatroo 50 "> Mas sin en cambio, lo sostengo </label></div>
                <div id="opc"><input  type="radio" name="preg 50 " id=" cincoo 50 "  value=" e "><label for=" cincoo 50 "> Por el contrario, yo no lo creo </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                La acentuación española es económica (usa el acento sólo cuando es indispensable y en las situaciones menos frecuentes) y racional o lógica ¿Cuál de las siguientes reglas de acentuación es incorrecta? Se usa el acento gráfico en:<br/>
                <div id="opc"><input  type="radio" name="preg 51 " id=" unoo 51 "  value=" a "><label for=" unoo 51 "> Las palabras agudas terminadas en vocal, n o s </label></div>
                <div id="opc"><input  type="radio" name="preg 51 " id=" doos 51 "  value=" b "><label for=" doos 51 "> Las palabras graves que no terminen en vocal, n o s </label></div>
                <div id="opc"><input  type="radio" name="preg 51 " id=" trees 51 "  value=" c "><label for=" trees 51 "> Todas las palabras esdrújulas </label></div>
                <div id="opc"><input  type="radio" name="preg 51 " id=" cuatroo 51 "  value=" d "><label for=" cuatroo 51 "> La vocal débil cuando hay que romper el diptongo </label></div>
                <div id="opc"><input  type="radio" name="preg 51 " id=" cincoo 51 "  value=" e "><label for=" cincoo 51 "> El artículo, cuando hay que distinguirlo del pronombre (ejemplo, tu y tú) </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                Escoja la opción que ordena cronológicamente a los siguientes escritores:
                <br>
                1. Francisco de Quevedo
                2. Johann Wolfgang Goethe
                3. Juan Rulfo
                4. Fray Luis de León
                5. Ramón López Velarde<br/>
                <div id="opc"><input  type="radio" name="preg 52 " id=" unoo 52 "  value=" a "><label for=" unoo 52 "> 2,3,1,4,5 </label></div>
                <div id="opc"><input  type="radio" name="preg 52 " id=" doos 52 "  value=" b "><label for=" doos 52 "> 1,3,2,5,4 </label></div>
                <div id="opc"><input  type="radio" name="preg 52 " id=" trees 52 "  value=" c "><label for=" trees 52 "> 3,2,1,5,4 </label></div>
                <div id="opc"><input  type="radio" name="preg 52 " id=" cuatroo 52 "  value=" d "><label for=" cuatroo 52 "> 3,2,1,4,5 </label></div>
                <div id="opc"><input  type="radio" name="preg 52 " id=" cincoo 52 "  value=" e "><label for=" cincoo 52 "> 4.1,2,5,3 </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                "Puedo escribir los versos más tristes esta noche. Yo la quise, y a veces ella también me quiso" es parte de Veinte poemas de amor y una canción desesperada, escrita por:<br/>
                <div id="opc"><input  type="radio" name="preg 53 " id=" unoo 53 "  value=" a "><label for=" unoo 53 "> Jorge Luis Borges </label></div>
                <div id="opc"><input  type="radio" name="preg 53 " id=" doos 53 "  value=" b "><label for=" doos 53 "> Pablo Neruda </label></div>
                <div id="opc"><input  type="radio" name="preg 53 " id=" trees 53 "  value=" c "><label for=" trees 53 "> Antonio Machado </label></div>
                <div id="opc"><input  type="radio" name="preg 53 " id=" cuatroo 53 "  value=" d "><label for=" cuatroo 53 "> Nicolás Guillén </label></div>
                <div id="opc"><input  type="radio" name="preg 53 " id=" cincoo 53 "  value=" e "><label for=" cincoo 53 "> Octavio Paz </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                ¿Cuáles de las siguientes palabras deben llevar la letra s en el espacio indicado?
                <br>
                l. Presen _ia
                2. Antonoma _ia
                3. Próte_ is
                4. Mere _ía
                5. Membre _ía
                <br/>
                <div id="opc"><input  type="radio" name="preg 54 " id=" unoo 54 "  value=" a "><label for=" unoo 54 "> 2,3,5 </label></div>
                <div id="opc"><input  type="radio" name="preg 54 " id=" doos 54 "  value=" b "><label for=" doos 54 "> 1,2,5 </label></div>
                <div id="opc"><input  type="radio" name="preg 54 " id=" trees 54 "  value=" c "><label for=" trees 54 "> 2,4.5 </label></div>
                <div id="opc"><input  type="radio" name="preg 54 " id=" cuatroo 54 "  value=" d "><label for=" cuatroo 54 "> 1,2,3 </label></div>
                <div id="opc"><input  type="radio" name="preg 54 " id=" cincoo 54 "  value=" e "><label for=" cincoo 54 "> 1,3,2 </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                ¿Cuántas oraciones se encuentran en el siguiente párrafo de “Martín Fierro” del poeta José Hernández
                El campo es del ignorante; el pueblo del hombre instruido; yo, que en el campo he nacido, digo que mis cantos son para uno ... sonidos, y para otro.... intención.<br/>
                <div id="opc"><input  type="radio" name="preg 55 " id=" unoo 55 "  value=" a "><label for=" unoo 55 "> 2 </label></div>
                <div id="opc"><input  type="radio" name="preg 55 " id=" doos 55 "  value=" b "><label for=" doos 55 "> 4 </label></div>
                <div id="opc"><input  type="radio" name="preg 55 " id=" trees 55 "  value=" c "><label for=" trees 55 "> 6 </label></div>
                <div id="opc"><input  type="radio" name="preg 55 " id=" cuatroo 55 "  value=" d "><label for=" cuatroo 55 "> 7 </label></div>
                <div id="opc"><input  type="radio" name="preg 55 " id=" cincoo 55 "  value=" e "><label for=" cincoo 55 "> 8 </label></div>
            </div><br><br><br><br><br><br>
            <p style="font-size: 35px; text-align: center; color: #0288D1;">Historia</p>
            <div class="radioex" >
                Acontecimiento que ocurrió entre 1939 y 1945. en el que destacó la participación de países como Alemania, Inglaterra, Estados Unidos, URSS, Japón, Italia y Francia.<br/>
                <div id="opc"><input  type="radio" name="preg 56 " id=" unoo 56 "  value=" a "><label for=" unoo 56 "> guerra de Vietnam </label></div>
                <div id="opc"><input  type="radio" name="preg 56 " id=" doos 56 "  value=" b "><label for=" doos 56 "> guerra de 6 años </label></div>
                <div id="opc"><input  type="radio" name="preg 56 " id=" trees 56 "  value=" c "><label for=" trees 56 "> guerra civil español </label></div>
                <div id="opc"><input  type="radio" name="preg 56 " id=" cuatroo 56 "  value=" d "><label for=" cuatroo 56 "> primera guerra mundial </label></div>
                <div id="opc"><input  type="radio" name="preg 56 " id=" cincoo 56 "  value=" e "><label for=" cincoo 56 "> segunda guerra mundial </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                ¿Cuál es el nombre del primer presidente del Estado palestino?<br/>
                <div id="opc"><input  type="radio" name="preg 57 " id=" unoo 57 "  value=" a "><label for=" unoo 57 "> Yitzak Rabin </label></div>
                <div id="opc"><input  type="radio" name="preg 57 " id=" doos 57 "  value=" b "><label for=" doos 57 "> Simón Pérez </label></div>
                <div id="opc"><input  type="radio" name="preg 57 " id=" trees 57 "  value=" c "><label for=" trees 57 "> Yasser Arafat </label></div>
                <div id="opc"><input  type="radio" name="preg 57 " id=" cuatroo 57 "  value=" d "><label for=" cuatroo 57 "> Muamar Kadafi </label></div>
                <div id="opc"><input  type="radio" name="preg 57 " id=" cincoo 57 "  value=" e "><label for=" cincoo 57 "> Saddam Hussein </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                El discurso del método es obra de:<br/>
                <div id="opc"><input  type="radio" name="preg 58 " id=" unoo 58 "  value=" a "><label for=" unoo 58 "> René Descartes </label></div>
                <div id="opc"><input  type="radio" name="preg 58 " id=" doos 58 "  value=" b "><label for=" doos 58 "> Santo Tomás de Aquino </label></div>
                <div id="opc"><input  type="radio" name="preg 58 " id=" trees 58 "  value=" c "><label for=" trees 58 "> Thomas Kuhn </label></div>
                <div id="opc"><input  type="radio" name="preg 58 " id=" cuatroo 58 "  value=" d "><label for=" cuatroo 58 "> Francis Bacon </label></div>
                <div id="opc"><input  type="radio" name="preg 58 " id=" cincoo 58 "  value=" e "><label for=" cincoo 58 "> Humberto Eco </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                La aparición de Japón como potencia luego de ______________, quiebra el dominio euro centrista a principios del siglo XX.<br/>
                <div id="opc"><input  type="radio" name="preg 59 " id=" unoo 59 "  value=" a "><label for=" unoo 59 "> la crisis de los misiles </label></div>
                <div id="opc"><input  type="radio" name="preg 59 " id=" doos 59 "  value=" b "><label for=" doos 59 "> la guerra de Corea </label></div>
                <div id="opc"><input  type="radio" name="preg 59 " id=" trees 59 "  value=" c "><label for=" trees 59 "> las batallas del Mar del Coral y de Midway </label></div>
                <div id="opc"><input  type="radio" name="preg 59 " id=" cuatroo 59 "  value=" d "><label for=" cuatroo 59 "> la protección del imperio de Manchú </label></div>
                <div id="opc"><input  type="radio" name="preg 59 " id=" cincoo 59 "  value=" e "><label for=" cincoo 59 "> la guerra ruso-japonesa </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                Seleccione la opción en que los inventos mencionados están ordenados cronológicamente.<br/>
                <div id="opc"><input  type="radio" name="preg 60 " id=" unoo 60 "  value=" a "><label for=" unoo 60 "> escritura, imprenta, máquina de vapor, teléfono </label></div>
                <div id="opc"><input  type="radio" name="preg 60 " id=" doos 60 "  value=" b "><label for=" doos 60 "> pólvora, papel, barómetro, teléfono </label></div>
                <div id="opc"><input  type="radio" name="preg 60 " id=" trees 60 "  value=" c "><label for=" trees 60 "> termómetro de mercurio, brújula, astrolabio, máquina de coser </label></div>
                <div id="opc"><input  type="radio" name="preg 60 " id=" cuatroo 60 "  value=" d "><label for=" cuatroo 60 "> telescopio, radar, teléfono, láser </label></div>
                <div id="opc"><input  type="radio" name="preg 60 " id=" cincoo 60 "  value=" e "><label for=" cincoo 60 "> fonógrafo, telégrafo, telescopio, máquina de coser </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                Indique cuál es el orden o secuencia histórica correcta de los siguientes acontecimientos ocurridos durante la segunda mitad del siglo XX.<br/>
                <div id="opc"><input  type="radio" name="preg 61 " id=" unoo 61 "  value=" a "><label for=" unoo 61 "> Golpe militar en Chile, Guerra de Vietnam, Revolución Sandinista </label></div>
                <div id="opc"><input  type="radio" name="preg 61 " id=" doos 61 "  value=" b "><label for=" doos 61 "> Guerra de Vietnam, Golpe militar en Chile, Revolución Sandinista </label></div>
                <div id="opc"><input  type="radio" name="preg 61 " id=" trees 61 "  value=" c "><label for=" trees 61 "> Guerra de Vietnam, Revolución Sandinista, Golpe militar en Chile </label></div>
                <div id="opc"><input  type="radio" name="preg 61 " id=" cuatroo 61 "  value=" d "><label for=" cuatroo 61 "> Golpe militar en Chile, Revolución Sandinista, Guerra de Vietnam </label></div>
                <div id="opc"><input  type="radio" name="preg 61 " id=" cincoo 61 "  value=" e "><label for=" cincoo 61 "> Revolución Sandinista, Golpe militar en Chile, Guerra de Vietnam </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                El Tratado de Tlaltelolco y sus protocolos, que impiden la producción, instalación y almacenaje de arma nucleares en América Latina son promovidos durante el período presidencial de:<br/>
                <div id="opc"><input  type="radio" name="preg 62 " id=" unoo 62 "  value=" a "><label for=" unoo 62 ">  Adolfo de la Huerta. </label></div>
                <div id="opc"><input  type="radio" name="preg 62 " id=" doos 62 "  value=" b "><label for=" doos 62 ">  Lázaro Cárdenas. </label></div>
                <div id="opc"><input  type="radio" name="preg 62 " id=" trees 62 "  value=" c "><label for=" trees 62 ">  Adolfo López Mateos. </label></div>
                <div id="opc"><input  type="radio" name="preg 62 " id=" cuatroo 62 "  value=" d "><label for=" cuatroo 62 ">  Luis Echeverría </label></div>
                <div id="opc"><input  type="radio" name="preg 62 " id=" cincoo 62 "  value=" e "><label for=" cincoo 62 "> Adolfo Ruíz Cortines </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                Revolución que se da en el siglo XX y que establece un sistema político económico y social diferente al capitalismo<br/>
                <div id="opc"><input  type="radio" name="preg 63 " id=" unoo 63 "  value=" a "><label for=" unoo 63 "> Revolución rusa </label></div>
                <div id="opc"><input  type="radio" name="preg 63 " id=" doos 63 "  value=" b "><label for=" doos 63 "> Revolución industrial </label></div>
                <div id="opc"><input  type="radio" name="preg 63 " id=" trees 63 "  value=" c "><label for=" trees 63 "> Revolución francesa </label></div>
                <div id="opc"><input  type="radio" name="preg 63 " id=" cuatroo 63 "  value=" d "><label for=" cuatroo 63 "> Revolución burguesa </label></div>
                <div id="opc"><input  type="radio" name="preg 63 " id=" cincoo 63 "  value=" e "><label for=" cincoo 63 "> Revolución agrícola </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                Se considera la cultura madre de meso-américa. Estableció las bases para una escritura jeroglífica y un calendario ritual.<br/>
                <div id="opc"><input  type="radio" name="preg 64 " id=" unoo 64 "  value=" a "><label for=" unoo 64 "> olmeca </label></div>
                <div id="opc"><input  type="radio" name="preg 64 " id=" doos 64 "  value=" b "><label for=" doos 64 "> zapoteca </label></div>
                <div id="opc"><input  type="radio" name="preg 64 " id=" trees 64 "  value=" c "><label for=" trees 64 "> teotihuacana </label></div>
                <div id="opc"><input  type="radio" name="preg 64 " id=" cuatroo 64 "  value=" d "><label for=" cuatroo 64 "> maya </label></div>
                <div id="opc"><input  type="radio" name="preg 64 " id=" cincoo 64 "  value=" e "><label for=" cincoo 64 "> azteca </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                Ordena cronológicamente los siguientes acontecimientos.
                <br>
                1. Hidalgo y Allende son ejecutados
                2. Se proclama la Constitución de Apatzingán .
                3. Hidalgo irrumpe en la Alhóndiga de Granaditas
                4. Juan O´Donojú firma los tratados de Córdoba
                5. Francisco Xavier Mina desembarca en Soto la Marina
                <br/>
                <div id="opc"><input  type="radio" name="preg 65 " id=" unoo 65 "  value=" a "><label for=" unoo 65 "> 3,1,2,5,4, </label></div>
                <div id="opc"><input  type="radio" name="preg 65 " id=" doos 65 "  value=" b "><label for=" doos 65 "> 1,5,4,3,2 </label></div>
                <div id="opc"><input  type="radio" name="preg 65 " id=" trees 65 "  value=" c "><label for=" trees 65 "> 3.1.5.4.2 </label></div>
                <div id="opc"><input  type="radio" name="preg 65 " id=" cuatroo 65 "  value=" d "><label for=" cuatroo 65 "> 2.4.3.5.1 </label></div>
                <div id="opc"><input  type="radio" name="preg 65 " id=" cincoo 65 "  value=" e "><label for=" cincoo 65 "> 1.3.2.5.4 </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                La Guerra de Reforma es la lucha entre: ________y _______unos por las defensas de las canonjías y otros por secularizar el gobierno.<br/>
                <div id="opc"><input  type="radio" name="preg 66 " id=" unoo 66 "  value=" a "><label for=" unoo 66 "> Mexicanos, extranjeros </label></div>
                <div id="opc"><input  type="radio" name="preg 66 " id=" doos 66 "  value=" b "><label for=" doos 66 "> Conservadores liberales </label></div>
                <div id="opc"><input  type="radio" name="preg 66 " id=" trees 66 "  value=" c "><label for=" trees 66 "> liberales, radicales, moderados </label></div>
                <div id="opc"><input  type="radio" name="preg 66 " id=" cuatroo 66 "  value=" d "><label for=" cuatroo 66 "> Liberales estadounidenses </label></div>
                <div id="opc"><input  type="radio" name="preg 66 " id=" cincoo 66 "  value=" e "><label for=" cincoo 66 "> conservadores estadounidenses </label></div>
            </div><br><br><br><br><br><br>
            <div class="radioex" >
                Son propósitos del Plan de Guadalupe:
                1) El desconocimiento de huelga 2) La caída de Díaz 3) La rendición de Zapata
                4) nombrar presidente a Carranza<br/>
                <div id="opc"><input  type="radio" name="preg 67 " id=" unoo 67 "  value=" a "><label for=" unoo 67 "> 1,2 </label></div>
                <div id="opc"><input  type="radio" name="preg 67 " id=" doos 67 "  value=" b "><label for=" doos 67 "> 2,3 </label></div>
                <div id="opc"><input  type="radio" name="preg 67 " id=" trees 67 "  value=" c "><label for=" trees 67 "> 1,4 </label></div>
                <div id="opc"><input  type="radio" name="preg 67 " id=" cuatroo 67 "  value=" d "><label for=" cuatroo 67 "> 1,3 </label></div>
                <div id="opc"><input  type="radio" name="preg 67 " id=" cincoo 67 "  value=" e "><label for=" cincoo 67 "> 3,4 </label></div>

            </div><br><br><br><br><br><br>
            <p style="font-size: 35px; text-align: center; color: #0288D1;">Geografía</p>
            <div class="radioex" >
                A pesar de que muchas______________ todavía no se aclaran, la teoría de Laplace es hoy en día la explicación más _______________ sobre el origen de nuestro sistema solar.
                <br>
                <div id="opc"><input  type="radio" name="preg 68 " id=" unoo 68 "  value=" a "><label for=" unoo 68 "> variables – controvertida </label></div>
                <div id="opc"><input  type="radio" name="preg 68 " id=" doos 68 "  value=" b "><label for=" doos 68 "> teorías – común </label></div>
                <div id="opc"><input  type="radio" name="preg 68 " id=" trees 68 "  value=" c "><label for=" trees 68 "> dudas - críticas </label></div>
                <div id="opc"><input  type="radio" name="preg 68 " id=" cuatroo 68 "  value=" d "><label for=" cuatroo 68 "> incógnitas – aceptada </label></div>
                <div id="opc"><input  type="radio" name="preg 68 " id=" cincoo 68 "  value=" e "><label for=" cincoo 68 "> hipótesis -discutida </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                El Everest es considerado el __________más_______ del mundo y se encuentra en la cordillera de los ________,en la parte perteneciente a_____________.
                <br>
                <div id="opc"><input  type="radio" name="preg 69 " id=" unoo 69 "  value=" a "><label for=" unoo 69 "> monte- alto - Cárpatos- Polonia </label></div>
                <div id="opc"><input  type="radio" name="preg 69 " id=" doos 69 "  value=" b "><label for=" doos 69 "> volcán- nevado - Andes - Perú </label></div>
                <div id="opc"><input  type="radio" name="preg 69 " id=" trees 69 "  value=" c "><label for=" trees 69 "> pico - ancho - Alpes – Italia </label></div>
                <div id="opc"><input  type="radio" name="preg 69 " id=" cuatroo 69 "  value=" d "><label for=" cuatroo 69 "> monte - alto – Himalaya- Nepal </label></div>
                <div id="opc"><input  type="radio" name="preg 69 " id=" cincoo 69 "  value=" e "><label for=" cincoo 69 "> volcán - alto - Himalaya - Tíbet </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Factor importante por el que compiten las plantas de la tundra y el desierto.
                <div id="opc"><input  type="radio" name="preg 70 " id=" unoo 70 "  value=" a "><label for=" unoo 70 "> el suelo </label></div>
                <div id="opc"><input  type="radio" name="preg 70 " id=" doos 70 "  value=" b "><label for=" doos 70 "> la luz </label></div>
                <div id="opc"><input  type="radio" name="preg 70 " id=" trees 70 "  value=" c "><label for=" trees 70 "> los gases </label></div>
                <div id="opc"><input  type="radio" name="preg 70 " id=" cuatroo 70 "  value=" d "><label for=" cuatroo 70 "> el agua </label></div>
                <div id="opc"><input  type="radio" name="preg 70 " id=" cincoo 70 "  value=" e "><label for=" cincoo 70 "> el alimento </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                La zona de México que se clasifica como “Pacifico sur" comprende a los estados de:<br>
                <div id="opc"><input  type="radio" name="preg 71 " id=" unoo 71 "  value=" a "><label for=" unoo 71 "> Nayarit, Michoacán, Jalisco, Colima </label></div>
                <div id="opc"><input  type="radio" name="preg 71 " id=" doos 71 "  value=" b "><label for=" doos 71 "> Oaxaca, Chiapas y Guerrero </label></div>
                <div id="opc"><input  type="radio" name="preg 71 " id=" trees 71 "  value=" c "><label for=" trees 71 "> Campeche, Tabasco y Veracruz </label></div>
                <div id="opc"><input  type="radio" name="preg 71 " id=" cuatroo 71 "  value=" d "><label for=" cuatroo 71 "> Sonora, Sinaloa, Baja California, Baja California Sur y Nayarit </label></div>
                <div id="opc"><input  type="radio" name="preg 71 " id=" cincoo 71 "  value=" e "><label for=" cincoo 71 "> Jalisco, Michoacán y Colima </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                La desembocadura del río se fija como límite fronterizo de México con:<br/>
                <div id="opc"><input  type="radio" name="preg 72 " id=" unoo 72 "  value=" a "><label for=" unoo 72 "> Grijalva - Belice </label></div>
                <div id="opc"><input  type="radio" name="preg 72 " id=" doos 72 "  value=" b "><label for=" doos 72 "> Suchiate - Guatemala </label></div>
                <div id="opc"><input  type="radio" name="preg 72 " id=" trees 72 "  value=" c "><label for=" trees 72 "> Tehuantepec - Guatemala </label></div>
                <div id="opc"><input  type="radio" name="preg 72 " id=" cuatroo 72 "  value=" d "><label for=" cuatroo 72 "> Bravo - California </label></div>
                <div id="opc"><input  type="radio" name="preg 72 " id=" cincoo 72 "  value=" e "><label for=" cincoo 72 "> Colorado –Texas </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                ¿Cuál es el estado de la República que produce más Carbón?<br/>
                <div id="opc"><input  type="radio" name="preg 73 " id=" unoo 73 "  value=" a "><label for=" unoo 73 "> Campeche </label></div>
                <div id="opc"><input  type="radio" name="preg 73 " id=" doos 73 "  value=" b "><label for=" doos 73 "> Coahuila </label></div>
                <div id="opc"><input  type="radio" name="preg 73 " id=" trees 73 "  value=" c "><label for=" trees 73 "> Colima </label></div>
                <div id="opc"><input  type="radio" name="preg 73 " id=" cuatroo 73 "  value=" d "><label for=" cuatroo 73 "> Chiapas </label></div>
                <div id="opc"><input  type="radio" name="preg 73 " id=" cincoo 73 "  value=" e "><label for=" cincoo 73 "> Chihuahua </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Escoja la opción que ordena de mayor a menor -según su extensión- los siguientes estados de la República Mexicana.
                1 Quintana Roo 2 Oaxaca 3 Nuevo León 4 Sonora 5 Jalisco
                <div id="opc"><input  type="radio" name="preg 74 " id=" unoo 74 "  value=" a "><label for=" unoo 74 "> 1,4,2,5,3 </label></div>
                <div id="opc"><input  type="radio" name="preg 74 " id=" doos 74 "  value=" b "><label for=" doos 74 "> 2,4,3,1,5 </label></div>
                <div id="opc"><input  type="radio" name="preg 74 " id=" trees 74 "  value=" c "><label for=" trees 74 "> 3,2,4,5,1 </label></div>
                <div id="opc"><input  type="radio" name="preg 74 " id=" cuatroo 74 "  value=" d "><label for=" cuatroo 74 "> 4,2,5,3,1 </label></div>
                <div id="opc"><input  type="radio" name="preg 74 " id=" cincoo 74 "  value=" e "><label for=" cincoo 74 "> 5,1,4,3,2 </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Escoja la opción que relaciona incorrectamente a un país con su capital<br/>
                <div id="opc"><input  type="radio" name="preg 75 " id=" unoo 75 "  value=" a "><label for=" unoo 75 "> Puerto Rico - San Juan </label></div>
                <div id="opc"><input  type="radio" name="preg 75 " id=" doos 75 "  value=" b "><label for=" doos 75 "> Costa Rica- San José </label></div>
                <div id="opc"><input  type="radio" name="preg 75 " id=" trees 75 "  value=" c "><label for=" trees 75 "> Colombia - Santa Fe de Bogotá </label></div>
                <div id="opc"><input  type="radio" name="preg 75 " id=" cuatroo 75 "  value=" d "><label for=" cuatroo 75 "> Brasil - Sao Paulo </label></div>
                <div id="opc"><input  type="radio" name="preg 75 " id=" cincoo 75 "  value=" e "><label for=" cincoo 75 "> El Salvador - San Salvador </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Seleccione la única opción que menciona un grupo étnico americano.<br/>
                <div id="opc"><input  type="radio" name="preg 76 " id=" unoo 76 "  value=" a "><label for=" unoo 76 "> Guaraníes </label></div>
                <div id="opc"><input  type="radio" name="preg 76 " id=" doos 76 "  value=" b "><label for=" doos 76 "> Beduinos </label></div>
                <div id="opc"><input  type="radio" name="preg 76 " id=" trees 76 "  value=" c "><label for=" trees 76 "> Kurdos </label></div>
                <div id="opc"><input  type="radio" name="preg 76 " id=" cuatroo 76 "  value=" d "><label for=" cuatroo 76 "> Bantúes </label></div>
                <div id="opc"><input  type="radio" name="preg 76 " id=" cincoo 76 "  value=" e "><label for=" cincoo 76 "> Melanesios </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Seleccione la opción que contiene el único grupo étnico que no pertenece al continente americano.<br/>
                <div id="opc"><input  type="radio" name="preg 77 " id=" unoo 77 "  value=" a "><label for=" unoo 77 "> lroqueses </label></div>
                <div id="opc"><input  type="radio" name="preg 77 " id=" doos 77 "  value=" b "><label for=" doos 77 "> Araucanos </label></div>
                <div id="opc"><input  type="radio" name="preg 77 " id=" trees 77 "  value=" c "><label for=" trees 77 "> Tepehuanos </label></div>
                <div id="opc"><input  type="radio" name="preg 77 " id=" cuatroo 77 "  value=" d "><label for=" cuatroo 77 "> Seris </label></div>
                <div id="opc"><input  type="radio" name="preg 77 " id=" cincoo 77 "  value=" e "><label for=" cincoo 77 "> Kurdos </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Para la localización de un lugar en la superficie terrestre, los valores máximos de latitud y longitud corresponden a <br/>
                <div id="opc"><input  type="radio" name="preg 78 " id=" unoo 78 "  value=" a "><label for=" unoo 78 "> 100° y 150° </label></div>
                <div id="opc"><input  type="radio" name="preg 78 " id=" doos 78 "  value=" b "><label for=" doos 78 "> 65° y120° </label></div>
                <div id="opc"><input  type="radio" name="preg 78 " id=" trees 78 "  value=" c "><label for=" trees 78 "> 180° y180° </label></div>
                <div id="opc"><input  type="radio" name="preg 78 " id=" cuatroo 78 "  value=" d "><label for=" cuatroo 78 "> 90° y 180’° </label></div>
                <div id="opc"><input  type="radio" name="preg 78 " id=" cincoo 78 "  value=" e "><label for=" cincoo 78 "> 120° Y 180° </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                El crecimiento de las grandes ciudades mexicanas se debe principalmente:<br/>
                <div id="opc"><input  type="radio" name="preg 79 " id=" unoo 79 "  value=" a "><label for=" unoo 79 "> escasez de la mano de obra </label></div>
                <div id="opc"><input  type="radio" name="preg 79 " id=" doos 79 "  value=" b "><label for=" doos 79 "> centralización de los servicios </label></div>
                <div id="opc"><input  type="radio" name="preg 79 " id=" trees 79 "  value=" c "><label for=" trees 79 "> ortalecimiento de la mano de obra </label></div>
                <div id="opc"><input  type="radio" name="preg 79 " id=" cuatroo 79 "  value=" d "><label for=" cuatroo 79 "> migración de la ciudad al campo </label></div>
                <div id="opc"><input  type="radio" name="preg 79 " id=" cuatroo 79 "  value=" d "><label for=" cuatroo 79 "> cierre de centros turísticos </label></div>

            </div><br><br><br><br><br><br>
            <p style="font-size: 35px; text-align: center; color: #0288D1;">Formación Civica y Etica</p>  
            <div class="radioex" >
                Existe una clara_________________ frente a las naciones ricas. Por eso se originan graves conflictos en los países subdesarrollados<br/>
                <div id="opc"><input  type="radio" name="preg 80 " id=" cincoo 80 "  value=" a "><label for=" unoo 80 "> Independencia económica -política </label></div>
                <div id="opc"><input  type="radio" name="preg 80 " id=" unoo 80 "  value=" b "><label for=" doos 80 "> Ventaja étnico -cultural </label></div>
                <div id="opc"><input  type="radio" name="preg 80 " id=" doos 80 "  value=" c "><label for=" trees 80 "> Dependencia económico - política </label></div>
                <div id="opc"><input  type="radio" name="preg 80 " id=" trees 80 "  value=" d "><label for=" cuatroo 80 "> Ganancia desmesurada </label></div>
                <div id="opc"><input  type="radio" name="preg 80 " id=" cuatroo 80 "  value=" e "><label for=" cincoo 80 "> Discriminación racial </label></div>
                <div id="opc"><input  type="radio" name="preg 80 " id=" cincoo 80 "  value=" a "><label for=" unoo 81 "> la eliminación de los testículos </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                La Vasectomía consiste en:<br/>
                <div id="opc"><input  type="radio" name="preg 81 " id=" unoo 81 "  value=" b "><label for=" doos 81 "> impedir la salida de espermatozoides al líquido seminal </label></div>
                <div id="opc"><input  type="radio" name="preg 81 " id=" doos 81 "  value=" c "><label for=" trees 81 "> impedir la eyaculación </label></div>
                <div id="opc"><input  type="radio" name="preg 81 " id=" trees 81 "  value=" d "><label for=" cuatroo 81 "> eliminar la producción de espermatozoides </label></div>
                <div id="opc"><input  type="radio" name="preg 81 " id=" cuatroo 81 "  value=" e "><label for=" cincoo 81 "> alterar la función hormonal en el varón </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Actualmente la cámara de senadores está constituida por:<br/>
                <div id="opc"><input  type="radio" name="preg 82 " id=" unoo 82 "  value=" a "><label for=" unoo 82 "> 48 senadores elegidos por votación directa y 48 de representación proporcional </label></div>
                <div id="opc"><input  type="radio" name="preg 82 " id=" doos 82 "  value=" b "><label for=" doos 82 "> 32 senadores elegidos por votación directa y 64 de representación proporcional </label></div>
                <div id="opc"><input  type="radio" name="preg 82 " id=" trees 82 "  value=" c "><label for=" trees 82 "> 96 senadores de representación proporcional </label></div>
                <div id="opc"><input  type="radio" name="preg 82 " id=" cuatroo 82 "  value=" d "><label for=" cuatroo 82 "> 64 senadores elegidos por votación directa y 32 de representación proporcional </label></div>
                <div id="opc"><input  type="radio" name="preg 82 " id=" cincoo 82 "  value=" e "><label for=" cincoo 82 "> 96 senadores elegidos por votación directa </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                La supervisión del comercio internacional y la eliminación de barreras a las exportaciones son, desde1995, objetivos de<br>
                <div id="opc"><input  type="radio" name="preg 83 " id=" unoo 83 "  value=" a "><label for=" unoo 83 "> el GATT </label></div>
                <div id="opc"><input  type="radio" name="preg 83 " id=" doos 83 "  value=" b "><label for=" doos 83 "> la OlP </label></div>
                <div id="opc"><input  type="radio" name="preg 83 " id=" trees 83 "  value=" c "><label for=" trees 83 "> la OMC </label></div>
                <div id="opc"><input  type="radio" name="preg 83 " id=" cuatroo 83 "  value=" d "><label for=" cuatroo 83 "> la CEE </label></div>
                <div id="opc"><input  type="radio" name="preg 83 " id=" cincoo 83 "  value=" e "><label for=" cincoo 83 "> el FMI </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Diversos países, entre ellos México, han reclamado la rotación de los cinco de 15 asientos que de manera permanente se asignaron en el Consejo de Seguridad de la ONU. Escoja la opción que menciona correctamente a tres de los cinco países que los ocupan desde 1945.<br/>
                <div id="opc"><input  type="radio" name="preg 84 " id=" unoo 84 "  value=" a "><label for=" unoo 84 "> Suecia, Suiza y Francia </label></div>
                <div id="opc"><input  type="radio" name="preg 84 " id=" doos 84 "  value=" b "><label for=" doos 84 "> Estados Unidos, Francia y el Reino Unido </label></div>
                <div id="opc"><input  type="radio" name="preg 84 " id=" trees 84 "  value=" c "><label for=" trees 84 "> Alemania, Japón e Italia </label></div>
                <div id="opc"><input  type="radio" name="preg 84 " id=" cuatroo 84 "  value=" d "><label for=" cuatroo 84 "> Estados Unidos, Reino Unido, España </label></div>
                <div id="opc"><input  type="radio" name="preg 84 " id=" cincoo 84 "  value=" e "><label for=" cincoo 84 "> Israel, China, Bélgica </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                En Febrero de 2003 un presidente extranjero visitó México con objeto de persuadir al gobierno mexicano para que votara a favor de la invasión estadounidense a Iraq. ¿De qué personaje se trata'?<br/>
                <div id="opc"><input  type="radio" name="preg 85 " id=" unoo 85 "  value=" a "><label for=" unoo 85 "> Antonio Calvo Sotelo </label></div>
                <div id="opc"><input  type="radio" name="preg 85 " id=" doos 85 "  value=" b "><label for=" doos 85 "> Felipe González </label></div>
                <div id="opc"><input  type="radio" name="preg 85 " id=" trees 85 "  value=" c "><label for=" trees 85 "> José Ma. Aznar </label></div>
                <div id="opc"><input  type="radio" name="preg 85 " id=" cuatroo 85 "  value=" d "><label for=" cuatroo 85 "> Juan Carlos de Borbón </label></div>
                <div id="opc"><input  type="radio" name="preg 85 " id=" cincoo 85 "  value=" e "><label for=" cincoo 85 "> Adolfo Suárez </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                La impresión y distribución de textos únicos y gratuitos en la escuela primaria se inicia en el período presidencial de: <br/>
                <div id="opc"><input  type="radio" name="preg 86 " id=" unoo 86 "  value=" a "><label for=" unoo 86 "> Adolfo de la Huerta </label></div>
                <div id="opc"><input  type="radio" name="preg 86 " id=" doos 86 "  value=" b "><label for=" doos 86 "> Manuel Ávila Camacho </label></div>
                <div id="opc"><input  type="radio" name="preg 86 " id=" trees 86 "  value=" c "><label for=" trees 86 "> Adolfo Ruiz Cortines </label></div>
                <div id="opc"><input  type="radio" name="preg 86 " id=" cuatroo 86 "  value=" d "><label for=" cuatroo 86 "> Miguel de la Madrid Hurtado </label></div>
                <div id="opc"><input  type="radio" name="preg 86 " id=" cincoo 86 "  value=" e "><label for=" cincoo 86 "> Adolfo López Mateos </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                La actual competencia internacional por poseer tierras en la Antártida se debe fundamentalmente al interés por:<br/>
                <div id="opc"><input  type="radio" name="preg 87 " id=" unoo 87 "  value=" a "><label for=" unoo 87 "> lograr puntos estratégicos para las telecomunicaciones </label></div>
                <div id="opc"><input  type="radio" name="preg 87 " id=" doos 87 "  value=" b "><label for=" doos 87 "> mantener zonas de reservas naturales para la fauna </label></div>
                <div id="opc"><input  type="radio" name="preg 87 " id=" trees 87 "  value=" c "><label for=" trees 87 "> lograr puntos estratégicos para después explotar yacimientos minerales </label></div>
                <div id="opc"><input  type="radio" name="preg 87 " id=" cuatroo 87 "  value=" d "><label for=" cuatroo 87 "> instalar bases de rastreo espacial </label></div>
                <div id="opc"><input  type="radio" name="preg 87 " id=" cincoo 87 "  value=" e "><label for=" cincoo 87 "> instalar bases militares para un mejor control posterior de la zona </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                ¿Cómo se llama la ciencia que se encarga de estudiar las características de la población en cuento a edad, sexo, tasa de crecimiento, migraciones, etcétera?<br/>
                <div id="opc"><input  type="radio" name="preg 88 " id=" unoo 88 "  value=" a "><label for=" unoo 88 "> Estadística </label></div>
                <div id="opc"><input  type="radio" name="preg 88 " id=" doos 88 "  value=" b "><label for=" doos 88 "> Geografía </label></div>
                <div id="opc"><input  type="radio" name="preg 88 " id=" trees 88 "  value=" c "><label for=" trees 88 "> Demografía </label></div>
                <div id="opc"><input  type="radio" name="preg 88 " id=" cuatroo 88 "  value=" d "><label for=" cuatroo 88 "> Sociología </label></div>
                <div id="opc"><input  type="radio" name="preg 88 " id=" cincoo 88 "  value=" e "><label for=" cincoo 88 "> Antropología </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                El artículo 3ero. De nuestra Constitución se refiere<br/>
                <div id="opc"><input  type="radio" name="preg 89 " id=" unoo 89 "  value=" a "><label for=" unoo 89 "> la prohibición de la esclavitud </label></div>
                <div id="opc"><input  type="radio" name="preg 89 " id=" doos 89 "  value=" b "><label for=" doos 89 "> El derecho de reunión </label></div>
                <div id="opc"><input  type="radio" name="preg 89 " id=" trees 89 "  value=" c "><label for=" trees 89 "> La educación </label></div>
                <div id="opc"><input  type="radio" name="preg 89 " id=" cuatroo 89 "  value=" d "><label for=" cuatroo 89 "> El trabajo </label></div>
                <div id="opc"><input  type="radio" name="preg 89 " id=" cincoo 89 "  value=" e "><label for=" cincoo 89 "> La libertad de profesar la creencia que cada individuo desea </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                En la parte dogmática de la Constitución se establecen<br/>
                <div id="opc"><input  type="radio" name="preg 90 " id=" unoo 90 "  value=" a "><label for=" unoo 90 "> la organización del estado </label></div>
                <div id="opc"><input  type="radio" name="preg 90 " id=" doos 90 "  value=" b "><label for=" doos 90 "> los poderes de la federación </label></div>
                <div id="opc"><input  type="radio" name="preg 90 " id=" trees 90 "  value=" c "><label for=" trees 90 "> las garantías individuales </label></div>
                <div id="opc"><input  type="radio" name="preg 90 " id=" cuatroo 90 "  value=" d "><label for=" cuatroo 90 "> la organización de los municipios </label></div>
                <div id="opc"><input  type="radio" name="preg 90 " id=" cincoo 90 "  value=" e "><label for=" cincoo 90 "> los derechos de los campesinos </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                En qué caso la autoridad debe entrar y registrar un domicilio particular<br/>
                <div id="opc"><input  type="radio" name="preg 91 " id=" unoo 91 "  value=" a "><label for=" unoo 91 "> cuando hay un homicida en la casa </label></div>
                <div id="opc"><input  type="radio" name="preg 91 " id=" doos 91 "  value=" b "><label for=" doos 91 "> cuando quieren entrar y registrar </label></div>
                <div id="opc"><input  type="radio" name="preg 91 " id=" trees 91 "  value=" c "><label for=" trees 91 "> cuando hay una fiesta escandalosa </label></div>
                <div id="opc"><input  type="radio" name="preg 91 " id=" cuatroo 91 "  value=" d "><label for=" cuatroo 91 "> cuando llevan una orden de cateo </label></div>
                <div id="opc"><input  type="radio" name="preg 91 " id=" cincoo 91 "  value=" e "><label for=" cincoo 91 "> cuando vive un violador en la casa </label></div>
            </div><br><br><br><br><br><br>  
            <p style="font-size: 35px; text-align: center; color: #0288D1;">Biologia</p>
            <div class="radioex" >
                Hablar de fecundación in vitro se refiere a:<br/>
                <div id="opc"><input  type="radio" name="preg 92 " id=" unoo 92 "  value=" a "><label for=" unoo 92 "> fecundar el óvulo de una hembra con un espermatozoide de un macho de otra especie </label></div>
                <div id="opc"><input  type="radio" name="preg 92 " id=" doos 92 "  value=" b "><label for=" doos 92 "> fecundar al óvulo sin utilizar espermatozoides </label></div>
                <div id="opc"><input  type="radio" name="preg 92 " id=" trees 92 "  value=" c "><label for=" trees 92 "> fecundar al óvulo mediante tubos de vidrio </label></div>
                <div id="opc"><input  type="radio" name="preg 92 " id=" cuatroo 92 "  value=" d "><label for=" cuatroo 92 "> fecundar al óvulo fuera de la madre y luego implantárselo </label></div>
                <div id="opc"><input  type="radio" name="preg 92 " id=" cincoo 92 "  value=" e "><label for=" cincoo 92 "> obtener un huevo a partir de dos óvulos </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Los investigadores biónicos, utilizan la zoo-tecnología para descubrir en los animales patrones y sistemas que luego aplican en el diseño de aparatos. Tal es el caso de:<br/>
                <div id="opc"><input  type="radio" name="preg 93 " id=" unoo 93 "  value=" a "><label for=" unoo 93 "> el avión y el motor de turbina </label></div>
                <div id="opc"><input  type="radio" name="preg 93 " id=" doos 93 "  value=" b "><label for=" doos 93 "> el cemento portland y el concreto </label></div>
                <div id="opc"><input  type="radio" name="preg 93 " id=" trees 93 "  value=" c "><label for=" trees 93 "> la oruga y el trascabo </label></div>
                <div id="opc"><input  type="radio" name="preg 93 " id=" cuatroo 93 "  value=" d "><label for=" cuatroo 93 "> el nylon y el plástico impermeable </label></div>
                <div id="opc"><input  type="radio" name="preg 93 " id=" cincoo 93 "  value=" e "><label for=" cincoo 93 "> el transistor y el radar </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                En las bebidas y alimentos dietéticos aparece una leyenda que señala que no deben ser consumidos por mujeres embarazadas y fenilcetonúricos debido a que contienen fenilalanina, y este compuesto<br/>
                <div id="opc"><input  type="radio" name="preg 94 " id=" unoo 94 "  value=" a "><label for=" unoo 94 "> no puede ser metabolizado e induce el almacenamiento de grasa y el aumento de peso </label></div>
                <div id="opc"><input  type="radio" name="preg 94 " id=" doos 94 "  value=" b "><label for=" doos 94 "> excita el sistema nervioso y produce insomnio </label></div>
                <div id="opc"><input  type="radio" name="preg 94 " id=" trees 94 "  value=" c "><label for=" trees 94 "> no puede ser metabolizado por algunos organismos y se almacena en los tejidos ocasionando trastornos que pueden llegar al retraso mental </label></div>
                <div id="opc"><input  type="radio" name="preg 94 " id=" cuatroo 94 "  value=" d "><label for=" cuatroo 94 "> al ser bajo en calorías no suministra la energía necesaria para el desarrollo normal </label></div>
                <div id="opc"><input  type="radio" name="preg 94 " id=" cincoo 94 "  value=" e "><label for=" cincoo 94 "> se metaboliza rápidamente haciendo que el organismo queme reservas en exceso y puede producir anemia </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                ¿Cuál: de las siguientes afirmaciones puede ser probada mediante un experimento controlado?<br/>
                <div id="opc"><input  type="radio" name="preg 95 " id=" unoo 95 "  value=" a "><label for=" unoo 95 "> El mes lunar tiene 28 días </label></div>
                <div id="opc"><input  type="radio" name="preg 95 " id=" doos 95 "  value=" b "><label for=" doos 95 "> La probabilidad de desarrollar cáncer en la piel aumenta con la exposición a radiaciones ultravioleta </label></div>
                <div id="opc"><input  type="radio" name="preg 95 " id=" trees 95 "  value=" c "><label for=" trees 95 "> Los hongos pertenecen al reino Funji </label></div>
                <div id="opc"><input  type="radio" name="preg 95 " id=" cuatroo 95 "  value=" d "><label for=" cuatroo 95 "> Las aves tienen escamas </label></div>
                <div id="opc"><input  type="radio" name="preg 95 " id=" cincoo 95 "  value=" e "><label for=" cincoo 95 "> Algunos animales acuáticos son mamíferos </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Escoja la opción que no completa correctamente el siguiente enunciado: Las anfetaminas utilizadas médicamente para controlar la obesidad. ....<br/>
                <div id="opc"><input  type="radio" name="preg 96 " id=" unoo 96 "  value=" a "><label for=" unoo 96 "> pueden utilizarse todo el tiempo hasta bajar al peso deseado </label></div>
                <div id="opc"><input  type="radio" name="preg 96 " id=" doos 96 "  value=" b "><label for=" doos 96 "> pueden ser utilizadas por cualquier persona </label></div>
                <div id="opc"><input  type="radio" name="preg 96 " id=" trees 96 "  value=" c "><label for=" trees 96 "> sólo se recomiendan para personas hiperactivas </label></div>
                <div id="opc"><input  type="radio" name="preg 96 " id=" cuatroo 96 "  value=" d "><label for=" cuatroo 96 "> sólo pueden ser usadas por mujeres jóvenes </label></div>
                <div id="opc"><input  type="radio" name="preg 96 " id=" cincoo 96 "  value=" e "><label for=" cincoo 96 "> sólo pueden administrarse por períodos de un mes o menos </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Para estudiar el comportamiento de cualquier ser vivo en su ambiente natural la biología se relaciona directamente con disciplinas como<br/>
                <div id="opc"><input  type="radio" name="preg 97 " id=" unoo 97 "  value=" a "><label for=" unoo 97 "> física, química y estadística </label></div>
                <div id="opc"><input  type="radio" name="preg 97 " id=" doos 97 "  value=" b "><label for=" doos 97 "> física, astronomía y economía </label></div>
                <div id="opc"><input  type="radio" name="preg 97 " id=" trees 97 "  value=" c "><label for=" trees 97 "> anatomía, fisiología y micología </label></div>
                <div id="opc"><input  type="radio" name="preg 97 " id=" cuatroo 97 "  value=" d "><label for=" cuatroo 97 "> histología, embriología y etología </label></div>
                <div id="opc"><input  type="radio" name="preg 97 " id=" cincoo 97 "  value=" e "><label for=" cincoo 97 "> química, estadística y psicología </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Relación entre organismos en la que un ser vive a expensas de otro, causándole daño<br/>
                <div id="opc"><input  type="radio" name="preg 98 " id=" unoo 98 "  value=" a "><label for=" unoo 98 "> comensalismo </label></div>
                <div id="opc"><input  type="radio" name="preg 98 " id=" doos 98 "  value=" b "><label for=" doos 98 "> saprofitismo </label></div>
                <div id="opc"><input  type="radio" name="preg 98 " id=" trees 98 "  value=" c "><label for=" trees 98 "> inquilinismo </label></div>
                <div id="opc"><input  type="radio" name="preg 98 " id=" cuatroo 98 "  value=" d "><label for=" cuatroo 98 "> parasitismo </label></div>
                <div id="opc"><input  type="radio" name="preg 98 " id=" cincoo 98 "  value=" e "><label for=" cincoo 98 "> simbiosis </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                ¿ Por qué ya no está dulce un jugo de fruta cuando se ha fermentado<br>
                1. Hay microbios que se alimentan del azúcar<br>
                2, El azúcar se ha descompuesto<br>
                3. El calor ha destruido el azúcar<br>
                4. el azúcar ha reaccionado con los ácidos de la fruta<br>
                <div id="opc"><input  type="radio" name="preg 99 " id=" unoo 99 "  value=" a "><label for=" unoo 99 "> 1,4 </label></div>
                <div id="opc"><input  type="radio" name="preg 99 " id=" doos 99 "  value=" b "><label for=" doos 99 "> 2 </label></div>
                <div id="opc"><input  type="radio" name="preg 99 " id=" trees 99 "  value=" c "><label for=" trees 99 "> 1 </label></div>
                <div id="opc"><input  type="radio" name="preg 99 " id=" cuatroo 99 "  value=" d "><label for=" cuatroo 99 "> 3 </label></div>
                <div id="opc"><input  type="radio" name="preg 99 " id=" cincoo 99 "  value=" e "><label for=" cincoo 99 "> 4 </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                ¿Cuál es la molécula con núcleo de magnesio, indispensable para que se lleve a cabo el proceso de la fotosíntesis?<br/>
                <div id="opc"><input  type="radio" name="preg 100 " id=" unoo 100 "  value=" a "><label for=" unoo 100 "> hemoglobina </label></div>
                <div id="opc"><input  type="radio" name="preg 100 " id=" doos 100 "  value=" b "><label for=" doos 100 "> hemocianina </label></div>
                <div id="opc"><input  type="radio" name="preg 100 " id=" trees 100 "  value=" c "><label for=" trees 100 "> caroteno </label></div>
                <div id="opc"><input  type="radio" name="preg 100 " id=" cuatroo 100 "  value=" d "><label for=" cuatroo 100 "> clorofila </label></div>
                <div id="opc"><input  type="radio" name="preg 100 " id=" cincoo 100 "  value=" e "><label for=" cincoo 100 "> xantofila </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Las siguientes son partes del oído excepto<br/>
                <div id="opc"><input  type="radio" name="preg 101 " id=" unoo 101 "  value=" a "><label for=" unoo 101 "> el estribo </label></div>
                <div id="opc"><input  type="radio" name="preg 101 " id=" doos 101 "  value=" b "><label for=" doos 101 "> el estrógeno </label></div>
                <div id="opc"><input  type="radio" name="preg 101 " id=" trees 101 "  value=" c "><label for=" trees 101 "> la retina </label></div>
                <div id="opc"><input  type="radio" name="preg 101 " id=" cuatroo 101 "  value=" d "><label for=" cuatroo 101 "> la cóclea </label></div>
                <div id="opc"><input  type="radio" name="preg 101 " id=" cincoo 101 "  value=" e "><label for=" cincoo 101 "> el yunque </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Las características sexuales secundarias femeninas son reguladas por hormonas como:<br/>
                <div id="opc"><input  type="radio" name="preg 102 " id=" unoo 102 "  value=" a "><label for=" unoo 102 "> la insulinala </label></div>
                <div id="opc"><input  type="radio" name="preg 102 " id=" doos 102 "  value=" b "><label for=" doos 102 "> el estrógeno </label></div>
                <div id="opc"><input  type="radio" name="preg 102 " id=" trees 102 "  value=" c "><label for=" trees 102 "> la adrenalina </label></div>
                <div id="opc"><input  type="radio" name="preg 102 " id=" cuatroo 102 "  value=" d "><label for=" cuatroo 102 "> la progesterona </label></div>
                <div id="opc"><input  type="radio" name="preg 102 " id=" cincoo 102 "  value=" e "><label for=" cincoo 102 "> la testosterona </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                la energía puede almacenarse en el organismo como<br/>
                <div id="opc"><input  type="radio" name="preg 103 " id=" unoo 103 "  value=" a "><label for=" unoo 103 "> vitaminas y grasas </label></div>
                <div id="opc"><input  type="radio" name="preg 103 " id=" doos 103 "  value=" b "><label for=" doos 103 "> músculo y grasa </label></div>
                <div id="opc"><input  type="radio" name="preg 103 " id=" trees 103 "  value=" c "><label for=" trees 103 "> grasa y glucógeno </label></div>
                <div id="opc"><input  type="radio" name="preg 103 " id=" cuatroo 103 "  value=" d "><label for=" cuatroo 103 "> vitaminas y carbohidratos </label></div>
                <div id="opc"><input  type="radio" name="preg 103 " id=" cincoo 103 "  value=" e "><label for=" cincoo 103 "> glucógeno y proteínas </label></div>
            </div><br><br><br><br><br><br>  
            <p style="font-size: 35px; text-align: center; color: #0288D1;">Física</p>
            <div class="radioex" >
                El cero absoluto se encuentra a:<br/>
                <div id="opc"><input  type="radio" name="preg 104 " id=" unoo 104 "  value=" a "><label for=" unoo 104 "> 0° C </label></div>
                <div id="opc"><input  type="radio" name="preg 104 " id=" doos 104 "  value=" b "><label for=" doos 104 "> -273°C </label></div>
                <div id="opc"><input  type="radio" name="preg 104 " id=" trees 104 "  value=" c "><label for=" trees 104 "> –273 °K </label></div>
                <div id="opc"><input  type="radio" name="preg 104 " id=" cuatroo 104 "  value=" d "><label for=" cuatroo 104 "> 273 °C </label></div>
                <div id="opc"><input  type="radio" name="preg 104 " id=" cincoo 104 "  value=" e "><label for=" cincoo 104 "> O°F </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Una pila voltaica está formada por:<br/>
                <div id="opc"><input  type="radio" name="preg 105 " id=" unoo 105 "  value=" a "><label for=" unoo 105 "> dos electrodos, un electrolito y una celda </label></div>
                <div id="opc"><input  type="radio" name="preg 105 " id=" doos 105 "  value=" b "><label for=" doos 105 "> dos cátodos, un electrolito y un voltímetro </label></div>
                <div id="opc"><input  type="radio" name="preg 105 " id=" trees 105 "  value=" c "><label for=" trees 105 "> dos electrolitos, un ánodo y una celda </label></div>
                <div id="opc"><input  type="radio" name="preg 105 " id=" cuatroo 105 "  value=" d "><label for=" cuatroo 105 "> dos ánodos, un electrolito y un amperímetro </label></div>
                <div id="opc"><input  type="radio" name="preg 105 " id=" cincoo 105 "  value=" e "><label for=" cincoo 105 "> dos electrodos, un voltímetro y una celda </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                ¿Qué resistencia tiene una parrilla eléctrica de 120-V que consume una corriente de 25 A?<br/>
                <div id="opc"><input  type="radio" name="preg 106 " id=" unoo 106 "  value=" a "><label for=" unoo 106 "> 3,000 </label></div>
                <div id="opc"><input  type="radio" name="preg 106 " id=" doos 106 "  value=" b "><label for=" doos 106 "> 120 </label></div>
                <div id="opc"><input  type="radio" name="preg 106 " id=" trees 106 "  value=" c "><label for=" trees 106 "> 18 </label></div>
                <div id="opc"><input  type="radio" name="preg 106 " id=" cuatroo 106 "  value=" d "><label for=" cuatroo 106 "> 6 </label></div>
                <div id="opc"><input  type="radio" name="preg 106 " id=" cincoo 106 "  value=" e "><label for=" cincoo 106 "> 4.8 </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                ¿Cuánto trabajo se requiere para levantar a dos metros del suelo una estatua que pea 550 kg?<br/>
                <div id="opc"><input  type="radio" name="preg 107 " id=" unoo 107 "  value=" a "><label for=" unoo 107 "> 0.06 X 10 8 J </label></div>
                <div id="opc"><input  type="radio" name="preg 107 " id=" doos 107 "  value=" b "><label for=" doos 107 "> 1.09 X 102 J </label></div>
                <div id="opc"><input  type="radio" name="preg 107 " id=" trees 107 "  value=" c "><label for=" trees 107 "> 1.06 x 10 3 J </label></div>
                <div id="opc"><input  type="radio" name="preg 107 " id=" cuatroo 107 "  value=" d "><label for=" cuatroo 107 "> 2.33 X 10 5 J </label></div>
                <div id="opc"><input  type="radio" name="preg 107 " id=" cincoo 107 "  value=" e "><label for=" cincoo 107 "> 1.08 x 10 4 J </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                ¿Cuál de las siguientes propiedades de la luz no cambia cuando ésta pasa de un medio a otro?<br/>
                <div id="opc"><input  type="radio" name="preg 108 " id=" unoo 108 "  value=" a "><label for=" unoo 108 "> la dirección </label></div>
                <div id="opc"><input  type="radio" name="preg 108 " id=" doos 108 "  value=" b "><label for=" doos 108 "> la frecuencia </label></div>
                <div id="opc"><input  type="radio" name="preg 108 " id=" trees 108 "  value=" c "><label for=" trees 108 "> la inclinación </label></div>
                <div id="opc"><input  type="radio" name="preg 108 " id=" cuatroo 108 "  value=" d "><label for=" cuatroo 108 "> la longitud de onda </label></div>
                <div id="opc"><input  type="radio" name="preg 108 " id=" cincoo 108 "  value=" e "><label for=" cincoo 108 "> la velocidad </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                ¿Cuál será la energía cinética de un insecto que pesa 0.002 kg. y vuela a 0.4 m/s?<br/>
                <div id="opc"><input  type="radio" name="preg 109 " id=" unoo 109 "  value=" a "><label for=" unoo 109 "> 1.2 x10 –4 J </label></div>
                <div id="opc"><input  type="radio" name="preg 109 " id=" doos 109 "  value=" b "><label for=" doos 109 "> 1.3 x1O -2J </label></div>
                <div id="opc"><input  type="radio" name="preg 109 " id=" trees 109 "  value=" c "><label for=" trees 109 "> 1.5 x 10 -3 J </label></div>
                <div id="opc"><input  type="radio" name="preg 109 " id=" cuatroo 109 "  value=" d "><label for=" cuatroo 109 "> 1.6 x 10 -4 J </label></div>
                <div id="opc"><input  type="radio" name="preg 109 " id=" cincoo 109 "  value=" e "><label for=" cincoo 109 "> 1.8 x 10 -2 J </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                Si suponemos que tenemos un libro de física,. Que mide 25x20x5 ¿Cómo debemos colocarlo sobre la mesa para que ejerza la mejor presión sobre ella?<br/>
                <div id="opc"><input  type="radio" name="preg 110 " id=" unoo 110 "  value=" a "><label for=" unoo 110 "> sobre la portada o la contraportada </label></div>
                <div id="opc"><input  type="radio" name="preg 110 " id=" doos 110 "  value=" b "><label for=" doos 110 "> por alguno de sus lados más largos (lomo) </label></div>
                <div id="opc"><input  type="radio" name="preg 110 " id=" trees 110 "  value=" c "><label for=" trees 110 "> por alguno de sus lados más cortos (canto) </label></div>
                <div id="opc"><input  type="radio" name="preg 110 " id=" cuatroo 110 "  value=" d "><label for=" cuatroo 110 "> en alguno de sus vértices </label></div>
                <div id="opc"><input  type="radio" name="preg 110 " id=" cincoo 110 "  value=" e "><label for=" cincoo 110 "> de cualquier forma, ya que siempre tenemos la misma masa </label></div>
            </div><br><br><br><br><br><br>  <div class="radioex" >
                ¿Cómo se denomina a una onda longitudinal cuya frecuencia es superior a los 20 000Hz?<br/>
                <div id="opc"><input  type="radio" name="preg 111 " id=" unoo 111 "  value=" a "><label for=" unoo 111 "> Zumbido </label></div>
                <div id="opc"><input  type="radio" name="preg 111 " id=" doos 111 "  value=" b "><label for=" doos 111 "> ultrasonido </label></div>
                <div id="opc"><input  type="radio" name="preg 111 " id=" trees 111 "  value=" c "><label for=" trees 111 "> infrasonido </label></div>
                <div id="opc"><input  type="radio" name="preg 111 " id=" cuatroo 111 "  value=" d "><label for=" cuatroo 111 "> hipersonido </label></div>
                <div id="opc"><input  type="radio" name="preg 111 " id=" cincoo 111 "  value=" e "><label for=" cincoo 111 "> hipoacusia </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                El voltaje que se aplica a un aparato eléctrico por la corriente que consume, es una medida de su:<br/>
                <div id="opc"><input  type="radio" name="preg  112 " id="  unoo    112 "  value="  a   "><label for="  unoo    112 ">  capacitancia    </label></div>
                <div id="opc"><input  type="radio" name="preg   112 " id="  doos    112 "  value="  b   "><label for="  doos    112 ">  inductancia </label></div>
                <div id="opc"><input  type="radio" name="preg   112 " id="  trees   112 "  value="  c   "><label for="  trees   112 ">  resistencia </label></div>
                <div id="opc"><input  type="radio" name="preg   112 " id="  cuatroo 112 "  value="  d   "><label for="  cuatroo 112 ">  potencia    </label></div>
                <div id="opc"><input  type="radio" name="preg   112 " id="  cincoo  112 "  value="  e   "><label for="  cincoo  112 ">  ninguna de las anteriores   </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                Si un cuerpo está flotando en el agua su masa es igual a la…<br/>
                <div id="opc"><input  type="radio" name="preg   113 " id="  unoo    113 "  value="  a   "><label for="  unoo    113 ">  densidad entre el volumen del agua desalojada   </label></div>
                <div id="opc"><input  type="radio" name="preg   113 " id="  doos    113 "  value="  b   "><label for="  doos    113 ">  densidad por el volumen del agua desalojada </label></div>
                <div id="opc"><input  type="radio" name="preg   113 " id="  trees   113 "  value="  c   "><label for="  trees   113 ">  masa por el volumen del agua desalojada </label></div>
                <div id="opc"><input  type="radio" name="preg   113 " id="  cuatroo 113 "  value="  d   "><label for="  cuatroo 113 ">  densidad por el peso del agua desalojada    </label></div>
                <div id="opc"><input  type="radio" name="preg   113 " id="  cincoo  113 "  value="  e   "><label for="  cincoo  113 ">  peso del agua desalojada por volumen    </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                ¿Cómo se llama al efecto de percibir una frecuencia mayor que la emitida por una fuente sonora que se acerca?<br/>
                <div id="opc"><input  type="radio" name="preg   114 " id="  unoo    114 "  value="  a   "><label for="  unoo    114 ">  efecto joule    </label></div>
                <div id="opc"><input  type="radio" name="preg   114 " id="  doos    114 "  value="  b   "><label for="  doos    114 ">  efecto kelvin   </label></div>
                <div id="opc"><input  type="radio" name="preg   114 " id="  trees   114 "  value="  c   "><label for="  trees   114 ">  efecto Edison   </label></div>
                <div id="opc"><input  type="radio" name="preg   114 " id="  cuatroo 114 "  value="  d   "><label for="  cuatroo 114 ">  efecto Doppler  </label></div>
                <div id="opc"><input  type="radio" name="preg   114 " id="  cincoo  114 "  value="  e   "><label for="  cincoo  114 ">  efecto progresivo   </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                ¿ Qué relación hay entre la velocidad de la luz y la del sonido al aumentar la densidad del medio donde se propaga?<br/>
                <div id="opc"><input  type="radio" name="preg   115 " id="  unoo    115 "  value="  a   "><label for="  unoo    115 ">  ambos aumentan  </label></div>
                <div id="opc"><input  type="radio" name="preg   115 " id="  doos    115 "  value="  b   "><label for="  doos    115 ">  ambas disminuyen    </label></div>
                <div id="opc"><input  type="radio" name="preg   115 " id="  trees   115 "  value="  c   "><label for="  trees   115 ">  la velocidad de la luz aumenta y la velocidad del sonido disminuye  </label></div>
                <div id="opc"><input  type="radio" name="preg   115 " id="  cuatroo 115 "  value="  d   "><label for="  cuatroo 115 ">  la velocidad de la luz disminuye y la velocidad del sonido aumenta  </label></div>
                <div id="opc"><input  type="radio" name="preg   115 " id="  cincoo  115 "  value="  e   "><label for="  cincoo  115 ">  no sufren ninguna alteración    </label></div>
            </div><br><br><br><br><br><br> 
            <p style="font-size: 35px; text-align: center; color: #0288D1;">Quimica</p>
            <div class="radioex" >
                Los compuestos que dan como resultado = 2 NaCl<sub>2</sub> + CO<sub>2</sub>+ H<sub>2</sub>O son<br/>
                <div id="opc"><input  type="radio" name="preg   116 " id="  unoo    116 "  value="  a   "><label for="  unoo    116 ">  Na<sub>2</sub>C0<sub>3</sub>+HCl    </label></div>
                <div id="opc"><input  type="radio" name="preg   116 " id="  doos    116 "  value="  b   "><label for="  doos    116 ">  Na<sub>2</sub>C0<sub>3</sub> + 2HCl </label></div>
                <div id="opc"><input  type="radio" name="preg   116 " id="  trees   116 "  value="  c   "><label for="  trees   116 ">  Na<sub>2</sub>C0<sub>3</sub> +HCl<sub>2</sub>   </label></div>
                <div id="opc"><input  type="radio" name="preg   116 " id="  cuatroo 116 "  value="  d   "><label for="  cuatroo 116 ">  Na<sub>2</sub>HC0<sub>3</sub> +2 Cl </label></div>
                <div id="opc"><input  type="radio" name="preg   116 " id="  cincoo  116 "  value="  e   "><label for="  cincoo  116 ">  Na<sub>2</sub>CO + 2HCl </label></div>

            </div><br><br><br><br><br><br> 
            <div class="radioex" >
                AI enlace químico que se forma cuando un átomo aporta un orbital y un electrón se le conoce como:<br/>
                <div id="opc"><input  type="radio" name="preg   117 " id="  unoo    117 "  value="  a   "><label for="  unoo    117 ">  iónico  </label></div>
                <div id="opc"><input  type="radio" name="preg   117 " id="  doos    117 "  value="  b   "><label for="  doos    117 ">  covalente coordinado    </label></div>
                <div id="opc"><input  type="radio" name="preg   117 " id="  trees   117 "  value="  c   "><label for="  trees   117 ">  covalente   </label></div>
                <div id="opc"><input  type="radio" name="preg   117 " id="  cuatroo 117 "  value="  d   "><label for="  cuatroo 117 ">  electrovalente  </label></div>
                <div id="opc"><input  type="radio" name="preg   117 " id="  cincoo  117 "  value="  e   "><label for="  cincoo  117 ">  metálico    </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                ¿Cuál de las siguientes listas de elementos químicos está ordenada según su número o masa atómica?<br/>
                <div id="opc"><input  type="radio" name="preg   118 " id="  unoo    118 "  value="  a   "><label for="  unoo    118 ">  Hidrógeno, litio, sodio, potasio    </label></div>
                <div id="opc"><input  type="radio" name="preg   118 " id="  doos    118 "  value="  b   "><label for="  doos    118 ">  Fósforo, oxigeno, cobre, platino    </label></div>
                <div id="opc"><input  type="radio" name="preg   118 " id="  trees   118 "  value="  c   "><label for="  trees   118 ">  Nitrógeno, carbono, cloro, potasio  </label></div>
                <div id="opc"><input  type="radio" name="preg   118 " id="  cuatroo 118 "  value="  d   "><label for="  cuatroo 118 ">  Flúor, cromo, aluminio, yodo    </label></div>
                <div id="opc"><input  type="radio" name="preg   118 " id="  cincoo  118 "  value="  e   "><label for="  cincoo  118 ">  Carbono, mercurio, magnesio, azufre </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                La Valencia del fierro en FeSO4 es:<br/>
                <div id="opc"><input  type="radio" name="preg   119 " id="  unoo    119 "  value="  a   "><label for="  unoo    119 ">  +1  </label></div>
                <div id="opc"><input  type="radio" name="preg   119 " id="  doos    119 "  value="  b   "><label for="  doos    119 ">  +2  </label></div>
                <div id="opc"><input  type="radio" name="preg   119 " id="  trees   119 "  value="  c   "><label for="  trees   119 ">  +3  </label></div>
                <div id="opc"><input  type="radio" name="preg   119 " id="  cuatroo 119 "  value="  d   "><label for="  cuatroo 119 ">  +4  </label></div>
                <div id="opc"><input  type="radio" name="preg   119 " id="  cincoo  119 "  value="  e   "><label for="  cincoo  119 ">  +6  </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                ¿Cuál de las siguientes celdas se utiliza para transformar energía solar en eléctrica?<br/>
                <div id="opc"><input  type="radio" name="preg   120 " id="  unoo    120 "  value="  a   "><label for="  unoo    120 ">  Voltaica    </label></div>
                <div id="opc"><input  type="radio" name="preg   120 " id="  doos    120 "  value="  b   "><label for="  doos    120 ">  Electrolíticas  </label></div>
                <div id="opc"><input  type="radio" name="preg   120 " id="  trees   120 "  value="  c   "><label for="  trees   120 ">  Fotovoltaicas   </label></div>
                <div id="opc"><input  type="radio" name="preg   120 " id="  cuatroo 120 "  value="  d   "><label for="  cuatroo 120 ">  Galvánicas  </label></div>
                <div id="opc"><input  type="radio" name="preg   120 " id="  cincoo  120 "  value="  e   "><label for="  cincoo  120 ">  Catódica    </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                Se midió el pH de la lluvia precipitada en Acapulco, y se encontró que era de 8, de acuerdo con la clasificación del pH ¿a qué tipo de lluvia pertenece?<br/>
                <div id="opc"><input  type="radio" name="preg   121 " id="  unoo    121 "  value="  a   "><label for="  unoo    121 ">  Muy ácida   </label></div>
                <div id="opc"><input  type="radio" name="preg   121 " id="  doos    121 "  value="  b   "><label for="  doos    121 ">  Neutra  </label></div>
                <div id="opc"><input  type="radio" name="preg   121 " id="  trees   121 "  value="  c   "><label for="  trees   121 ">  Muy básica  </label></div>
                <div id="opc"><input  type="radio" name="preg   121 " id="  cuatroo 121 "  value="  d   "><label for="  cuatroo 121 ">  Moderadamente ácida </label></div>
                <div id="opc"><input  type="radio" name="preg   121 " id="  cincoo  121 "  value="  e   "><label for="  cincoo  121 ">  Moderadamente básica    </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                ¿a qué se le llama licuefacción?<br/>
                <div id="opc"><input  type="radio" name="preg   122 " id="  unoo    122 "  value="  a   "><label for="  unoo    122 ">  al cambio del estado gaseoso al estado líquido  </label></div>
                <div id="opc"><input  type="radio" name="preg   122 " id="  doos    122 "  value="  b   "><label for="  doos    122 ">  al cambio del estado sólido al gaseoso  </label></div>
                <div id="opc"><input  type="radio" name="preg   122 " id="  trees   122 "  value="  c   "><label for="  trees   122 ">  al cambio del estado líquido al gaseoso </label></div>
                <div id="opc"><input  type="radio" name="preg   122 " id="  cuatroo 122 "  value="  d   "><label for="  cuatroo 122 ">  al cambio del estado sólido al gaseoso sin pasar por el líquido </label></div>
                <div id="opc"><input  type="radio" name="preg   122 " id="  cincoo  122 "  value="  e   "><label for="  cincoo  122 ">  al cambio del estado sólido al líquido  </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                Cuando la oxidación ocurre de forma espontánea, al entrar en contacto el metal con el oxígeno y vapor de agua, al proceso se le denomina<br/>
                <div id="opc"><input  type="radio" name="preg   123 " id="  unoo    123 "  value="  a   "><label for="  unoo    123 ">  electro-deposición  </label></div>
                <div id="opc"><input  type="radio" name="preg   123 " id="  doos    123 "  value="  b   "><label for="  doos    123 ">  combustión  </label></div>
                <div id="opc"><input  type="radio" name="preg   123 " id="  trees   123 "  value="  c   "><label for="  trees   123 ">  explosión   </label></div>
                <div id="opc"><input  type="radio" name="preg   123 " id="  cuatroo 123 "  value="  d   "><label for="  cuatroo 123 ">  conducción  </label></div>
                <div id="opc"><input  type="radio" name="preg   123 " id="  cincoo  123 "  value="  e   "><label for="  cincoo  123 ">  corrosión   </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                Observa la siguiente fórmula desarrollada:<br>
                CH3 - CH2 - CH2 – OH<br>
                <div id="opc"><input  type="radio" name="preg   124 " id="  unoo    124 "  value="  a   "><label for="  unoo    124 ">  etanol  </label></div>
                <div id="opc"><input  type="radio" name="preg   124 " id="  doos    124 "  value="  b   "><label for="  doos    124 ">  butanol </label></div>
                <div id="opc"><input  type="radio" name="preg   124 " id="  trees   124 "  value="  c   "><label for="  trees   124 ">  eteno   </label></div>
                <div id="opc"><input  type="radio" name="preg   124 " id="  cuatroo 124 "  value="  d   "><label for="  cuatroo 124 ">  propanol    </label></div>
                <div id="opc"><input  type="radio" name="preg   124 " id="  cincoo  124 "  value="  e   "><label for="  cincoo  124 ">  propano </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                ¿Cuál es la concentración de una solución que está compuesta por 3 moles de NaO3 en dos litros de solución?<br/>
                <div id="opc"><input  type="radio" name="preg   125 " id="  unoo    125 "  value="  a   "><label for="  unoo    125 ">  6 molar </label></div>
                <div id="opc"><input  type="radio" name="preg   125 " id="  doos    125 "  value="  b   "><label for="  doos    125 ">  1.5 molar   </label></div>
                <div id="opc"><input  type="radio" name="preg   125 " id="  trees   125 "  value="  c   "><label for="  trees   125 ">  3 molar </label></div>
                <div id="opc"><input  type="radio" name="preg   125 " id="  cuatroo 125 "  value="  d   "><label for="  cuatroo 125 ">  0.66 molar  </label></div>
                <div id="opc"><input  type="radio" name="preg   125 " id="  cincoo  125 "  value="  e   "><label for="  cincoo  125 ">  5 molar </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                ¿Cuál es el nombre de las soluciones o compuestos que al estar en contacto con agua, permiten el paso de la corriente eléctrica?<br/>
                <div id="opc"><input  type="radio" name="preg   126 " id="  unoo    126 "  value="  a   "><label for="  unoo    126 ">  iones   </label></div>
                <div id="opc"><input  type="radio" name="preg   126 " id="  doos    126 "  value="  b   "><label for="  doos    126 ">  Bases   </label></div>
                <div id="opc"><input  type="radio" name="preg   126 " id="  trees   126 "  value="  c   "><label for="  trees   126 ">  conductores </label></div>
                <div id="opc"><input  type="radio" name="preg   126 " id="  cuatroo 126 "  value="  d   "><label for="  cuatroo 126 ">  electrolítos    </label></div>
                <div id="opc"><input  type="radio" name="preg   126 " id="  cincoo  126 "  value="  e   "><label for="  cincoo  126 ">  ácidos  </label></div>
            </div><br><br><br><br><br><br> <div class="radioex" >
                ¿Cuál de las siguientes sustancias gaseosas debe introducirse al pistón del motor de un automóvil, para que la combustión sea completa?<br/>
                <div id="opc"><input  type="radio" name="preg   127 " id="  unoo    127 "  value="  a   "><label for="  unoo    127 ">  O<sub>2</sub>   </label></div>
                <div id="opc"><input  type="radio" name="preg   127 " id="  doos    127 "  value="  b   "><label for="  doos    127 ">  H<sub>2</sub>   </label></div>
                <div id="opc"><input  type="radio" name="preg   127 " id="  trees   127 "  value="  c   "><label for="  trees   127 ">  CO  </label></div>
                <div id="opc"><input  type="radio" name="preg   127 " id="  cuatroo 127 "  value="  d   "><label for="  cuatroo 127 ">  CO<sub>2</sub>  </label></div>
                <div id="opc"><input  type="radio" name="preg   127 " id="  cincoo  127 "  value="  e   "><label for="  cincoo  127 ">  N<sub>2</sub>   </label></div>
            </div><br><br><br><br><br>

            <br>

            <center><button onclick="evaluar();">Evaluar</button></center><br><br>
        </div>

    </body>
</html>