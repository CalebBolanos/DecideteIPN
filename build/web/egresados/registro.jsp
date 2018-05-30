<%-- 
    Document   : registro
    Created on : 13/05/2017, 05:53:26 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String btnRegistro = request.getParameter("btnRegistro") == null ? "" : request.getParameter("btnRegistro");
    String chk = request.getParameter("checa") == null ? "no" : request.getParameter("checa");
    String xDios = "";
    if (btnRegistro.equals("Registrarse")) {
        String nombre = request.getParameter("nombre") == null ? "" : request.getParameter("nombre");
        String email = request.getParameter("email") == null ? "" : request.getParameter("email");
        String edad = request.getParameter("edad") == null ? "" : request.getParameter("edad");
        String genero = request.getParameter("nombre") == null ? "" : request.getParameter("genero");
        String contrasena = request.getParameter("contrasena") == null ? "" : request.getParameter("contrasena");
        String contrasena1 = request.getParameter("contrasena1") == null ? "" : request.getParameter("contrasena1");

        validaciones.registro usuario = new validaciones.registro(nombre, email, edad, genero, contrasena, contrasena1);

        if (usuario.VALIDO()) {
            response.sendRedirect("paginaPrincipal.jsp");
        }
        xDios = usuario.ERROR();

    }
%>
<%
    //String xxxD = "";
%>

<%    String error = request.getParameter("e");
    if (error != null) {
        xDios = error;
    }
%>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <title>Registro</title>
        <link rel="shortcut icon" href="imagenes/icon.ico" />
        <meta charset="utf-8">
        <style>
            @keyframes slidein {
                from {
                    margin-top: 100%;
                    width: 500%
                }

                to {
                    margin-right: 0%;
                    width: 100%;
                }
            }
            body
            {
                background-color: whitesmoke;
                align-content: center;
                font-family: Arial;
                margin:0;
                animation-duration: 1s;
                animation-name: slidein;

            }
            input[type=submit]
            {
                border: none;
                background: crimson;
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
                color: crimson;
                box-shadow: inset 0 0 0 3px crimson;
            }
            #titulo
            {
                background-color: crimson;
                color: white;
                font-size: 40px;
            }
            #content{
                margin:0 auto;
                position:relative;
                width: 100%;
            }
            #cuadro1
            {
                background-color: crimson;
                color: white;
                font-size: 55px;
                text-align: center;
                width: 40%;
                height: 100%;
                float: left;
                position: fixed;  
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);

            }
            #cuadro2
            {
                background-color: whitesmoke;
                color: white;
                width: 60%;
                height: 100%;
                float: right;
            }
            input[type=email] {
                width: 60%;
                padding: 12px 20px;
                font-size: 20px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }

            input[type=email]:focus , input[type=email]:hover {
                border: 3px solid crimson;
            }
            input[type=number] {
                width: 60%;
                padding: 12px 20px;
                font-size: 20px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }

            input[type=number]:focus, input[type=number]:hover {
                border: 3px solid crimson;
            }
            input[type=text] {
                width: 60%;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                font-size: 20px;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }

            input[type=text]:focus, input[type=text]:hover  {
                border: 3px solid crimson;
            }
            input[type=password]:focus, input[type=password]:hover {
                border: 3px solid crimson;
            }
            input[type=password] {
                width: 40%;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                font-size: 20px;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }
            select{
                appearance: none;
                font-family: Arial;
                font-size: 20px;
                border: 3px solid #ccc;
                transition: all 500ms ease;
            }
            select:hover{
                border: 3px solid crimson;
            }
            label
            {
                font-size: 20px;
                color: dimgrey;
            }
            a
            {
                border: none;
                background: rgba(0,0,0,0);
                color: crimson;
                padding: 10px;
                font-size: 15px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                text-decoration: none;
            }
            a:hover {
                background: rgba(0,0,0,0);
                color: crimson;
                font-size: 20px;
            }
        </style>
        <script>
            function validar()
            {
                var nombre = document.getElementById('nombre').value;
                var email = document.getElementById('email').value;
                var edad = document.getElementById('edad').value;
                var genero = document.getElementById('genero').selectedIndex;
                var expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                var contrasena = document.getElementById('contrasena').value;
                var contrasena1 = document.getElementById('contrasena1').value;
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
                if (contrasena1 === "") {
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
                if (contrasena !== contrasena1) {
                    alert('Algo está mal. Asegurate de que las contraseñas sean identicas');
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
        </script>
    </head>
    <body>
        <div id="content">
            <div id="cuadro1">
                <br><br><br><br><br>Registro<span style="font-size: 25px"><br>Como egresado</span>
            </div>
            <div id="cuadro2">
                <form id="forma" action="validarRegistro.jsp" onsubmit="return validar();" method="POST"> <!--"paginaPrincipal.jsp"-->
                    </br></br>
                    <center>
                        <input type="text" id="nombre" name="nombre" placeholder="Escribe tu nombre" required /><br><br>
                        <input type="email" id="email" name="email" placeholder="Escribe tu correo" required /><br><br>
                        <input type="number" id="edad" name="edad" min="12" max="99" placeholder="Escribe tu edad" required><br><br>
                        <label for="genero">Genero:</label>
                        <select id="genero" name="genero" required>
                            <option value=""> -Seleccione una opción- </option>
                            <option value="1"> Mujer </option>
                            <option value="2"> Hombre </option>
                        </select><br><br>
                        <label for="cecyt">Escuela:</label>
                        <select id="cecyt" name="cecyt" required>
                            <option value=""> -Seleccione una opción- </option>
                            <option value="1">Cecyt 1</option>
                            <option value="2">Cecyt 2</option>
                            <option value="3">Cecyt 3</option>
                            <option value="4">Cecyt 4</option>
                            <option value="5">Cecyt 5</option>
                            <option value="6">Cecyt 6</option>
                            <option value="7">Cecyt 7</option>
                            <option value="8">Cecyt 8</option>
                            <option value="9">Cecyt 9</option>
                            <option value="10">Cecyt 10</option>
                            <option value="11">Cecyt 11</option>
                            <option value="12">Cecyt 12</option>
                            <option value="13">Cecyt 13</option>
                            <option value="14">Cecyt 14</option>
                            <option value="15">Cecyt 15</option>
                            <option value="16">Cet</option>
                        </select><br><br>
                        <input type="password" id="contrasena" name="contrasena" placeholder="Escribe tu contraseña" required /><br><br>
                        <input type="password" id="contrasena1" name="contrasena1" placeholder="Vuelve a escribir tu contraseña" required /><br><br>
                        <center><input type="submit" id="btnRegistro" name="btnRegistro" value="Registrarse" /></center>
                        <input type="hidden" id="checa" name="checa" value="chk1" />
                </form> 
                <div style="color: black">
                    <%=xDios%>
                </div>
                <br> <center><a href="../index.html">Regresar a inicio</a></center>
                <br><br>
            </div>
        </div>
    </body>
</html>
