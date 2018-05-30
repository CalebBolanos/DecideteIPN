<%-- 
    Document   : Usuario
    Created on : 25/04/2017, 03:21:51 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null) {
        response.sendRedirect("index.html");
    }
    String xNombre = (String) sesion.getAttribute("nombre");
    Object xId = session.getAttribute("id");
    String xCorreo = (String) sesion.getAttribute("correo");
    String xContrasena = (String) sesion.getAttribute("contrasena");
    int xEdad = (Integer) sesion.getAttribute("edad");
    String xGenero = (String) sesion.getAttribute("genero");
    int valGeneroP = 0;
    int valGeneroS = 0;
    String otroGenero = "";
    if(xGenero.equals("Maculino")){
        valGeneroP = 2;
        otroGenero = "Femenino";
        valGeneroS = 1;
        
    }
    if(xGenero.equals("Femenino")){
        valGeneroP = 1;
        otroGenero = "Masculino";
        valGeneroS = 2;
        
    }
    String xDios = "";
    String error = request.getParameter("e");
    if (error != null) {
        xDios = error;
    }

%>
<%    String btnRegistro = request.getParameter("btnActualiza") == null ? "" : request.getParameter("btnActualiza");
    String xxxD = "";
    if (btnRegistro.equals("Actualizar informacion")) {
        String nombre = request.getParameter("nombre") == null ? "" : request.getParameter("nombre");
        String email = request.getParameter("email") == null ? "" : request.getParameter("email");
        String edad = request.getParameter("edad") == null ? "" : request.getParameter("edad");
        String genero = request.getParameter("nombre") == null ? "" : request.getParameter("genero");
        String contrasena = request.getParameter("contrasena") == null ? "" : request.getParameter("contrasena");
        String contrasena1 = request.getParameter("contrasena1") == null ? "" : request.getParameter("contrasena1");

        validaciones.registro usuario = new validaciones.registro(nombre, email, edad, genero, contrasena, contrasena1);

        if (usuario.VALIDO()) {

        }
        xxxD = usuario.ERROR();

    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
        <link rel="shortcut icon" href="imagenes/icon.ico" />
        <style>
            @keyframes slidein {
                0% {
                    transform: scale(1.3);
                    opacity: 0.7;
                }	
                100% {
                    transform: scale(1);
                    opacity: 1;
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
            button, input[type=submit] 
            {
                border: none;
                background: orange;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
            }
            button:hover, input[type=submit]:hover {
                background: white;
                color: orange;
                box-shadow: inset 0 0 0 3px orange;
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
                color: orange;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: silver;
            }

            .active {
                background-color: orange;
            }
            #informacion{
                background-color: white;
                font-size: 42px;
                padding-top: 130px;
                padding-left: 20%;
                padding-right: 20%;
                color: #bbb;
            }
            #imagen{
                background-image: URL('imagenes/usuarioDef.png');
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                width: 300px;
                height: 300px;
                border-top-right-radius: 100%;
                border-top-left-radius: 100%;
                border-bottom-right-radius: 100%;
                border-bottom-left-radius: 100%;
                position: absolute;
                left: 38%;
                top: 50px;
                border: 5px #bbb solid;

            }
            input[type=text], input[type=password], input[type=email], select, input[type=number]{
                border: white solid 0px;
                font-size: 20px;
                width: 300px;
            }

        </style>
    </head>
    <body>
        <ul>
            <li><a href="paginaPrincipal.jsp">Inicio</a></li>
            <li><a href="escuelas.jsp">Nuestras escuelas</a></li>
            <li><a href="obtenerExamenes.jsp">Examenes y cuestionarios</font></a></li>
            <li><a href="checaResultados.jsp">Resultados</a></li>
            <li style="float:right"><a href="destruyeSesion.jsp">Cerrar Sesión</a></li>
            <li style="float:right"><a class="active" href=""><font color="white"><%=xNombre%></a></li>
        </ul>
        <div id="imagen"><div style="float: right; padding-bottom: 0px;"><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><button style="font-size: 15px;">Subir foto</button></div><br></div>
        <div style="height: 200px; background-color: orange;"></div>
        <div id="informacion">
            <div style="color: orange; text-align: center;"><%=xNombre%></div>
            <div style="color: gray; font-size: 12px; text-align: center;">ID: <%=xId%></div>
            <div style="color: silver; font-size: 30px;">
                <span id="datos" style="display: block;">
                Nombre: <div style="color: gray; font-size: 20px"><%=xNombre%><br><br> </div>
                Correo: <div style="color: gray; font-size: 20px"><%=xCorreo%><br><br> </div>
                Edad: <div style="color: gray; font-size: 20px"><%=xEdad%><br><br> </div>
                Genero: <div style="color: gray; font-size: 20px"><%=xGenero%><br><br> </div>
                <center><button onclick="mostrar()" style="margin-right: 30px;">Modificar información</button><button onclick="mostrarPsw()">Cambiar contraseña</button></center>
                </span>
                <div style="color: black; text-align: center; font-size: 20px; padding-top: 5px;"><%=xDios%></div>
                <span id="ocultar" style="display: none;">
                    <div style="float: right;"><button onclick="ocultar();">Cancelar</button></div><br>
                    <form id="formulario" action="validaActualizacion.jsp" onsubmit="return validar();" method="POST">
                        <label for="nombre">Nombre:</label>
                        <input type="text" id="nombre" name="nombre" placeholder="Escribe tu nombre" value="<%=xNombre%>"required /><br><br>             
                        <label for="edad">Edad:</label>
                        <input type="number" id="edad" name="edad" min="12" max="99" placeholder="Escribe tu edad" value="<%=xEdad%>" required><br><br>
                        <label for="genero">Genero:</label>
                        <select id="genero" name="genero" required>
                            <option value="<%=valGeneroP%>"><%=xGenero%></option>
                            <option value="<%=valGeneroS%>"><%=otroGenero%></option>
                        </select><br><br>
                        <label for="contrasena">Contraseña:</label>
                        <input type="password" id="contrasena" name="contrasena" placeholder="Escribe tu contraseña" required /><br><br>
                        <center><input type="submit" style="font-size: 15px;" id="btnActualiza" name="btnActualiza" value="Actualizar" /></center>
                    </form>
                        
                </span>
                <span id="psw" style="display: none;">
                    <form id="cambio" action="validaContrasena.jsp" onsubmit="" method="POST">
                        <div style="float: right;"><button onclick="ocultarPsw();">Cancelar</button></div><br>
                        <label for="psw">Escribe tu antigua contraseña:</label>
                        <input type="password" id="psw" name="psw" placeholder="Antigua contraseña" required /><br><br>
                        <label for="pswnew">Escribe tu nueva contraseña:</label>
                        <input type="password" id="pswnew" name="pswnew" placeholder="Nueva contraseña" required /><br><br>
                        <label for="pswnew">Vuelve a escribir tu contraseña:</label>
                        <input type="password" id="pswnew1" name="pswnew1" placeholder="Confirar contraseña" required /><br><br>
                        <center><input type="submit" id="cambiocontra" name="cambiocontra" value="Cambiar contraseña"></center>
                    </form>
                </span>
                <br>
            </div>
        </div>
                <script>
            function validar()
            {
                var nombre = document.getElementById('nombre').value;
                var email = document.getElementById('email').value;
                var edad = document.getElementById('edad').value;
                var genero = document.getElementById('genero').selectedIndex;
                var expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                var contrasena = document.getElementById('contrasena').value;
                var patron = /\D[A-Za-zÁÉÍÓÚáéíóú]/;

                if (nombre === "") {
                    alert('Asegurate de no dejar datos en blanco');
                    return false;
                } else
                if (email === "") {
                    alert('Asegurate de no dejar datos en blanco');
                    return false;
                } else
                if (edad === "") {
                    alert('Asegurate de no dejar datos en blanco');
                    return false;
                } else
                if (genero === "") {
                    alert('Asegurate de no dejar datos en blanco');
                    return false;
                } else
                if (contrasena === "") {
                    alert('Asegurate de no dejar datos en blanco');
                    return false;
                } else
                if (/^[A-Za-zñÑ-áéíóúÁÉÍÓÚ\s]*$/.test(nombre) === false) {
                    if (/^([0-9])*$/.test(nombre) === false) {
                        alert('Escribe tu nombre sin números ni caracteres especiales');
                        return false;
                    } else
                        alert('Escribe tu nombre sin números ni caracteres especiales');
                    return false;
                } else
                if (!expr.test(email)) {
                    alert('Algo está mal. Verifica tu correo electrónico');
                    return false;
                } else
                if (isNaN(edad)) {
                    alert('Escribe tu edad');
                    return false;
                } else
                if (edad < 12) {
                    alert('Debes de tener mas de 11 años');
                    return false;
                } else
                if (edad > 99) {
                    alert('Debes de tener menos de 100 años');
                    return false;
                } else
                if (edad - Math.floor(edad) !== 0) {
                    alert("Algo está mal. Tu edad debe no debe de ser fraccionaria");
                    return false;
                } else {
                    return true;
                }

            }
            function mostrar() {
                document.getElementById("ocultar").style.display = "block";
                document.getElementById("datos").style.display ="none";
            }
            function ocultar(){
                document.getElementById("ocultar").style.display = "none";
                document.getElementById("datos").style.display = "block";
            }
            function mostrarPsw(){
                document.getElementById("datos").style.display = "none";
                document.getElementById("psw").style.display = "block";
            }
            function ocultarPsw(){
                document.getElementById("psw").style.display = "none";
                document.getElementById("datos").style.display = "block";
            }
        </script>
    </body>
</html>
