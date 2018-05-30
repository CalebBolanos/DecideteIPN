<%-- 
    Document   : historial
    Created on : 12/05/2017, 07:19:21 AM
    Author     : Caleb
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  HttpSession sesion = request.getSession();
  if(sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null){
      response.sendRedirect("index.html");
  }
  String xNombre = (String)sesion.getAttribute("nombre");
  Object xId = session.getAttribute("id");
  String xCorreo = (String)sesion.getAttribute("correo");
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
                background-color: white;
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
            table {
                color: #333; /* Lighten up font color */
                font-family: Helvetica, Arial, sans-serif; /* Nicer font */
                width: 640px;
                border-collapse:
                    collapse; border-spacing: 0;
            }

            td, th { border: 1px solid #CCC; height: 30px; } /* Make cells a bit taller */

            th {
                background: #F3F3F3; /* Light grey background */
                font-weight: bold; /* Make sure they're bold */
            }

            td {
                background: #FAFAFA; /* Lighter grey background */
                text-align: center; /* Center our text */
            }
            .error{
                font-size: 30px;
                color: gray;
                padding-top: 20px;
                padding-bottom: 20px;
            }
        </style>
    </head>
    <body>
        <ul>
            <li><a href="paginaPrincipal.jsp">Inicio</a></li>
            <li><a href="escuelas.jsp">Nuestras escuelas</a></li>
            <li><a class="active" href="obtenerExamenes.jsp"><font color="white">Examenes y cuestionarios</font></a></li>
            <li><a href="checaResultados.jsp">Resultados</a></li>
            <li style="float:right"><a href="destruyeSesion.jsp">Cerrar Sesión</a></li>
            <li style="float:right"><a href="obtenerDatos.jsp"><%=xNombre%></a></li>
        </ul>
        <br><br><br>
        <center><span style="color: #0288D1; font-size: 40px;">Historial de resultados</span></center><br>
        <center>
            <%
                BD.cDatos base = new BD.cDatos();
                try{
                    base.conectar();
                    ResultSet resultado = base.consulta("call spConsultaHistorial("+(Integer)xId+");");
                    out.println("<table border=\"\"><tr><td>Número de evaluación</td><td>Aciertos en aptitudes</td><td>Aciertos en examen</td><td>Aciertos en necesidades</td><td>Tu opción</td></tr>");
                    while(resultado.next()){
                        out.println("<tr>");
                        out.println("<td>" + resultado.getObject("idHistorial") + "</td>");
                        out.println("<td>" + resultado.getObject("aptitudes") + "</td>");
                        out.println("<td>" + resultado.getObject("examen") + "</td>");
                        out.println("<td>" + resultado.getObject("necesidades") + "</td>");
                        out.println("<td>" + resultado.getObject("Escuela") + "</td>");
                        out.println("</tr>");
                    }
                    out.println("</table>");
                }
                catch(Exception xDios){
                    out.println("<span class=\"error\">Aún no has contestado ningun examen</span><br>");
                }
            %>
        </center>
    </body>
</html>
