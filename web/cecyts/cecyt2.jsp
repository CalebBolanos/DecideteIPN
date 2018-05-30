<%-- 
    Document   : cecyt2
    Created on : 8/05/2017, 03:45:53 PM
    Author     : Caleb
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null) {
        response.sendRedirect("index.html");
    }
    String xNombre = (String) sesion.getAttribute("nombre");
    int xId = (Integer) session.getAttribute("id");
    String xCorreo = (String) sesion.getAttribute("correo");

    validaciones.obtenerCalificaciones revisar = new validaciones.obtenerCalificaciones();
%>
<!doctype html>
<html lang="es">
	<head>
		<title>Cecyt 2</title>
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
				background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt2.jpg");
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
				color: #880E4F;/*color*/
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
				border: 5px solid #880E4F;
				border-radius: 7px;
				background-image: URL("carreras/maquinas.jpg");
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
				border: 5px solid #880E4F;
				border-radius: 7px;
				background-image: URL("carreras/dibujo.jpg");
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
				border: 5px solid #880E4F;
				border-radius: 7px;
				background-image: URL("carreras/metalurgia.jpg");
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
			#cuadrox3{ 
				border: 5px solid #880E4F;
				border-radius: 7px;
				background-image: URL("carreras/aeronautica.jpg");
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
			#cuadrox4{ 
				border: 5px solid #880E4F;
				border-radius: 7px;
				background-image: URL("carreras/diseño.jpg");
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
			#cuadrox5{ 
				border: 5px solid  #880E4F;
				border-radius: 7px;
				background-image: URL("carreras/sistemasAuto.jpg");
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
				width: 892px; 
			}

			#pricing-table .plan {
				font: 12px 'Lucida Sans', 'trebuchet MS', Arial, Helvetica;
				text-shadow: 0 1px rgba(255,255,255,.8);        
				background: #C2185B;      
				border: 1px solid #880E4F;
				color: #880E4F;
				padding: 20px;
				width: 180px;     
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
                            background-color: #880E4F;
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
            <li><a href="../obtenerExamenes.jsp">Examenes y cuestionarios</a></li>
            <li><a href="../checaResultados.jsp">Resultados</a></li>
            <li style="float:right"><a href="../destruyeSesion.jsp">Cerrar Sesión</a></li>
            <li style="float:right"><a href="../obtenerDatos.jsp"><%=xNombre%></a></li>
        </ul>
		<div id="titulo">
			<div id="opaco"><br>CECyT 2<br><p style="font-size: 55px;"><br><br></vr></p></div>
		</div>
		<div style="margin: 30px; border: 5px solid #880E4F; border-radius: 10px;" id="grande">
			<div style="font-size: 55px; margin-top: 15px; text-align: center; color: #880E4F;">"Miguel Bernard Perales"</div>
			<div id="descripcion">
				<div id="subtitulo">Descripción</div><hr id="uno">
				<div id="texto">Pertenece a la rama de Físico-Matemético.
				 El Instituto interesado en la formación académica de calidad 
				 de nuestros alumnos, ofrece programas de alta calidad académica
				 y oportunidades educativas para jóvenes, es por eso que desde hace 
				 algunos años nos hemos dado a la tarea de asumir el reto de que organismos 
				 externos avalen nuestro quehacer educativo. Es así, que en la actualidad nuestras
				 carreras se encuentran acreditadas y nuestros procesos académico-administrativos
				 certificados bajo los requisitos de la norma ISO 9001:2008, lo que nos coloca a 
				 la vanguardia entre las escuelas de Nivel Medio Superior del país</div>
			</div>
			<div id="carreras">
				<div id="subtitulo">Carreras</div><hr id="uno">
				<div id="contenedor">
								<center>
					<table width="90%">
						<tr>
							<td width="688" height="241" id="texto">
							Preparar Técnicos en Maquinas y Sistemas Automatizados para incorporarse a estudios de nivel superior en la rama de ingeniería y ciencias fisicomatemáticas, así como en la instalación, operación, adaptación y mantenimiento de sistemas automatizados que apoyen al desarrollo industrial, con calidad y profesionalismo.
							</td>
							<td width="281">
							<div id="cuadrox">
						<div id="opaco"><b><br>Técnico en máquinas con sistemas automatizados<br><br><br></b></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
				  			​Formar técnicos capaces de proponer soluciones gráficas en proyectos de la industria, la ciencia, las artes y la educación para apoyar los procesos productivos de diseño, supervisión y elaboración de dibujos y planos en las aéreas así como, la preparación propedéutica para acceder a estudios de nivel superior, todo ello ético con responsabilidad ecológica, así como social.
							</td>
							<td width="281">
							<div id="cuadrox1">
						<div id="opaco"><b><br>Técnico en Dibujo Asistido por Compuadora<br><br><br></b></font></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
				  			El objetivo de esta carrera es la formación de Técnicos en Metalurgia con los conocimientos, habilidades y actitudes, que le permitan operar, controlar e instrumentar acciones para optimizar los procesos de transformación de metales de acuerdo a las normas internacionales.​
							</td>
							<td width="281">
							<div id="cuadrox2">
						<div id="opaco"><b><br>Técnico en Metalurgia<br><br><br><br><br></b></font></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
							Formar técnicos de clase mundial que desarrollen funciones de diagnóstico y mantenimiento de la aeronave con una sólida formación integral para satisfacer las necesidades del sector del transporte aéreo, con apego a la normatividad.
							</td>
							<td width="281">
							<div id="cuadrox3">
						<div id="opaco"><b><br>Técnico en Aeronáutica<br><br><br><br><br></b></font></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
							Formar técnicos de alto nivel en competencias de producción en objetos visuales con base a las normas de la industria gráfica y que den respuesta a las necesidades de comunicación visual en su entorno, así como la formación propedéutica para acceder a los estudios de nivel medio superior, todo ello con su sentido crítico, propositivo, creativo y ético.​
							</td>
							<td width="281">
						<div id="cuadrox4">
						<div id="opaco"><b><br>Técnico en Diseño Grafico Digital<br><br><br><br></b></font></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
							Formar técnicos en la reparación y mantenimiento de los vehículos automotores considerando las diferentes filosofías de los fabricantes, el manejo de equipo, material, desarrollar las competencias en tecnologías mecánicas, eléctricas y electrónicas de los sistemas automotrices en general. La formación de este técnico tendrá un fuerte impacto en los sistemas electromecánicos de última generación.​
							</td>
							<td width="281">
							<div id="cuadrox5">
						<div id="opaco"><b><br>Técnico en Sistemas Automotrices<br><br><br><br></b></font></div>
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
							<h3>2014<span>91</span></h3>
						</div>
						<div class="plan" id="most-popular">
							<h3>2015<span>89</span></h3>
						</div>
						<div class="plan" id="most-popular">
							<h3>2016<span>93</span></h3>
						</div>
					</div>
				
			</div>
			<div id="ubicacion">
				<div id="subtitulo">Ubicacion</div><hr id="uno">
				<div id="mapa"><center><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15048.333277064983!2d-99.2131413!3d19.4519742!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x75e119f8d7dfc312!2sCECyT+2!5e0!3m2!1ses-419!2smx!4v1491264879088" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></center></div>
			</div>
			<div id="comentarios">
                            <a href="http://www.cecyt2.ipn.mx/" target="blank">Visista la página de la escuela</a>
			</div>
                        <div id="subtitulo">Comentarios de otras personas:</div>
                <br><br>
           
                <div style="overflow: auto; margin-left: 16%">
                    <%
                        BD.cDatos base = new BD.cDatos();
                        try {
                            base.conectar();
                            ResultSet resultado = base.consulta("call spConsultaComentariosEsc(2);");
                            
                            
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
		</body>
</html>
