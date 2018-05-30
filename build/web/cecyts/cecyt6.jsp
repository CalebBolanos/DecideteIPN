<%-- 
    Document   : cecyt6
    Created on : 8/05/2017, 03:57:52 PM
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
		<title>Cecyt 6</title>
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
				background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt6.jpg");
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
				color: #EF6C00;/*color*/
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
				border: 5px solid #EF6C00;
				border-radius: 7px;
				background-image: URL("carreras/ecologia.jpg");
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
				border: 5px solid #EF6C00;
				border-radius: 7px;
				background-image: URL("carreras/enfermeria.jpg");
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
				border: 5px solid #EF6C00;
				border-radius: 7px;
				background-image: URL("carreras/laboratorista.jpg");
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
				border: 5px solid #EF6C00;
				border-radius: 7px;
				background-image: URL("carreras/laboratoristaQ.jpg");
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
				background: #EF6C00;      
				border: 1px solid #EF6C00;
				color: #EF6C00;
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
                            background-color: #EF6C00;
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
			<div id="opaco"><br>CECyT 6<br><p style="font-size: 55px;"><br><br></vr></p></div>
		</div>
		<div style="margin: 30px; border: 5px solid #EF6C00; border-radius: 10px;" id="grande">
			<div style="font-size: 55px; margin-top: 15px; text-align: center; color: #EF6C00;">"Miguel Othón de Mendizabal"</div>
			<div id="descripcion">
				<div id="subtitulo">Descripción</div><hr id="uno">
				<div id="texto">La educación y los valores de convivencia humana son fundamentales, el aprecio a la dignidad de la persona, la fraternidad, la tolerancia, el respeto a las diferencias, la libertad y la paz forman parte importante de este proyecto educativo. La educación no es  nada más la enseñanza y el aprendizaje, sino también formar al individuo como un ser que sirva a la sociedad, involucrando los valores. </div>
			</div>
			<div id="carreras">
				<div id="subtitulo">Carreras</div><hr id="uno">
				<div id="contenedor">
				<center>
					<table width="90%">
						<tr>
							<td width="688" height="241" id="texto">
							La carrera de Técnico de en Ecología tiene la misión de formar técnicos profesionales con excelencia académica y sólidas competencias laborales, acorde con los requerimientos de los sectores público, social y privado en el área ambiental, mediante planes y programas de estudio actualizados, que aseguren los conocimientos, habilidades, actitudes y valores humanos de sus egresados contribuyendo así a la salud y al desarrollo sustentable del país. ​

							</td>
							<td width="281">
							<div id="cuadrox">
						<div id="opaco"><b><br>Técnico en Ecología<br><br><br></b><br><br></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
				  			Formar Técnicos en Enfermería responsables, comprometidos y competitivos, para brindar una atención integral, con amplio sentido humano y ético, en la satisfacción de necesidades básicas de salud, a través de un plan de estudio acreditado con estrategias de mejora continua que permiten al egresado continuar con éxito sus estudios profesionales e insertarse en el ámbito laboral.
							</td>
							<td width="281">
							<div id="cuadrox1">
						<div id="opaco"><b><br>Técnico en Enfermeria<br><br><br><br></b><br></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
				  			La carrera de Técnico Laboratorista Clínico, es una carrera acreditada y reconocida por su calidad y actualización en su plan y programas de estudios, así como de la planta docente que los imparte, creada para contribuir al desarrollo de la actividad del país generando fuentes de empleo y divisas. Para lograrlo, forma alumnos técnicos con la calidad y competitividad para insertarse en el campo laboral, con un alto sentido de responsabilidad, creatividad, iniciativa y superación coadyuvando en el desarrollo del país.
 ​
							</td>
							<td width="281">
							<div id="cuadrox2">
						<div id="opaco"><b><br>Técnico en Laboratorista Clínico<br><br><br><br></b></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
							El Programa Académico de Técnico Laboratorista Químico es un Programa acreditado y reconocido por su calidad y actualización en su Plan de Estudio y Unidades Académicas, así como de la planta docente que lo imparte, creado para contribuir al desarrollo de la actividad del área Químico Industrial del país. Para lograrlo, forma alumnos técnicos con la calidad, competitividad y compromiso para insertarse en el campo laboral, con un alto sentido de responsabilidad, creatividad, iniciativa y superación.​

							</td>
							<td width="281">
							<div id="cuadrox3">
						<div id="opaco"><b><br>Técnico en Laboratorista Químmico<br><br><br></b><br></div>
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
							<h3>2014<span>94</span></h3>
						</div>
						<div class="plan" id="most-popular">
							<h3>2015<span>93</span></h3>
						</div>
						<div class="plan" id="most-popular">
							<h3>2016<span>97</span></h3>
						</div>
					</div>
				
			</div>
			<div id="ubicacion">
				<div id="subtitulo">Ubicacion</div><hr id="uno">
				<div id="mapa"><center><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15046.857447849836!2d-99.1588962!3d19.4678783!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd0d73dd0768f47b5!2sIPN+-+CECYT+6+%22Miguel+Oth%C3%B3n+de+Mendizabal%22!5e0!3m2!1ses-419!2smx!4v1491265259484" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></center></div>
			</div>
			<div id="comentarios">
                            <a href="http://www.cecyt6.ipn.mx/" target="blank">Visista la página de la escuela</a>
			</div>
                        <div id="subtitulo">Comentarios de otras personas:</div>
                <br><br>
           
                <div style="overflow: auto; margin-left: 16%">
                    <%
                        BD.cDatos base = new BD.cDatos();
                        try {
                            base.conectar();
                            ResultSet resultado = base.consulta("call spConsultaComentariosEsc(6);");
                            
                            
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
