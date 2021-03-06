<%-- 
    Document   : cet
    Created on : 8/05/2017, 04:26:20 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="es">
	<head>
		<title>Cet</title>
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
				background-image: URL("../contenidoPagina/Escuelas/Cecyt1/cet.jpg");
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
				color: #FF8F00;/*color*/
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
				border: 5px solid #FF8F00;
				border-radius: 7px;
				background-image: URL("carreras/cet.jpg");
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
				border: 5px solid #FF8F00;
				border-radius: 7px;
				background-image: URL("carreras/cet1.jpg");
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
				border: 5px solid #FF8F00;
				border-radius: 7px;
				background-image: URL("carreras/cet2.jpg");
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
				border: 5px solid #FF8F00;
				border-radius: 7px;
				background-image: URL("carreras/cet3.jpg");
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
				border: 5px solid #FF8F00;
				border-radius: 7px;
				background-image: URL("carreras/cet4.jpg");
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
					/*los colores van aqui*/
			#pricing-table .plan {
				font: 12px 'Lucida Sans', 'trebuchet MS', Arial, Helvetica;
				text-shadow: 0 1px rgba(255,255,255,.8);        
				background: #FF8F00;      
				border: 1px solid #FF6F00;
				color: #FF6F00;
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
			
			
			
		</style>
	</head>
	<body>
		<ul>
            <li><a href="../paginaPrincipal.jsp">Inicio</a></li>
            <li><a href="../escuelas.jsp" class="active"><font color="white">Nuestras escuelas</font></a></li>
            <li><a href="../obtenerExamenes.jsp">Examenes y cuestionarios</a></li>
            <li><a href="../checaResultados.jsp">Resultados</a></li>
            <li style="float:right"><a href="../destruyeSesion.jsp">Cerrar Sesión</a></li>
            <li style="float:right"><a href="../obtenerDatos.jsp">Usuario</a></li>
        </ul>
		<div id="titulo">
			<div id="opaco"><br>CET 1<br><p style="font-size: 55px;"><br><br></vr></p></div>
		</div>
		<div style="margin: 30px; border: 5px solid #FF8F00; border-radius: 10px;" id="grande">
			<div style="font-size: 55px; margin-top: 15px; text-align: center; color: #FF8F00;">"Walter Cross Buchanan"</div>
			<div id="descripcion">
				<div id="subtitulo">Descripción</div><hr id="uno">
				<div id="texto">Misión
				<br>
				El Centro de Estudios Tecnológicos No. 1 Walter Cross Buchanan es una Unidad Académica del Nivel Medio Superior del área físico-matemático, que contribuye a la formación integral del alumno mediante el desarrollo de competencias, a través de diferentes modalidades educativas, que le permitan continuar sus estudios a nivel superior y/o incorporarse al mercado laboral.
				<br><br>
				​​
				​​​​​​​​
				Visión
				<br>
				En el 2036 buscamos ser una Unidad Académica del Nivel Medio Superior incluyente, reconocida por los aspirantes, empresas y sociedad en general por nuestra calidad, ética, transparencia y compromiso social.
				<br><br>
				​​
				​​​​​​​​​​
				Política de Calidad
				<br>
				En el Centro de Estudios Tecnológicos No. 1 “Walter Cross Buchanan” estamos comprometidos con la comunidad estudiantil, docente y partes interesadas del Nivel Medio Superior en proporcionar procesos eficientes en las áreas de Servicios Escolares, Administración Académica, Práctica Docente, Servicios Complementarios al Estudiante y Vinculación bajo la supervisión de la Dirección, que permita la conjunción de valores mediante un Sistema de Gestión de Calidad donde nuestra prioridad se vea reflejada en la mejora continúa que satisfaga las necesidades del entorno de acuerdo con la normatividad del Instituto Politécnico Nacional.</div>
			</div>
			<div id="carreras">
				<div id="subtitulo">Carreras</div><hr id="uno">
				<div id="contenedor">
				<center>
					<table width="90%">
						<tr>
							<td width="688" height="241" id="texto">
							El Técnico en la especialidad, controla motores eléctricos, realiza instalaciones eléctricas, domésticas e industriales, diseña circuitos neumáticos e hidráulicos, utiliza y programa los PCL´s, emplea los diferentes tipos de sensores para controlar los circuitos automatizados, maneja y opera software del área.
							</td>
							<td width="281">
							<div id="cuadrox">
								<div id="opaco"><b><br>Técnico en automatización y control
								eléctrico industrial<br><br></b></div>
							</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
				  			El Técnico en la especialidad, programa computadoras con diferentes lenguajes, diseña páginas web, instala redes, maneja y repara circuitos electrónicos, maneja y repara software del área.
							</td>
							<td width="281">
							<div id="cuadrox1">
								<div id="opaco"><b><br> Técnico en redes
								de cómputo<br><br><br><br></b></div>
							</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
				  			El Técnico en la especialidad diseña, de acuerdo a las necesidades humanas, los espacios arquitectónicos propios para los diferentes tipos de actividades.
							</td>
							<td width="281">
							<div id="cuadrox2">
								<div id="opaco"><b><br>Técnico en sistemas
								constructivos asistidos por
								computadora<br><br><br></b></div>
							</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
							El Técnico en la especialidad conoce y aplica sistemas de medición, tipos de materiales, opera máquinas herramientas fundamentales, suelda diferentes metales, diseña y opera circuitos hidráulicos y neumáticos, conoce y aplica el ciclo de refrigeración, programa máquinas y herramientas automatizadas.
							</td>
							<td width="281">
							<div id="cuadrox3">
							<div id="opaco"><b><br>Técnico en sistemas
							mecánicos industriales<br><br><br><br></b></div>
							</div>
							</td>
						</tr>
						<tr>
							<td width="688" height="241" id="texto">
							El Técnico en la especialidad, repara y da mantenimiento al sistema de frenos, de suspensión, al sistema de enfriamiento, al de transmisión, al sistema electrónico y en general al motor de combustión interna de su automóvil.
							</td>
							<td width="281">
							<div id="cuadrox4">
							<div id="opaco"><b><br>Técnico en
							sistemas automotrices<br><br><br><br></b></div>
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
				<div id="mapa"><center><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15069.530144137272!2d-98.9962746!3d19.2221532!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x881307d3a341da19!2sCentro+de+Estudios+Cient%C3%ADficos+y+Tecnol%C3%B3gicos+No.15!5e0!3m2!1ses-419!2smx!4v1491265994236" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></center></div>
			</div>
			<div id="comentarios">
			<a href="http://www.cet1.ipn.mx/">Visista la página de la escuela</a>
			</div>
		</div>
		</body>
</html>
