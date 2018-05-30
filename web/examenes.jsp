<%-- 
    Document   : examanes
    Created on : 13/04/2017, 11:25:44 AM
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
    int totalc = -1;
    String escuela = "nada";

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
    int totalAp = -1;
    
    int n1 = -1;
    int n2 = -1;
    int n3 = -1;
    int n4 = -1;
    int n5 = -1;
    int n6 = -1;
    int n7 = -1;
    int n8 = -1;
    int totaln = -1;

    if (revisar.calificaExamen(xId)) {
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
        totalc = c1 + c2 + c3 + c4 + c5 + c6 + c7 + c8 + c9 + c10;
        if(totalc >= 108){
            escuela = "Cecyt 9";
        }else
        if(totalc <= 107 && totalc >= 100){
            escuela = "Cecyt3";
        }else
        if(totalc <= 99 && totalc >= 96){
            escuela = "Cecyt6";
        }else
        if(totalc <= 95 && totalc >= 90){
            escuela = "Cecyt7";
        }else
        if(totalc <= 89 && totalc >= 80){
            escuela = "Cecyt8";
        }else
        if(totalc <= 79 && totalc >= 71){
            escuela = "Cecyt5";
        }else
        if(totalc <= 70 && totalc >= 0){
            escuela = "Cecyt11";
        }
        sesion.setAttribute("totalc", totalc);
        sesion.setAttribute("escuela", escuela);
        
    }
    if (revisar.calificaAptitudes(xId)) {
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
        totalAp = servicioSocial + ejecutiva + verbal + artistico + musical + organizacion + cientifico + calculo + mecanica + aireLibre;
        sesion.setAttribute("totalAp", totalAp);
    }
    if(revisar.calificaNecesidades(xId)){
        n1 = (Integer) sesion.getAttribute("n1");
        n2 = (Integer) sesion.getAttribute("n2");
        n3 = (Integer) sesion.getAttribute("n3");
        n4 = (Integer) sesion.getAttribute("n4");
        n5 = (Integer) sesion.getAttribute("n5");
        n6 = (Integer) sesion.getAttribute("n6");
        n7 = (Integer) sesion.getAttribute("n7");
        n8 = (Integer) sesion.getAttribute("n8");
        totaln = n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8;
        sesion.setAttribute("totaln", totaln);
   }
