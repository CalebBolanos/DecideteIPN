<%-- 
    Document   : comentarios
    Created on : 14/05/2017, 12:06:28 PM
    Author     : Caleb
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  HttpSession admin = request.getSession();
  if(admin.getAttribute("id") == null){
      response.sendRedirect("../.");
  }
%>
<%
   String xxxD = "";
%>

<% 
    String error = request.getParameter("e");
    if(error != null){
        xxxD = error;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                margin: 0;
                font-family: Arial;
            }

            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                width: 20%;
                background-color: #555;
                font-size: 19px;
                position: fixed;
                height: 100%;
                overflow: auto;
                transition: all 500ms ease;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }

            li a {
                display: block;
                color: whitesmoke;
                padding: 8px 16px;
                text-decoration: none;
                transition: all 500ms ease;
            }

            li a.active {
                background-color: #2196F3;
                color: white;
                font-size: 24px;
            }

            li a:hover:not(.active) {
                background-color: whitesmoke;
                color: black;
                font-size: 20px;
                transition: all 500ms ease;
            }
            #header{
                background-image: URL("../imagenes/disoft.png"); 
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 100px;
                margin-top: 10px;
            }
            table {
                color: #333; /* Lighten up font color */
                font-family: Helvetica, Arial, sans-serif; /* Nicer font */
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
            input[type=number] {
                width: 70%;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                font-size: 20px;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }
            input[type=number]:hover {
                border: 3px solid #2196F3;
            }
            input[type=number]:focus {
                border: 3px solid #2196F3;
            }
            input[type=submit]
            {
                border: none;
                background: #2196F3;
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
                color: #2196F3;
                box-shadow: inset 0 0 0 3px #2196F3;
            }
            button
            {
                border: none;
                background: #2196F3;
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
                color: #2196F3;
                box-shadow: inset 0 0 0 3px #2196F3;
            }
            
            
        </style>
    </head>
    <body>
        <ul>
            <li><a href="inicio.jsp">Inicio</a></li>
            <li><a href="usuarios.jsp">Usuarios</a></li>
            <li><a class="active" href="#comentarios">Comentarios</a></li>
            <li><a href="cerrarSesion.jsp">Cerrar sesion</a></li>
        </ul>
        <div style="float:right; width: 80%">
            <br>
            <center><span style="font-size: 50px; color: #2196F3; margin-top: 30px;">Consulta de comentarios</span></center><br>
            <span id="botones">
                <center><button style="margin-bottom: 10px;" onclick="mostrarPorId();">Borrar comentario por ID</button></center>
                <center><button onclick="mostrarPorUsr();">Borrar todos los comentarios de un usuario</button></center>
                <center><div style="font-size: 20px; color: #CCC"><%=xxxD%></div></center>
            </span>
            <span id="porId" style="display: none;">
                <center><form method="POST" action="borraComentId.jsp">
                    <input type="number" placeholder="Borrar comentario por ID" id="xid" name="xid" required>
                    <input type="submit" value="borrar" style="padding-left: 10px;">
                    </form></center>
                
                <center><button style="margin-bottom: 10px;" onclick="ocultarPorId();">Cancelar</button></center>
            </span>
            <span id="porUsr" style="display: none;">
                <center><form method="POST" action="borraComentUsr.jsp">
                    <input type="number" placeholder="Borrar todos los comentarios de un usuario" id="xd" name="xd" required>
                    <input type="submit" value="borrar" style="padding-left: 10px;">
                    </form></center>
                
                <center><button style="margin-bottom: 10px;" onclick="ocultarPorUsr();">Cancelar</button></center>
            </span>
            <br>
            <center>
            <%
                BD.cDatos base = new BD.cDatos();
                try {
                    base.conectar();
                    ResultSet resultado = base.consulta("select * from vwComentarios;");
                    out.println("<table border=\"\"><tr><td>IdComentario</td><td>IdUsuario</td><td>Nombre</td><td>Escuela del egresado</td><td>Id Escuela</td><td>Escuela</td><td>Comentario</td></tr>");
                    while (resultado.next()) {
                        out.println("<tr>");
                        out.println("<td>" + resultado.getObject("idComentario") + "</td>");
                        out.println("<td>" + resultado.getObject("idUsuario") + "</td>");
                        out.println("<td>" + resultado.getObject("Nombre") + "</td>");
                        out.println("<td>" + resultado.getObject("Escuela_del_Egresado") + "</td>");
                        out.println("<td>" + resultado.getObject("idEscuela") + "</td>");
                        out.println("<td>" + resultado.getObject("Escuela") + "</td>");
                        out.println("<td>" + resultado.getObject("Comentario") + "</td>");
                        out.println("</tr>");
                    }
                    out.println("</table>");
                } catch (Exception xd) {
                    out.println("error");
                }
            %>
            </center>
            <br>
        </div>
        <div style="clear: both"></div>
        <script>
            function mostrarPorId() {
                document.getElementById("porId").style.display = "block";
                document.getElementById("botones").style.display ="none";
            }
            function ocultarPorId(){
                document.getElementById("porId").style.display = "none";
                document.getElementById("botones").style.display = "block";
            }
            function mostrarPorUsr(){
                document.getElementById("botones").style.display = "none";
                document.getElementById("porUsr").style.display = "block";
            }
            function ocultarPorUsr(){
                document.getElementById("porUsr").style.display = "none";
                document.getElementById("botones").style.display = "block";
            }
        </script>
    </body>
</html>

