<%-- 
    Document   : resultados
    Created on : 13/04/2017, 11:29:35 AM
    Author     : Caleb
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!doctype html>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null) {
        response.sendRedirect("index.html");
    }
    String xNombre = (String) sesion.getAttribute("nombre");
    int xId = (Integer) session.getAttribute("id");
    String xCorreo = (String) sesion.getAttribute("correo");
    validaciones.obtenerCalificaciones revisar = new validaciones.obtenerCalificaciones();
    int c1 = -1;
    int c2 = -1;
    int c3 = -1;
    int c4 = -1;
    int c5 = -1;
    int c6 = -1;
    int c7 = -1;
    int c8 = -1;
    int c9 = -1;
    int c10 = -1;
    int xaciertos = 0;

    int servicioSocial = -1;
    int ejecutiva = -1;
    int verbal = -1;
    int artistico = -1;
    int musical = -1;
    int organizacion = -1;
    int cientifico = -1;
    int calculo = -1;
    int mecanica = -1;
    int aireLibre = -1;

    int n1 = -1;
    int n2 = -1;
    int n3 = -1;
    int n4 = -1;
    int n5 = -1;
    int n6 = -1;
    int n7 = -1;
    int n8 = -1;
    int xnecesidades = 0;
    int xfalta = 0;

    if (!revisar.calificaExamen(xId) && !revisar.calificaAptitudes(xId) && !revisar.calificaNecesidades(xId)) {
        response.sendRedirect("hacerExamenes.jsp");
    } else {
        //tipo examen
        c1 = (Integer) sesion.getAttribute("c1");
        c2 = (Integer) sesion.getAttribute("c2");
        c3 = (Integer) sesion.getAttribute("c3");
        c4 = (Integer) sesion.getAttribute("c4");
        c5 = (Integer) sesion.getAttribute("c5");
        c6 = (Integer) sesion.getAttribute("c6");
        c7 = (Integer) sesion.getAttribute("c7");
        c8 = (Integer) sesion.getAttribute("c8");
        c9 = (Integer) sesion.getAttribute("c9");
        c10 = (Integer) sesion.getAttribute("c10");
        xaciertos = c1 + c2 + c3 + c4 + c5 + c6 + c7 + c8 + c9 + c10;

        //aptitudes
        servicioSocial = (Integer) session.getAttribute("servicioSocial");
        ejecutiva = (Integer) session.getAttribute("ejecutiva");
        verbal = (Integer) session.getAttribute("verbal");
        artistico = (Integer) session.getAttribute("artistico");
        musical = (Integer) session.getAttribute("musical");
        organizacion = (Integer) session.getAttribute("organizacion");
        cientifico = (Integer) session.getAttribute("cientifico");
        calculo = (Integer) session.getAttribute("calculo");
        mecanica = (Integer) session.getAttribute("mecanica");
        aireLibre = (Integer) session.getAttribute("aireLibre");

        //necesidades
        n1 = (Integer) sesion.getAttribute("n1");
        n2 = (Integer) sesion.getAttribute("n2");
        n3 = (Integer) sesion.getAttribute("n3");
        n4 = (Integer) sesion.getAttribute("n4");
        n5 = (Integer) sesion.getAttribute("n5");
        n6 = (Integer) sesion.getAttribute("n6");
        n7 = (Integer) sesion.getAttribute("n7");
        n8 = (Integer) sesion.getAttribute("n8");
        xnecesidades = n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8;
        xfalta = 8 - xnecesidades;
    }
