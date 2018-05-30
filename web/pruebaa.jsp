<%-- 
    Document   : pruebaa
    Created on : 13/06/2017, 11:24:26 AM
    Author     : Caleb
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            @keyframes traer{
                0% {
                    transform: scaleY(.5);
                }
                40% {
                    transform: scaleY(1.02);
                }
                60% {
                    transform: scaleY(0.98);
                }
                80% {
                    transform: scaleY(1.01);
                }
                100% {
                    transform: scaleY(0.98);
                }				
                80% {
                    transform: scaleY(1.01);
                }
                100% {
                    transform: scaleY(1);
                }
            }
            body
            {
                background-color: white;
                align-content: center;
                font-family: Arial;
                margin:0;
                animation-duration: 1.5s;
                animation-name: traer;

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
            #titulo
            {
                background-color: #0288D1;
                color: white;
                font-size: 35px;
            }
            #tabla
            {
                position: absolute;
                width: 100%;
                height: 100%;
                background-color: whitesmoke;
            }
            table
            {
                background-size: auto;
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
            #opcion1, #opcion2, #opcion3 { 
                border: 5px solid whitesmoke;
                border-radius: 7px;
                background:#fff; 
                width: 1000px;
                height: 310px;
                margin:15px; 
                float:left;
                transition: all 500ms ease;
            }
            #opcion1:hover, #opcion2:hover, #opcion3:hover { 
                border-color: #0288D1;
            }
            #texto1, #texto2, #texto3{
                background-color: #0288D1;
                position: absolute;
                height: 310px;
                width: 300px;
                font-family: Arial;
                font-size: 27px;
                text-align: center;
                color: white;
                transition: all 500ms ease;
            }
            #imagen1, #imagen2, #imagen3  {
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                width: 700px;
                height: 310px;
                float: right;
                transition: all 500ms ease;

            }
            #texto1:hover, #texto2:hover, #texto3:hover{
                color: #0288D1;
                background-color: white;
            }
            iframe
            {
                border: 0px;
            }
            .radioex{
                font-size: 20px;
                text-align: left;
                margin-left: 50px;
                margin-right: 50px;
                margin-top: 10px;
                height: 250px;
            }
            #contenedor{
                background-color: whitesmoke;
                border: 5px solid gray;
                border-radius: 10px;
                margin-left: 150px;
                margin-right: 150px;
                margin-top: -100px;
                margin-bottom: 50px;
                position:relative;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }

            #opc{
                clear: both;
                margin: 0 50px;
            }

            label {
                width: 200px;
                border-radius: 3px;
                border: 1px solid #D1D3D4
            }

            /* hide input */
            input[type=radio]:empty {
                margin-left: -100000000px;
            }

            /* style label */
            input[type=radio]:empty ~ label {
                position: relative;
                float: left;
                line-height: 2.5em;
                text-indent: 3.25em;
                margin-top: 2em;
                cursor: pointer;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;


            }

            input[type=radio]:empty ~ label:before {
                position: absolute;
                display: block;
                top: 0;
                bottom: 0;
                left: 0;
                content: '';
                width: 2.5em;
                background: #D1D3D4;
                border-radius: 3px 0 0 3px;
                transition: all 500ms ease;
            }

            /* toggle hover */
            input[type=radio]:hover:not(:checked) ~ label:before {
                content:'\2714';
                text-indent: .9em;
                color: #C2C2C2;
                transition: unset;
            }

            input[type=radio]:hover:not(:checked) ~ label {
                color: #888;
            }

            /* toggle on */
            input[type=radio]:checked ~ label:before {
                content:'\2714';
                text-indent: .9em;
                color: white;
                background-color: #0288D1;
            }

            input[type=radio]:checked ~ label {
                color: #0288D1;
                border-color: #0288D1;
            }

            /* radio focus */
            input[type=radio]:focus ~ label:before {
                box-shadow: 0 0 0 3px #999;
            }
            input[type=submit]
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
            input[type=submit]:hover {
                background: rgba(0,0,0,0);
                color: #0288D1;
                box-shadow: inset 0 0 0 3px #0288D1;
            }
        </style>
        <script>
            function calificar(){
                document.xdd.
            }
        </script>
    </head>
    <body>
        <%
                BD.cDatos base = new BD.cDatos();
                try {
                    int contador = 1;
                    base.conectar();
                    ResultSet preguntas = base.consulta("select * from vwrespex;");
                    out.println("<form method=\"post\" name=\"xdd\" action=\"../verificaNecesidades.jsp\">");
                    while(preguntas.next()){
                        out.println(contador);
                        out.println("<div class=\"radioex\" >");
                        out.println("pregunta <br>");
                        ArrayList <Object> incisos = new ArrayList();
                        incisos.add("cosaxd");
                        incisos.add("piña");
                        Collections.shuffle(incisos);
                        String posicion = "";
                        int contar = 1;
                        for(int i = 0; i < incisos.size(); i++){
                            if(contar == 1){
                                posicion = "unoo";
                            }
                            if(contar == 2){
                                posicion = "doos";
                            }
                            
                            out.println("<div id=\"opc\"><input  type=\"radio\" name=\"preg"+contador+"\" id=\""+posicion+contador+"\"  value=\"1\" required>");
                            out.println("<label for=\""+posicion+contador+"\">"+incisos.get(i)+"</label></div>");
                            contar++;
                        }
                        out.println("</div>");
                        contador++;
                    }
                    out.println("<center><input type=\"submit\" id=\"btnEnviar\" name=\"btnEnviar\" value=\"Enviar\" /></center>");
                    out.println("</form>");
                } catch (Exception xd) {
                    out.println("error");
                }
            %>
            
            <form method="post" action="../verificaNecesidades.jsp">
                <div class="radioex" >
                    Este cerca de un transporte público <br/>
                    <div id="opc"><input  type="radio" name="preg1" id="unoo1"  value="1" required>
                        <label for="unoo1">Sí</label></div>
                    <div id="opc"><input  type="radio" name="preg1" id="doos1"  value="0">
                        <label for="doos1">No</label></div>

                </div>
                <center><input type="submit" id="btnEnviar" name="btnEnviar" value="Enviar" /></center>
            </form>
    </body>
</html>
