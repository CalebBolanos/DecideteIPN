<%-- 
    Document   : inicio
    Created on : 14/05/2017, 10:15:55 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  HttpSession admin = request.getSession();
  if(admin.getAttribute("id") == null){
      response.sendRedirect("../.");
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
            #header{
                background-image: URL("../imagenes/disoft.png"); 
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 100px;
                margin-top: 10px;
            }
        </style>
    </head>
    <body>
        <ul>
            <li><a class="active" href="#home">Inicio</a></li>
            <li><a href="usuarios.jsp">Usuarios</a></li>
            <li><a href="comentarios.jsp">Comentarios</a></li>
            <li><a href="cerrarSesion.jsp">Cerrar sesion</a></li>
        </ul>
        <div style="float:right; width: 80%">
            <br>
            <center><span style="font-size: 50px; color: #2196F3; margin-top: 30px;"> Acciones sugeridas </span></center><br>
            <div id="contenedor">
                    <div id="opcion1" class="opcion">
                        <div id="imagen1" style="background-image: URL('../imagenes/usuarios.jpg'); ">
                            <br><br><br>
                        </div>
                        <div id="texto1" class="texto" >
                            <br><br><br><br>Ver lista de <br>usuarios<br><br>
                            <div id="zelda1"><a href="usuarios.jsp"><button>Ir >></button></a></div>
                        </div>
                    </div>
                    <div id="opcion2" class="opcion">
                        <div id="imagen2" style="background-image: URL('../imagenes/comentarios.PNG'); ">
                            <br><br><br>
                        </div>
                        <div id="texto2" class="texto">
                            <br><br><br><br>Ver lista de <br>comentarios<br><br>
                            <div id="zelda2"><a href="comentarios.jsp"><button>Ir >></button></a></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
        </div>
        <div style="clear: both"></div>
        
        
    </body>
</html>