%>
<html lang="es">
    <head>
        <title>Resultados</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="imagenes/icon.ico" />
        <script type="text/javascript" src="scripts/graficas/loader.js"></script>
        <script type="text/javascript" src="scripts/graficas/jquery-1.12.0.min.js"></script>
        <script type="text/javascript" src="scripts/graficas/dist/Chart.bundle.min.js"></script>
        <script>
            $(document).ready(function () {
                var datos = {
                    type: "pie",
                    data: {
                        datasets: [{
                                data: [
            <%=servicioSocial%>,
            <%=ejecutiva%>,
            <%=verbal%>,
            <%=artistico%>,
            <%=musical%>,
            <%=organizacion%>,
            <%=cientifico%>,
            <%=calculo%>,
            <%=mecanica%>,
            <%=aireLibre%>,
                                ],
                                backgroundColor: [
                                    "#E53935",
                                    "#D81B60",
                                    "#8E24AA",
                                    "#5E35B1",
                                    "#3949AB",
                                    "#1E88E5",
                                    "#039BE5",
                                    "#00ACC1",
                                    "#00897B",
                                    "#43A047",
                                ],
                            }],
                        labels: [
                            "Servicio Social",
                            "Ejecutiva",
                            "Verbal",
                            "Artístico",
                            "Musical",
                            "Organización",
                            "Científico",
                            "Cálculo",
                            "Mecánica",
                            "Trabajo al aire libre",
                        ]
                    },
                    options: {
                        responsive: false,
                    }
                };

                var aptitudes = document.getElementById('aptitudes').getContext('2d');
                window.pie = new Chart(aptitudes, datos);


                var canvas = document.getElementById('myChart');
                var data = {
                    labels: ["Habilidad Verbal", "Habilidad Matemática", "Español", "AprilMatemáticas", "Geografía", "Biología", "Química", "Física", "História", "Formación Civia y Ética"],
                    datasets: [
                        {
                            label: "Aciertos",
                            backgroundColor: "rgba(255,99,132,0.2)",
                            borderColor: "rgba(255,99,132,1)",
                            borderWidth: 2,
                            hoverBackgroundColor: "rgba(255,99,132,0.4)",
                            hoverBorderColor: "rgba(255,99,132,1)",
                            data: [<%=c1%>, <%=c2%>, <%=c3%>, <%=c4%>, <%=c5%>, <%=c6%>, <%=c7%>, <%=c8%>, <%=c9%>, <%=c10%>],
                        }
                    ]
                };
                var option = {
                    animation: {
                        duration: 5000
                    }


                };


                var myBarChart = Chart.Bar(canvas, {
                    data: data,
                    options: {
                        responsive: false
                    }
                });


            });
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                var canvas = document.getElementById('myChart');
                var data = {
                    labels: ["Habilidad Verbal", "Habilidad Matemática", "Español", "Matemáticas", "Geografía", "Biología", "Química", "Física", "História", "Formación Civia y Ética"],
                    datasets: [
                        {
                            label: "Aciertos",
                            backgroundColor: "rgba(255,99,132,0.2)",
                            borderColor: "rgba(255,99,132,1)",
                            borderWidth: 2,
                            hoverBackgroundColor: "rgba(255,99,132,0.4)",
                            hoverBorderColor: "rgba(255,99,132,1)",
                            data: [<%=c1%>, <%=c2%>, <%=c3%>, <%=c4%>, <%=c5%>, <%=c6%>, <%=c7%>, <%=c8%>, <%=c9%>, <%=c10%>],
                        }
                    ]
                };
                var option = {
                    animation: {
                        duration: 5000
                    }


                };


                var myBarChart = Chart.Bar(canvas, {
                    data: data,
                    options: {
                        responsive: false
                    }
                });
            });
        </script>
        <script type="text/javascript">
            google.charts.load("current", {packages: ["corechart"]});
            google.charts.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Balance', 'Porcentaje'],
                    ['Necesidad', <%=xnecesidades%>],
                    ['Completar', <%=xfalta%>],
                ]);

                var options = {
                    pieHole: 0.4,
                    legend: 'none',
                };

                var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
                chart.draw(data, options);
            }
        </script>

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
            .cecyt9{
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 700px;
                height: 310px;
                margin:15px; 
                transition: all 500ms ease;
            }
            .cecyt9:hover{
                border-color: #2979FF;
            }
            .fondo9{
                background-image: URL("imagenes/Escuelas/Cecyt1/cecyt9.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            .medio9{
                background-color: #2979FF;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            .abajo9{
                background-color: #2962FF;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 30px;
                text-align: center;
            }
            .abajo9:hover{
                color: #2962FF;
                background-color: whitesmoke;
                font-size: 32px;
                transition: all 500ms ease;
            }
            .b9{
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
            .b9:hover {
                background: rgba(0,0,0,0);
                color: #2979FF;
                box-shadow: inset 0 0 0 3px #2979FF;
            }
            .clear{
                clear: both;
            }
            .cecyt3{
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 700px;
                height: 310px;
                margin:15px; 
                transition: all 500ms ease;
            }
            .cecyt3:hover{
                border-color: #4A148C;
            }
            .fondo3{
                background-image: URL("imagenes/Escuelas/Cecyt1/cecyt3.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            .medio3{
                background-color: #6A1B9A;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            .abajo3{
                background-color: #4A148C;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 30px;
                text-align: center;
            }
            .abajo3:hover{
                color: #4A148C;
                background-color: whitesmoke;
                font-size: 32px;
            }
            .cecyt11{
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 700px;
                height: 310px;
                margin:15px; 
                transition: all 500ms ease;
            }
            .cecyt11:hover{
                border-color: #FF4081;
            }
            .fondo11{
                background-image: URL("imagenes/Escuelas/Cecyt1/cecyt11.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            .medio11{
                background-color: #FF4081;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            .abajo11{
                background-color: #C51162;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 30px;
                text-align: center;
            }
            .abajo11:hover{
                color: #C51162;
                font-size: 32px;
                background-color: whitesmoke;
            }
            .cecyt6:hover{
                border-color: #EF6C00;
            }
            .fondo6{
                background-image: URL("imagenes/Escuelas/Cecyt1/cecyt6.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            .medio6{
                background-color: #EF6C00;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            .abajo6{
                background-color: #E65100;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 30px;
                text-align: center;
            }
            .abajo6:hover{
                color: #E65100;
                background-color: whitesmoke;
                font-size: 32px;
            }
            .cecyt6{
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 700px;
                height: 310px;
                margin:15px; 
                transition: all 500ms ease;
            }
            .cecyt7{
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 700px;
                height: 310px;
                margin:15px; 
                transition: all 500ms ease;
            }
            .cecyt7:hover{
                border-color: #5D4037;
            }
            .fondo7{
                background-image: URL("imagenes/Escuelas/Cecyt1/cecyt7.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            .medio7{
                background-color: #5D4037;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            .abajo7{
                background-color: #3E2723;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 30px;
                text-align: center;
            }
            .abajo7:hover{
                color: #3E2723;
                background-color: whitesmoke;
                font-size: 32px;
            }
            .cecyt8{
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 700px;
                height: 310px;
                margin:15px; 
                transition: all 500ms ease;
            }
            .cecyt8:hover{
                border-color: #546E7A;
            }
            .fondo8{
                background-image: URL("imagenes/Escuelas/Cecyt1/cecyt8.JPG");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            .medio8{
                background-color: #546E7A;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            .abajo8{
                background-color: #37474F;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 30px;
                text-align: center;
            }
            .abajo8:hover{
                color: #37474F;
                background-color: whitesmoke;
                font-size: 32px;
            }
            .cecyt5{
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 700px;
                height: 310px;
                margin:15px; 
                transition: all 500ms ease;
            }
            .cecyt5:hover{
                border-color: #388E3C;
            }
            .fondo5{
                background-image: URL("imagenes/Escuelas/Cecyt1/cecyt5.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            .medio5{
                background-color: #388E3C;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            .abajo5{
                background-color: #1B5E20;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 30px;
                text-align: center;
            }
            .abajo5:hover{
                color: #1B5E20;
                background-color: whitesmoke;
                font-size: 32px;
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
        <div id="titulo"><br><br><br> Tus resultados<br><br><br></div>
        <div style="color: #00C853; font-size: 35px; text-align: center; padding-top: 60px; padding-left: 30px; padding-right: 30px; padding-bottom: 60px;">
            <div id="resAptitudes" style="background-color: gray;">
                <div id="infoAptitudes" style=" float: left; text-align: left;">
                    <div style="color: #00C853; font-size: 60px; width: 100px; padding-top: 150px;"><center><span style="color: gray; font-size: 20px;">En base a</span><br>Aptitudes:</center></div>
                    <div style="color: gray; font-size: 30px; padding-left: 300px; margin-top: -200px;">
                        <div>Servicio Social: <span style="font-size: 40px;"><span style="color: #E53935;"><%=servicioSocial%></span>/6</span><br></div>
                        Ejecutiva: <span style="font-size: 40px;"><span style="color: #D81B60;"><%=ejecutiva%></span>/6</span><br>
                        Verbal: <span style="font-size: 40px;"><span style="color: #8E24AA;"><%=verbal%></span>/6</span><br>
                        Artístico: <span style="font-size: 40px;"><span style="color: #5E35B1;"><%=artistico%></span>/6</span><br>
                        Musical: <span style="font-size: 40px;"><span style="color: #3949AB;"><%=musical%></span>/6</span><br>
                        Organización: <span style="font-size: 40px;"><span style="color: #1E88E5;"><%=organizacion%></span>/6</span><br>
                        Científico: <span style="font-size: 40px;"><span style="color: #039BE5;"><%=cientifico%></span>/6</span><br>
                        Cálculo: <span style="font-size: 40px;"><span style="color: #00ACC1;"><%=calculo%></span>/6</span><br>
                        Mecánica: <span style="font-size: 40px;"><span style="color: #00897B;"><%=mecanica%></span>/6</span><br>
                        Trabajo al aire libre: <span style="font-size: 40px;"><span style="color: #43A047;"><%=aireLibre%></span>/6</span><br>
                    </div>
                </div>
                <div id="canvas" style="">
                    <canvas id="aptitudes" width="550" height="400" style="float: right; margin-top: 50px;"></canvas>
                </div>
            </div>
        </div>
        <div class="clear">
            <br><br><br><br><br><br><br><br>
            <div style="">
                <center><div style="color: #00C853; font-size: 60px;"><span style="color: gray; font-size: 20px;">Acorde con tu</span><br>Tipo exámen:</div><br>
                    <div style="color: gray; font-size: 45px">Total de aciertos: <span style="color: rgba(255,99,132,1);"><%=xaciertos%></span><span style="font-size: 20px;">/127</span></div>
                    <div id="canvas" style="">
                        <canvas id="myChart" width="1000" height="600"></canvas>
                    </div></center>
            </div>
            <br><br><br><br>
            <div>
                <center><div style="color: #00C853; font-size: 60px;"><span style="color: gray; font-size: 20px;">De acuerdo a</span><br>Tus necesidades</div></center>
                <div id="donutchart" style="width: 500px; height: 500px; float: left; position: absolute; padding-left: 90px;"></div>
                <div style="color: gray; font-size: 45px; float: right; padding-right: 200px; padding-top: 200px;">Balance de necesidades:<span style="color: #1E88E5;"><%=xnecesidades%></span><span style="font-size: 25px;">/8</span></div><br>
            </div>
            <div class="clear"></div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <center><div style="color: gray; font-size: 35px;">En base a tus aciertos que obtuviste en el tipo examen, esta es tu mejor opción</div></center>
            <center>
                <div id="escuela">
                    <div id="cecytx">
                        <div id="fondox">

                        </div>
                        <div id="mediox">

                        </div>
                        <div id="abajox">


                        </div>
                    </div>
                </div>
            </center>

            <script>

                var aciertos = <%=xaciertos%>;
                if (aciertos >= 108) {
                    document.getElementById("cecytx").className = 'cecyt9';
                    document.getElementById("fondox").className = 'fondo9';
                    document.getElementById("mediox").className = 'medio9';
                    document.getElementById("abajox").className = 'abajo9';
                    document.getElementById("mediox").innerHTML = "Cecyt 9";
                    document.getElementById("abajox").innerHTML = "<br>Juan de Dios Batiz";//
                } else {
                    if (aciertos <= 107 && aciertos >= 100) {
                        document.getElementById("cecytx").className = 'cecyt3';
                        document.getElementById("fondox").className = 'fondo3';
                        document.getElementById("mediox").className = 'medio3';
                        document.getElementById("abajox").className = 'abajo3';
                        document.getElementById("mediox").innerHTML = "Cecyt 3";
                        document.getElementById("abajox").innerHTML = "<br>Estanislao Ramirez Ruiz";//
                    } else {
                        if (aciertos <= 99 && aciertos >= 96) {
                            document.getElementById("cecytx").className = 'cecyt6';
                            document.getElementById("fondox").className = 'fondo6';
                            document.getElementById("mediox").className = 'medio6';
                            document.getElementById("abajox").className = 'abajo6';
                            document.getElementById("mediox").innerHTML = "Cecyt 6";
                            document.getElementById("abajox").innerHTML = "<br>Miguel Othon de Mendizabal";//
                        } else {
                            if (aciertos <= 95 && aciertos >= 90) {
                                document.getElementById("cecytx").className = 'cecyt7';
                                document.getElementById("fondox").className = 'fondo7';
                                document.getElementById("mediox").className = 'medio7';
                                document.getElementById("abajox").className = 'abajo7';
                                document.getElementById("mediox").innerHTML = "Cecyt 7";
                                document.getElementById("abajox").innerHTML = "<br>Cuahutemoc";//
                            } else {
                                if (aciertos <= 89 && aciertos >= 80) {
                                    document.getElementById("cecytx").className = 'cecyt8';
                                    document.getElementById("fondox").className = 'fondo8';
                                    document.getElementById("mediox").className = 'medio8';
                                    document.getElementById("abajox").className = 'abajo8';
                                    document.getElementById("mediox").innerHTML = "Cecyt 8";
                                    document.getElementById("abajox").innerHTML = "<br>Narciso Bassols Garcia";//
                                } else {
                                    if (aciertos <= 79 && aciertos >= 71) {
                                        document.getElementById("cecytx").className = 'cecyt5';
                                        document.getElementById("fondox").className = 'fondo5';
                                        document.getElementById("mediox").className = 'medio5';
                                        document.getElementById("abajox").className = 'abajo5';
                                        document.getElementById("mediox").innerHTML = "Cecyt 5";
                                        document.getElementById("abajox").innerHTML = "<br>Benito Juarez Garcia";
                                    } else
                                    {
                                        if (aciertos <= 70 && aciertos >= 0) { // en honor a ubaldo xdddd
                                            document.getElementById("cecytx").className = 'cecyt11';
                                            document.getElementById("fondox").className = 'fondo11';
                                            document.getElementById("mediox").className = 'medio11';
                                            document.getElementById("abajox").className = 'abajo11';
                                            document.getElementById("mediox").innerHTML = "Cecyt 11";
                                            document.getElementById("abajox").innerHTML = "<br>Willfrido Massieu Perez";//
                                        }
                                    }
                                }
                            }
                        }
                    }

                }





            </script>
    </body>
</html>