%>
<html lang="es">
    <head>
        <title>Examenes</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="imagenes/icon.ico" />
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
            
            html{
                height:100%;
            }
            body
            {
                background-color: #0288D1;
                align-content: center;
                font-family: Arial;
                margin:0;
                animation-duration: 1.5s;
                animation-name: atenuar;
                height:100%;
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
                transition: all 700ms ease;
                font-size: 22px;
            }
            button:hover {
                background: rgba(0,0,0,0);
                color: #0288D1;
                box-shadow: inset 0 0 0 3px #0288D1;
                font-size: 24px;
            }
            #bot, #historial 
            {
                border: none;
                background: rgba(0,0,0,0);
                color: white;;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 700ms ease;
                font-size: 22px;
            }
            #bot:hover, #historial:hover {
                background: rgba(0,0,0,0);
                color: white;
                box-shadow: inset 0 0 0 3px white;
                font-size: 24px;
            }
            #content{
                margin:0 auto;
                position:relative;
                width: 100%;
            }
            #cuadro1
            {
                background-color: #0288D1;
                color: white;
                font-size: 35px;
                text-align: center;
                width: 23%;
                height: 100%;
                float: left;
                position: fixed;  /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/

            }
            #cuadro2
            {
                background-color: white;
                color: white;
                width: 77%;
                height: 100%;
                float: right;
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
            .opcion{ 
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 1000px;
                height: 310px;
                margin:15px; 
                float:left;
                transition: all 500ms ease;
            }
            .opcion:hover{ 
                border-color: #0288D1;
            }
            .opcionVerde{
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 1000px;
                height: 310px;
                margin:15px; 
                float:left;
                transition: all 500ms ease;
            }
            .opcionVerde:hover{
                border-color: #00C853;
            }
            .texto{
                background-color: #0288D1;
                position: absolute;
                height: 310px;
                width: 300px;
                font-family: Arial;
                font-size: 27px;
                text-align: center;
                color: white;
                transition: all 500ms ease;
                box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }
            #imagen1, #imagen2, #imagen3  {
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                width: 700px;
                height: 310px;
                float: right;
                transition: all 500ms ease;

            }
            .texto:hover{
                color: #0288D1;
                background-color: white;
                transition: all 500ms ease;
            }
            .textoVerde{
                background-color: #00C853;
                position: absolute;
                height: 310px;
                width: 300px;
                font-family: Arial;
                font-size: 27px;
                text-align: center;
                color: white;
                transition: all 500ms ease;
                box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }
            .textoVerde:hover{
                color: #00C853;
                background-color: white;
                transition: all 500ms ease;
                font-size: 27px;
            }
        </style>
    </head>
    <body>
        <ul>
            <li><a href="paginaPrincipal.jsp">Inicio</a></li>
            <li><a href="escuelas.jsp">Nuestras escuelas</a></li>
            <li><a class="active" href="#Examenes"><font color="white">Examenes y cuestionarios</font></a></li>
            <li><a href="checaResultados.jsp">Resultados</a></li>
            <li style="float:right"><a href="destruyeSesion.jsp">Cerrar Sesión</a></li>
            <li style="float:right"><a href="obtenerDatos.jsp"><%=xNombre%></a></li>
        </ul>
        <div id="content">
            <div id="cuadro1">
                <br><br><br><br><br><br>Examenes y <br>cuestionarios<br><br>
                <center>
                    <a href="historial.jsp"><button id="historial">Ver historial</button></a>
                    <span id="nuevo" style="display: none; padding-top: 10px;">
                        <a href="guardar.jsp"><button id="bot">Volver a hacer examenes</button><br></a>
                    </span>
                </center>
            </div>
            <div id="cuadro2">
                <div id="contenedor">
                    <div id="opcion1" class="opcion">
                        <div id="imagen1" style="background-image: URL('imagenes/Principal/cuestionarioo.jpg'); ">
                            <br><br><br>
                        </div>
                        <div id="texto1" class="texto" >
                            <br><br><br><br>Un cuestionario de <br>aptitudes<br><br>
                            <div id="zelda1"><a href="examenes/aptitudes.jsp"><button>Hacer Cuestionario >></button></a></div>
                        </div>
                    </div>
                    <div id="opcion2" class="opcion">
                        <div id="imagen2" style="background-image: URL('imagenes/Principal/exameen.jpg'); ">
                            <br><br><br>
                        </div>
                        <div id="texto2" class="texto">
                            <br><br><br><br>Una prueba tipo <br>examen<br><br>
                            <div id="zelda2"><a href="examenes/tipoExamen.jsp"><button>Hacer Examen >></button></a></div>
                        </div>
                    </div>
                    <div id="opcion3" class="opcion">
                        <div id="imagen3" style="background-image: URL('imagenes/Principal/Encuesta.jpg'); ">
                            <br><br><br>
                        </div>
                        <div id="texto3" class="texto">
                            <br><br><br><br>Un cuestionario de <br>necesidades<br><br>
                            <div id="zelda3"><a href="examenes/necesidades.jsp"><button>Hacer Cuestionario >></button></a></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>

    </div>
    <script>
        var aptitudes = <%=servicioSocial%>;
        var examen = <%=c1%>;
        var necesidades = <%=n1%>;
        
        if(aptitudes !== -1){
            document.getElementById("texto1").className = 'textoVerde';
            document.getElementById("zelda1").className = 'hipervinculoverde';
            document.getElementById("opcion1").className = 'opcionVerde';
            document.getElementById("zelda1").innerHTML = "¡Contestado!";
        }

        if(examen !== -1){
            document.getElementById("texto2").className = 'textoVerde';
            document.getElementById("zelda2").className = 'hipervinculoverde';
            document.getElementById("opcion2").className = 'opcionVerde';
            document.getElementById("zelda2").innerHTML = "<span>¡Contestado!</span>";
        }
        
        if(necesidades !== -1){
            document.getElementById("texto3").className = 'textoVerde';
            document.getElementById("zelda3").className = 'hipervinculoverde';
            document.getElementById("opcion3").className = 'opcionVerde';
            document.getElementById("zelda3").innerHTML = "<span>¡Contestado!</span>";
        }
        if(aptitudes !== -1 && examen !== -1 && necesidades !== -1){
            document.getElementById("nuevo").style.display = "block";
        }
    </script>
</body>
</html>
