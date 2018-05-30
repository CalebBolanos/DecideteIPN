<%-- 
    Document   : cecyt9
    Created on : 8/05/2017, 04:07:20 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!doctype html>
<%
    HttpSession egresado = request.getSession();
    if (egresado.getAttribute("correo") == null && egresado.getAttribute("id") == null) {
        response.sendRedirect("../.");
    }
    String xNombre = (String) egresado.getAttribute("nombre");
    int escuela = 9;
    egresado.setAttribute("escComentario", escuela);
%>

<%
    String xxxD = "";
%>

<%
    String error = request.getParameter("e");
    if (error != null) {
        xxxD = error;
    }
%>
<html lang="es">
    <head>
        <title>Cecyt 9</title>
        <meta charset="UTF-8">
        <script></script>
        <style>
            @keyframes slidein {
                from {
                    margin-left: 100%;
                    width: 500%
                }

                to {
                    margin-right: 0%;
                    width: 100%;
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
                color: gray;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: silver;
            }

            .active {
                background-color: gray;
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
            #titulo
            {
                background-image: URL("../../imagenes/Escuelas/Cecyt1/cecyt9.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                background-attachment: fixed;
                color: white;
                font-size: 95px;
                text-align: center;

            }
            #opaco{
                background-color: black;
                border: 1px solid black;
                opacity: 0.6;
                filter: alpha(opacity=100); 
            }
            #subtitulo{
                font-size: 30px;
                color: #2979FF;/*color*/
                margin: 20px;
                margin-bottom: 0px;
            }
            hr{
                margin-left: 10px;
                margin-right: 10px;
                border: 0;
                height: 0;
            }
            #uno{
                border-top: 1px solid gray;
                border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            }
            #texto{
                margin: 20px;
                font-size: 20px;
            }
            #textoA{
                margin: 20px;
                font: bold 30px/100px Arial, Serif;
            }
            #contenedor{ 
                margin-left: 50px;
                margin-right: 50px;
                margin-top: 20px;
            } 
            #cuadrox{ 
                border: 5px solid #2979FF;
                border-radius: 7px;
                background-image: URL("carreras/maquinas9.png");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                color: white;
                width: 350px;
                height: 205px;
                margin:15px; 
                float:left;
                transition: all 500ms ease;
                font-size: 30px;
                text-align: center;
            } 
            #cuadrox1{ 
                border: 5px solid #2979FF;
                border-radius: 7px;
                background-image: URL("carreras/programacion.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                color: white;
                width: 350px;
                height: 205px;
                margin:15px; 
                float:left;
                transition: all 500ms ease;
                font-size: 30px;
                text-align: center;
            } 
            #cuadrox2{ 
                border: 5px solid #2979FF;
                border-radius: 7px;
                background-image: URL("carreras/sistemas9.png");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                color: white;
                width: 350px;
                height: 205px;
                margin:15px; 
                float:left;
                transition: all 500ms ease;
                font-size: 30px;
                text-align: center;
            } 

            .clear { 
                clear:both; 
            }
            #grande{
                position:relative;
                top:-170px;
                background-color: white;
            }
            #pricing-table {
                margin: 60px auto;
                margin-left: 25%;
                text-align: center;
                width: 892px; /* total computed width = 222 x 3 + 226 */
            }

            #pricing-table .plan {
                font: 12px 'Lucida Sans', 'trebuchet MS', Arial, Helvetica;
                text-shadow: 0 1px rgba(255,255,255,.8);        
                background: #2979FF;      
                border: 1px solid #2962FF;
                color: #2962FF;
                padding: 20px;
                width: 180px; /* plan width = 180 + 20 + 20 + 1 + 1 = 222px */      
                float: left;
                position: relative;
            }

            #pricing-table #most-popular {
                z-index: 2;
                top: -13px;
                border-width: 3px;
                padding: 30px 20px;
                -moz-border-radius: 5px;
                -webkit-border-radius: 5px;
                border-radius: 5px;
                -moz-box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px -10px rgba(0, 0, 0, .15);
                -webkit-box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px -10px rgba(0, 0, 0, .15);
                box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px -10px rgba(0, 0, 0, .15);    
            }


            #pricing-table h3 {
                font-size: 20px;
                font-weight: normal;
                padding: 20px;
                margin: -20px -20px 50px -20px;
                background-color: #eee;
                background-image: -moz-linear-gradient(#fff,#eee);
                background-image: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#eee));    
                background-image: -webkit-linear-gradient(#fff, #eee);
                background-image: -o-linear-gradient(#fff, #eee);
                background-image: -ms-linear-gradient(#fff, #eee);
                background-image: linear-gradient(#fff, #eee);
            }

            #pricing-table #most-popular h3 {
                background-color: #ddd;
                background-image: -moz-linear-gradient(#eee,#ddd);
                background-image: -webkit-gradient(linear, left top, left bottom, from(#eee), to(#ddd));    
                background-image: -webkit-linear-gradient(#eee, #ddd);
                background-image: -o-linear-gradient(#eee, #ddd);
                background-image: -ms-linear-gradient(#eee, #ddd);
                background-image: linear-gradient(#eee, #ddd);
                margin-top: -30px;
                padding-top: 30px;
                -moz-border-radius: 5px 5px 0 0;
                -webkit-border-radius: 5px 5px 0 0;
                border-radius: 5px 5px 0 0; 		
            }

            #pricing-table .plan:nth-child(1) h3 {
                -moz-border-radius: 5px 0 0 0;
                -webkit-border-radius: 5px 0 0 0;
                border-radius: 5px 0 0 0;       
            }

            #pricing-table .plan:nth-child(4) h3 {
                -moz-border-radius: 0 5px 0 0;
                -webkit-border-radius: 0 5px 0 0;
                border-radius: 0 5px 0 0;       
            }	

            #pricing-table h3 span {
                display: block;
                font: bold 25px/100px Georgia, Serif;
                color: #777;
                background: #fff;
                border: 5px solid #fff;
                height: 100px;
                width: 100px;
                margin: 10px auto -65px;
                -moz-border-radius: 100px;
                -webkit-border-radius: 100px;
                border-radius: 100px;
                -moz-box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;
                -webkit-box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;
                box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;
            }



            .clear:before, .clear:after {
                content:"";
                display:table
            }

            .clear:after {
                clear:both
            }

            .clear {
                zoom:1
            }
            textarea{
                font-family: Arial;
                font-size: 20px;
                border: 2px dashed gray;
                resize: none;
                width:80%;
                height:60px;
                transition: all 500ms ease;
                outline: none;
            }
            textarea:hover{
                border: 3px solid #2962FF;
                width:90%;
                height: 90px;
                outline: none;
                font-size: 23px;
                border-radius: 3px;
            }
            textarea:focus{
                border: 3px solid #2962FF;
                width:90%;
                height: 90px;
                outline: none;
                font-size: 23px;
                border-radius: 3px;
            }
            input[type=submit]
            {
                border: none;
                background: #2962FF;
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
                color: #2962FF;
                box-shadow: inset 0 0 0 3px #2962FF;
            }
            .tarjeta{
                border: 3px solid gray;
                border-radius: 7px;
                background-color: whitesmoke; 
                width: 80%;
                margin: 15px; 
                float:left;
                transition: all 500ms ease;
                
            }
            .cabeza{
                background-color: #2962FF;
                height: 60px;

            }
            .nombre{
                width: 65%;
                float: left;
                height: 30px;
                text-align: left;
                padding-top: 13px;
                font-size: 29px;
                color: white;
            }
            .info{
                width: 30%;
                float: right;
                height: 30px;
                text-align: right;
                padding-top: 2px;
                padding-right: 1px;
                font-size: 24px;
                color: white;
            }
            .cuerpo{
                float: bottom;
                font-size: 20px;
                text-align: left;
                padding-bottom: 10px;
                padding-top: 3px;
                padding-left: 3px;

                
            }
            .clear{
                clear: both;

            }
            .peq{
                font-size: 15px;
                color: whitesmoke;
            }
            #coment{
                position:relative;
                background-color: white;
            }
        </style>
    </head>
    <body>
        <ul>
            <li><a href="../paginaPrincipal.jsp">Inicio</a></li>
            <li><a href="../escuelas.jsp" class="active"><font color="white">Nuestras escuelas</font></a></li>
            <li style="float:right"><a href="../destruyeSesion.jsp">Cerrar Sesión</a></li>
            <li style="float:right"><a href="../obtenerData.jsp"><%=xNombre%></a></li>
        </ul>
        <div id="titulo">
            <div id="opaco"><br>CECyT 9<br><p style="font-size: 55px;"><br><br></vr></p></div>
        </div>
        <div style="margin: 30px; border: 5px solid #2979FF; border-radius: 10px;" id="grande">
            <div style="font-size: 55px; margin-top: 15px; text-align: center; color: #2979FF;">"Juan de Dios Bátiz"</div>
            <div id="descripcion">
                <div id="subtitulo">Descripción</div><hr id="uno">
                <div id="texto">El Centro de Estudios Científicos y Tecnológicos 9 “Juan de Dios Bátiz” es una escuela de Nivel Medio Superior,
                    líder en la formación integral de profesionales con liderazgo y comprometidos con la sociedad y el medio ambiente;
                    a través de programas y estrategias centradas en el aprendizaje, la investigación y el desarrollo tecnológico; logrando
                    reconocimiento nacional e internacional en los campos académico y laboral</div>
            </div>
            <div id="carreras">
                <div id="subtitulo">Carreras</div><hr id="uno">
                <div id="contenedor">
                    <center>
                        <table width="90%">
                            <tr>
                                <td width="688" height="241" id="texto">
                                    Preparar técnicos en Máquinas con Sistemas Automatizados, para incorporarse a estos estudios de Nivel Superior en la rama de Ingeniería y Ciencias Físico-Matemáticas, así como la instalación, operación, adaptación y mantenimiento de Sistemas Automatizados que apoyen al desarrollo industrial, con la calidad y profesionalismo. 
                                </td>
                                <td width="281">
                                    <div id="cuadrox">
                                        <div id="opaco"><b><br>Técnico en Máquinas con Sistemas Automatizados<br><br><br></b></div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="688" height="241" id="texto">
                                    Formar técnicos competentes que tendrán los conocimientos, habilidades y actitudes necesarias para desarrollar aplicaciones de software en función de las necesidades de la industria, para favorecer su desarrollo y maduración en México que demanda el mercado laboral, o bien para continuar sus estudios a nivel superior en la rama del las ciencias físico matemáticas.
                                </td>
                                <td width="281">
                                    <div id="cuadrox1">
                                        <div id="opaco"><b><br>Técnico en Programación<br><br><br><br></b></div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="688" height="241" id="texto">
                                    Formar técnicos competentes que tendrán conocimientos, habilidades y actitudes necesarias para la instalación, operación, mantenimiento de sistemas electrónicos digitales de computo, medición y control que demanda el mercado laboral, o bien para continuar con estudios a nivel superior en la rama de las Ciencias Físico-Matemáticas.
                                </td>
                                <td width="281">
                                    <div id="cuadrox2">
                                        <div id="opaco"><b><br>Técnico en Sistemas Digitales<br><br><br><br></b></div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </center>

                    <div class="clear"></div>
                </div>
            </div>
            <div id="aciertos">
                <div id="subtitulo">Demanda</div><hr id="uno">
                <div id="textoA"><center>Aciertos Mínimos</center></div>
                <div id="pricing-table" class="clear">
                    <div class="plan" id="most-popular">
                        <h3>2014<span>107</span></h3>
                    </div>
                    <div class="plan" id="most-popular">
                        <h3>2015<span>104</span></h3>
                    </div>
                    <div class="plan" id="most-popular">
                        <h3>2016<span>108</span></h3>
                    </div>
                </div>

            </div>
            <div id="ubicacion">
                <div id="subtitulo">Ubicacion</div><hr id="uno">
                <div id="mapa"><center><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15048.184272259943!2d-99.1751969!3d19.4535805!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x57501a5479751d18!2sCECyT+9+Juan+de+Dios+B%C3%A1tiz!5e0!3m2!1ses-419!2smx!4v1491265495900" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></center></div>
            </div>
            <a href="http://www.cecyt9.ipn.mx/" target="blank">Visista la página de la escuela</a>
            <div id="comentarios">
                <div id="subtitulo">Comentarios</div><hr id="uno">
                <br><center><div style="font-size: 28px; color: black;">Escribe lo que piensas de esta escuela</div></center><br>
                <%=xxxD%>
                <center>
                <form action="../validarContenido.jsp" method="POST" onsubmit="return validaLongitud();">
                    <textarea cols="40" rows ="5" id="comentario" name="comentario" placeholder="Escribe aquí" ></textarea><br>
                    <input type="submit" value="comentar">
                </form>
                </center>
                <br><br>
                <div id="subtitulo">Comentarios de otras personas:</div>
                <br><br>
            </div>
                <div style="overflow: auto; margin-left: 16%">
                    <%
                        BD.cDatos base = new BD.cDatos();
                        try {
                            base.conectar();
                            ResultSet resultado = base.consulta("call spConsultaComentariosEsc(9);");
                            
                            
                            while (resultado.next()) {
                                out.println("<center>");
                                out.println("<div class=\"tarjeta\">");
                                    out.println("<div class=\"cabeza\">");
                                        out.println("<div class=\"nombre\">"+resultado.getObject("nombre")+"<span class=\"peq\"> dijo:</span></div>");
                                        out.println("<div class=\"info\"><span class=\"peq\">Egresado de:<br></span>"+resultado.getObject("Escuela del egresado")+"</div>");
                                    out.println("</div>");
                                    out.println("<div class=\"cuerpo\">");
                                        out.println(resultado.getObject("comentario"));
                                    out.println("</div>");
                                    out.println("<div class=\"clear\"></div>");
                                out.println("</div>");
                                out.println("</center>");
                                out.println("<br><br>");
                            }
                        } catch (Exception xd) {
                            out.println("Aun no hay comentarios");
                        }
                    %>
                    
                </div>     
        </div>
        <script>
            function validaLongitud() {
                var texto = document.getElementById("comentario").value.length;
                if (texto > 140) {
                    alert('Tu comentario es muuy grande, solo aceptamos 140 carácteres por comentario');
                    return false;
                } else if (texto === 0) {
                    alert('no dejes tu comentario vacio');
                    return false;
                } else {
                    alert('Comentario subido satisfactoriamente');
                    return true;
                }
            }
        </script>
    </body>
</html>
