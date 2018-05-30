<%-- 
    Document   : cecyt4
    Created on : 8/05/2017, 03:50:14 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="es">
	<head>
		<title>Cecyt 4</title>
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
				background-image: URL("../contenidoPagina/Escuelas/Cecyt1/cecyt4.jpg");
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
				color: #1A237E;/*color*/
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
				border: 5px solid #1A237E;
				border-radius: 7px;
				background-image: URL("carreras/mantenimiento.jpg");
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
				border: 5px solid #1A237E;
				border-radius: 7px;
				background-image: URL("carreras/procesosIndus4.jpg");
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
				border: 5px solid #1A237E;
				border-radius: 7px;
				background-image: URL("carreras/construccion4.jpg");
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
				border: 5px solid #1A237E;
				border-radius: 7px;
				background-image: URL("carreras/sistemasAuto4.jpg");
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
				border: 5px solid #1A237E;
				border-radius: 7px;
				background-image: URL("carreras/aeronautica4.jpg");
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
				background: #303F9F;      
				border: 1px solid #1A237E;
				color: #1A237E;
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
			
			
		</style>
	</head>
	<body>
		<ul>
            <li><a href="../paginaPrincipal.jsp">Inicio</a></li>
            <li><a href="../escuelas.jsp" class="active"><font color="white">Nuestras escuelas</font></a></li>
            <li style="float:right"><a href="../destruyeSesion.jsp">Cerrar Sesión</a></li>
            <li style="float:right"><a href="../obtenerDatos.jsp">Usuario</a></li>
        </ul>
		<div id="titulo">
			<div id="opaco"><br>CECyT 4<br><p style="font-size: 55px;"><br><br></vr></p></div>
		</div>
		<div style="margin: 30px; border: 5px solid #1A237E; border-radius: 10px;" id="grande">
			<div style="font-size: 55px; margin-top: 15px; text-align: center; color: #1A237E;">"Lazaro Cárdenas"</div>
			<div id="descripcion">
				<div id="subtitulo">Descripción</div><hr id="uno">
				<div id="texto">Forma parte del Nivel Medio Superior del Instituto Politécnico Nacional (IPN), creado para ofrecer estudios de bachillerato tecnológico en el área de ingeniería y ciencias físico matemáticas, con una oferta educativa de cinco carreras técnicas.<br><br>
				Misión
				<br>
				El Centro de Estudios Científicos y Tecnológicos No. 4 "Lázaro Cárdenas", contribuye al progreso de México, formando integralmente técnicos competentes en el Nivel Medio Superior del IPN en el área de las Ciencias Fisicomatemáticas, para su ingreso a la Educación Superior o su integración al campo laboral, con la acreditación de sus carreras y la certificación de sus procesos administrativos.
				<br><br>
				​​​​​​​
				​​​​
				Visión
				<br>
				Ser un Centro de Estudios de Nivel Medio Superior del IPN, incluyente, con trabajo, honestidad, respeto e integridad para lograr el reconocimiento social y que con su comunidad contribuya al progreso de México.</div>
			</div>
			<div id="carreras">
				<div id="subtitulo">Carreras</div><hr id="uno">
				<div id="contenedor">
				<center>
					<table width="90%">
						<tr>
							<td width="688" height="241" id="texto">
							El objetivo de esta carrera es formar técnicos en la instalación, operación y mantenimiento de los sistemas eléctricos y sus dispositivos aplicando normas, especificaciones de fabricantes, el manejo de equipo, material, herramientas y software aplicado; de tal manera que le permita desarrollar las competencias laborales requeridas por el sector industrial y de la construcción, y así mismo, para que se incorpore a estudios de nivel superior.
							</td>
							<td width="281">
							<div id="cuadrox">
						<div id="opaco"><b><br>Técnico en Instalaciones y Mantenimiento Eléctrico<br><br><br></b></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
				  			Al termino de la carrera el Técnico en Procesos Industriales habrá adquirido una preparación integral de conocimiento actitudes, valores y desarrollo de habilidades necesarias, que le permitan continuar sus estudios a nivel superior o incorporarse al campo productivo, atendiendo las funciones propias de sus conocimientos tecnológicos adquiridos.
							</td>
							<td width="281">
							<div id="cuadrox1">
						<div id="opaco"><b><br>Técnico en Procesos Industriales<br><br><br></b><br></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
				  			Adquirir conocimientos teórico-prácticos y desarrollo de las habilidades necesarias que le permitan acceder a estudios de nivel superior, así como ingresar al sector productivo en actividades de enlace entre el residente de obra y personal técnico de la misma, auxiliándole en la ejecución y desarrollo de los procesos constructivos.
							</td>
							<td width="281">
							<div id="cuadrox2">
						<div id="opaco"><b><br>Técnico en Construccion<br><br><br><br></b></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
							Desarrollar innovaciones y proponer soluciones a problemas a partir de métodos establecidos. Contribuir al desarrollo sustentable de manera crítica, con acciones responsables.
							</td>
							<td width="281">
							<div id="cuadrox3">
						<div id="opaco"><b><br>Técnico en Sistemas Automotrices<br><br><br><br></b></div>
					</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
							Formar técnicos de clase mundial que desarrollen funciones de diagnóstico y mantenimiento de la aeronave con una sólida formación integral para satisfacer las necesidades del sector del transporte aéreo, con apego a la normatividad.
							</td>
							<td width="281">
							<div id="cuadrox4">
						<div id="opaco"><b><br>Técnico en Aeronautica<br><br><br><br><br></b></font></div>
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
							<h3>2014<span>84</span></h3>
						</div>
						<div class="plan" id="most-popular">
							<h3>2015<span>85</span></h3>
						</div>
						<div class="plan" id="most-popular">
							<h3>2016<span>89</span></h3>
						</div>
					</div>
				
			</div>
			<div id="ubicacion">
				<div id="subtitulo">Ubicacion</div><hr id="uno">
				<div id="mapa"><center><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15053.357368886951!2d-99.2146341!3d19.3977387!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5eb9ba560d4e9213!2sCECyT+4+L%C3%A1zaro+C%C3%A1rdenas!5e0!3m2!1ses-419!2smx!4v1491264979990" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></center></div>
			</div>
			<div>
			<a href="http://www.cecyt4.ipn.mx/">Visista la página de la escuela</a>
			</div>
		</div>
		</body>
</html>
