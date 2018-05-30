<%-- 
    Document   : usuarios
    Created on : 14/05/2017, 11:52:10 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
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
<!DOCTYPE html>
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
                width: 800px;
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
                color: blue;
                box-shadow: inset 0 0 0 3px #2196F3;
            }
            
            
        </style>
    </head>
    <body>
        <ul>
            <li><a href="inicio.jsp">Inicio</a></li>
            <li><a class="active" href="#usuarios">Usuarios</a></li>
            <li><a href="comentarios.jsp">Comentarios</a></li>
            <li><a href="cerrarSesion.jsp">Cerrar sesion</a></li>
        </ul>
        <div style="float:right; width: 80%">
            <br>
            <center><span style="font-size: 50px; color: #2196F3; margin-top: 30px;">Consulta de usuarios</span></center><br>
            <div>
                <center><form method="POST" action="borraUsr.jsp">
                    <input type="number" placeholder="Borrar usuario por id" id="numero" name="numero" required>
                    <input type="submit" value="borrar" style="padding-left: 10px;">
                    </form></center>
                <center><div style="font-size: 20px; color: #CCC"><%=xxxD%></div></center>
            </div>
            <br>
            <center>
            <%
                BD.cDatos base = new BD.cDatos();
                try {
                    base.conectar();
                    ResultSet resultado = base.consulta("select * from usuarios;");
                    out.println("<table border=\"\"><tr><td>IdUsuario</td><td>IdTipo</td><td>idgenero</td><td>nombre</td><td>correo</td><td>edad</td><td>Contra</td><td>fechareg</td></tr>");
                    while (resultado.next()) {
                        out.println("<tr>");
                        out.println("<td>" + resultado.getObject("idUsuario") + "</td>");
                        out.println("<td>" + resultado.getObject("idTipo") + "</td>");
                        out.println("<td>" + resultado.getObject("idGenero") + "</td>");
                        out.println("<td>" + resultado.getObject("nombre") + "</td>");
                        out.println("<td>" + resultado.getObject("correo") + "</td>");
                        out.println("<td>" + resultado.getObject("edad") + "</td>");
                        out.println("<td>" + resultado.getObject("contraseña") + "</td>");
                        out.println("<td>" + resultado.getObject("fechaReg") + "</td>");
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
    </body>
</html>
