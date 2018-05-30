<%-- 
    Document   : pruebaExamen
    Created on : 24/05/2017, 07:54:52 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .radioex{
                font-size: 20px;
                text-align: left;
                margin-left: 50px;
                margin-right: 50px;
                margin-top: 10px;
                height: 430px;
            }
            .opc{
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
        </style>
    </head>
    <body>
        <div class="radioex" >
            Pregunta<br/>
            <div class="opc"><input  type="radio" name="preg16" id="unoo16"  value="3" required>
                <label for="unoo16">Mucho</label></div>
            <div class="opc"><input  type="radio" name="preg16" id="doos16"  value="2">
                <label for="doos16">Bastante</label></div>
            <div class="opc"><input  type="radio" name="preg16" id="trees16"  value="1">
                <label for="trees16">Poco</label></div>
            <div class="opc"><input  type="radio" name="preg16" id="cuatroo16"  value="0">
                <label for="cuatroo16">Nada</label></div>
        </div>
    </body>
</html>
