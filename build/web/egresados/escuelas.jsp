<%-- 
    Document   : escuelas
    Created on : 14/05/2017, 09:06:00 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!doctype html>
<%
  HttpSession egresado = request.getSession();
  if(egresado.getAttribute("correo") == null && egresado.getAttribute("id") == null){
      response.sendRedirect("../.");
  }
  String xNombre = (String)egresado.getAttribute("nombre");
%>
<html lang="es">
    <head>
        <title>Escuelas</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="imagenes/icon.ico" />
        <script>
        </script>
        <style>
            @keyframes slidein {
                0% {
                    transform: scale(0.9);
                    opacity: 0.7;		
                }
                100% {
                    transform: scale(1);
                    opacity: 1;	
                }		
            }
            body
            {
                background: auto;
                background-color: white;
                align-content: center;
                font-family: Arial;
                margin:0;
                animation-duration: 1s;
                animation-name: slidein;
            }
            #encabezado
            {
                background-color: crimson;
                color: ghostwhite;
                font-size: 40px;
                text-align: center;
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
            #divgrande
            {
                position: absolute;
                width: 100%;
                height: 100%;
                background-color: white;
            }
            #titulo{
                font-size: 40px;
                color: white;
                background-color: gray;
                text-align: center;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }
            #subtitulo{
                color: gray;
                font-size: 19px;
                margin-left: 50px;
                margin-right: 50px;

            }
            p{
                margin-left: 50px;
                margin-right: 50px;
                font-size: 25px;
            }
            hr{
                margin-left: 45px;
                margin-right: 45px;
                border: 0;
                height: 0;
            }
            #uno{
                border-top: 1px solid #B71C1C;
                border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            }
            #dos{
                border-top: 1px solid #EF5350;
                border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            }

            #tres{
                border-top: 1px solid #FFCDD2;
                border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            }
            #contenedor, #contenedor2, #contenedor3 { 
                margin-left: 50px;
                margin-right: 50px;
            } 
            #cecyt1, #cecyt2, #cecyt3, #cecyt4, #cecyt5, #cecyt6, #cecyt7, #cecyt8, #cecyt9, #cecyt10, #cecyt11, #cecyt12, #cecyt13, #cecyt14, #cecyt15, #cecyt16, #cecyt17, #cecyt18, #cet { 
                border: 5px solid white;
                border-radius: 7px;
                background:#fff; 
                width: 370px;
                height: 310px;
                margin:15px; 
                float:left;
                transition: all 500ms ease;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            } 
            .clear { 
                clear:both; 
            }

            #cecyt1:hover{
                border-color: #D32F2F;
            }
            #fondo1{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt1.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio1{
                background-color: #D32F2F;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo1{
                background-color: #B71C1C;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo1:hover{
                color: #B71C1C;
                background-color: whitesmoke;
            }
            #b1{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #D32F2F;
            }
            #b1:hover {
                background: rgba(0,0,0,0);
                color: #D32F2F;
                box-shadow: inset 0 0 0 3px #D32F2F;
            }

            #cecyt2:hover{
                border-color: #C2185B;
            }
            #fondo2{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt2.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio2{
                background-color: #C2185B;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo2{
                background-color: #880E4F;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo2:hover{
                color: #880E4F;
                background-color: whitesmoke;
            }
            #b2{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #C2185B;
            }
            #b2:hover {
                background: rgba(0,0,0,0);
                color: #C2185B;
                box-shadow: inset 0 0 0 3px #C2185B;
            }

            #cecyt3:hover{
                border-color: #4A148C;
            }
            #fondo3{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt3.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio3{
                background-color: #6A1B9A;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo3{
                background-color: #4A148C;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo3:hover{
                color: #4A148C;
                background-color: whitesmoke;
            }
            #b3{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #6A1B9A;
            }
            #b3:hover {
                background: rgba(0,0,0,0);
                color: #6A1B9A;
                box-shadow: inset 0 0 0 3px #6A1B9A;
            }

            #cecyt4:hover{
                border-color: #303F9F;
            }
            #fondo4{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt4.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio4{
                background-color: #303F9F;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo4{
                background-color: #1A237E;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo4:hover{
                color: #1A237E;
                background-color: whitesmoke;
            }
            #b4{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #303F9F;
            }
            #b4:hover {
                background: rgba(0,0,0,0);
                color: #303F9F;
                box-shadow: inset 0 0 0 3px #303F9F;
            }

            #cecyt5:hover{
                border-color: #388E3C;
            }
            #fondo5{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt5.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio5{
                background-color: #388E3C;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo5{
                background-color: #1B5E20;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo5:hover{
                color: #1B5E20;
                background-color: whitesmoke;
            }
            #b5{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #388E3C;
            }
            #b5:hover {
                background: rgba(0,0,0,0);
                color: #388E3C;
                box-shadow: inset 0 0 0 3px #388E3C;
            }

            #cecyt6:hover{
                border-color: #EF6C00;
            }
            #fondo6{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt6.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio6{
                background-color: #EF6C00;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo6{
                background-color: #E65100;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo6:hover{
                color: #E65100;
                background-color: whitesmoke;
            }
            #b6{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #EF6C00;
            }
            #b6:hover {
                background: rgba(0,0,0,0);
                color: #EF6C00;
                box-shadow: inset 0 0 0 3px #EF6C00;
            }

            #cecyt7:hover{
                border-color: #5D4037;
            }
            #fondo7{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt7.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio7{
                background-color: #5D4037;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo7{
                background-color: #3E2723;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo7:hover{
                color: #3E2723;
                background-color: whitesmoke;
            }
            #b7{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #5D4037;
            }
            #b7:hover {
                background: rgba(0,0,0,0);
                color: #5D4037;
                box-shadow: inset 0 0 0 3px #5D4037;
            }

            #cecyt8:hover{
                border-color: #546E7A;
            }
            #fondo8{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt8.JPG");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio8{
                background-color: #546E7A;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo8{
                background-color: #37474F;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo8:hover{
                color: #37474F;
                background-color: whitesmoke;
            }
            #b8{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #546E7A;
            }
            #b8:hover {
                background: rgba(0,0,0,0);
                color: #546E7A;
                box-shadow: inset 0 0 0 3px #546E7A;
            }

            #cecyt9:hover{
                border-color: #2979FF;
            }
            #fondo9{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt9.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio9{
                background-color: #2979FF;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo9{
                background-color: #2962FF;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo9:hover{
                color: #2962FF;
                background-color: whitesmoke;
            }
            #b9{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #2979FF;
            }
            #b9:hover {
                background: rgba(0,0,0,0);
                color: #2979FF;
                box-shadow: inset 0 0 0 3px #2979FF;
            }

            #cecyt10:hover{
                border-color: #0097A7;
            }
            #fondo10{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt10.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio10{
                background-color: #0097A7;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo10{
                background-color: #006064;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo10:hover{
                color: #006064;
                background-color: whitesmoke;
            }
            #b10{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #0097A7;
            }
            #b10:hover {
                background: rgba(0,0,0,0);
                color: #0097A7;
                box-shadow: inset 0 0 0 3px #0097A7;
            }

            #cecyt11:hover{
                border-color: #FF4081;
            }
            #fondo11{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt11.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio11{
                background-color: #FF4081;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo11{
                background-color: #C51162;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo11:hover{
                color: #C51162;
                background-color: whitesmoke;
            }
            #b11{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #FF4081;
            }
            #b11:hover {
                background: rgba(0,0,0,0);
                color: #FF4081;
                box-shadow: inset 0 0 0 3px #FF4081;
            }

            #cecyt12:hover{
                border-color: #AFB42B;
            }
            #fondo12{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt12.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio12{
                background-color: #AFB42B;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo12{
                background-color: #9E9D24;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo12:hover{
                color: #9E9D24;
                background-color: whitesmoke;
            }
            #b12{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #AFB42B;
            }
            #b12:hover {
                background: rgba(0,0,0,0);
                color: #AFB42B;
                box-shadow: inset 0 0 0 3px #AFB42B;
            }

            #cecyt13:hover{
                border-color: #40C4FF;
            }
            #fondo13{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt13.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio13{
                background-color: #40C4FF;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo13{
                background-color: #00B0FF;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo13:hover{
                color: #00B0FF;
                background-color: whitesmoke;
            }
            #b13{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #40C4FF;
            }
            #b13:hover {
                background: rgba(0,0,0,0);
                color: #40C4FF;
                box-shadow: inset 0 0 0 3px #40C4FF;
            }

            #cecyt14:hover{
                border-color: #795548;
            }
            #fondo14{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt14.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio14{
                background-color: #795548;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo14{
                background-color: #4E342E;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo14:hover{
                color: #4E342E;
                background-color: whitesmoke;
            }
            #b14{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #795548;
            }
            #b14:hover {
                background: rgba(0,0,0,0);
                color: #795548;
                box-shadow: inset 0 0 0 3px #795548;
            }

            #cecyt15:hover{
                border-color: #757575;
            }
            #fondo15{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt15.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio15{
                background-color: #757575;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo15{
                background-color: #424242;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo15:hover{
                color: #424242;
                background-color: whitesmoke;
            }
            #b15{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #757575;
            }
            #b15:hover {
                background: rgba(0,0,0,0);
                color: #757575;
                box-shadow: inset 0 0 0 3px #757575;
            }

            #cecyt16:hover{
                border-color: #00E676;
            }
            #fondo16{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt16.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio16{
                background-color: #00E676;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo16{
                background-color: #00C853;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo16:hover{
                color: #00C853;
                background-color: whitesmoke;
            }
            #b16{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #00E676;
            }
            #b16:hover {
                background: rgba(0,0,0,0);
                color: #00E676;
                box-shadow: inset 0 0 0 3px #00E676;
            }

            #cecyt17:hover{
                border-color: #FF3D00;
            }
            #fondo17{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt17.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio17{
                background-color: #FF3D00;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo17{
                background-color: #DD2C00;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo17:hover{
                color: #DD2C00;
                background-color: whitesmoke;
            }
            #b17{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #FF3D00;
            }
            #b17:hover {
                background: rgba(0,0,0,0);
                color: #FF3D00;
                box-shadow: inset 0 0 0 3px #FF3D00;
            }

            #cecyt18:hover{
                border-color: #1DE9B6;
            }
            #fondo18{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cecyt18.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medio18{
                background-color: #1DE9B6;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajo18{
                background-color: #00BFA5;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajo18:hover{
                color: #00BFA5;
                background-color: whitesmoke;
            }
            #b18{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #1DE9B6;
            }
            #b18:hover {
                background: rgba(0,0,0,0);
                color: #1DE9B6;
                box-shadow: inset 0 0 0 3px #1DE9B6;
            }

            #cet:hover{
                border-color: #FF8F00;
            }
            #fondoCet{
                background-image: URL("../imagenes/Escuelas/Cecyt1/cet.jpg");
                background-repeat: no-repeat;
                background-size: 100%, 100%;
                height: 168px;
            }
            #medioCet{
                background-color: #FF8F00;
                height: 40px;
                color: white;
                font-size: 30px;
                text-align: center;
                transition: all 500ms ease;

            }
            #abajoCet{
                background-color: #FF6F00;
                height: 102px;
                transition: all 500ms ease;
                color: white;
                font-size: 16px;
                text-align: center;
            }
            #abajoCet:hover{
                color: #FF6F00;
                background-color: whitesmoke;
            }
            #bCet{
                border: none;
                color: #f2f2f2;
                padding: 10px;
                font-size: 18px;
                border-radius: 5px;
                position: relative;
                box-sizing: border-box;
                transition: all 500ms ease;
                background: #FF8F00;
            }
            #bCet:hover {
                background: rgba(0,0,0,0);
                color: #FF8F00;
                box-shadow: inset 0 0 0 3px #FF8F00;
            }


        </style>
    </head>
    <body>
        <ul>
            <li><a href="paginaPrincipal.jsp">Inicio</a></li>
            <li><a class="active" href="#Escuelas"><font color="white">Nuestras escuelas</font></a></li>
            <li style="float:right"><a href="destruyeSesion.jsp">Cerrar Sesión</a></li>
            <li style="float:right"><a href="obtenerData.jsp"><%=xNombre%></a></li>
        </ul>
        <div id="titulo">
            <br><br>Nuestras escuelas<br><br><br>
        </div>
        <div id="subtitulo">
            <br><br>Actualmente el Instituto Politecnico Nacional cuenta con diversas opciones para que puedas cursas el nivel medio superior, las cuales son las siguientes:<br>
        </div>
        <div id="cecyt">
            <p id="t1">Centro de Estudios Científicos y Tecnológicos</p>
            <hr id="uno" />
            <div id="contenedor">            
                <div id="cecyt1">
                    <div id="fondo1">

                    </div>
                    <div id="medio1">
                        Cecyt 1
                    </div>
                    <div id="abajo1">
                        <br>Gonzalo Vázquez Vela<br><br>
                        <center><a href="cecyts/cecyt1.jsp"><button id="b1">Ver escuela</button></a></center>
                    </div>
                </div>            
                <div id="cecyt2">
                    <div id="fondo2">

                    </div>
                    <div id="medio2">
                        Cecyt 2
                    </div>
                    <div id="abajo2">
                        <br>Miguel Bernard<br><br>
                        <center><a href="cecyts/cecyt2.jsp"><button id="b2">Ver escuela</button></a></center>
                    </div>
                </div>             
                <div id="cecyt3">
                    <div id="fondo3">

                    </div>
                    <div id="medio3">
                        Cecyt 3
                    </div>
                    <div id="abajo3">
                        <br>Estanislao Ramirez Ruiz<br><br>
                        <center><a href="cecyts/cecyt3.jsp"><button id="b3">Ver escuela</button></a></center>
                    </div>
                </div>   
                <div id="cecyt4">
                    <div id="fondo4">

                    </div>
                    <div id="medio4">
                        Cecyt 4
                    </div>
                    <div id="abajo4">
                        <br>Lázaro Cárdenas<br><br>
                        <center><a href="cecyts/cecyt4.jsp"><button id="b4">Ver escuela</button></a></center>
                    </div>
                </div>            
                <div id="cecyt5">
                    <div id="fondo5">

                    </div>
                    <div id="medio5">
                        Cecyt 5
                    </div>
                    <div id="abajo5">
                        <br>Benito Juárez García<br><br>
                        <center><a href="cecyts/cecyt5.jsp"><button id="b5">Ver escuela</button></a></center>
                    </div>
                </div>             
                <div id="cecyt6">
                    <div id="fondo6">

                    </div>
                    <div id="medio6">
                        Cecyt 6
                    </div>
                    <div id="abajo6">
                        <br>Miguel de Othón de Mendizabal<br><br>
                        <center><a href="cecyts/cecyt6.jsp"><button id="b6">Ver escuela</button></a></center>
                    </div>
                </div>
                <div id="cecyt7">
                    <div id="fondo7">

                    </div>
                    <div id="medio7">
                        Cecyt 7
                    </div>
                    <div id="abajo7">
                        <br>Cuahtemoc<br><br>
                        <center><a href="cecyts/cecyt7.jsp"><button id="b7">Ver escuela</button></a></center>
                    </div>
                </div>            
                <div id="cecyt8">
                    <div id="fondo8">

                    </div>
                    <div id="medio8">
                        Cecyt 8
                    </div>
                    <div id="abajo8">
                        <br>Narciso Bassols<br><br>
                        <center><a href="cecyts/cecyt8.jsp"><button id="b8">Ver escuela</button></a></center>
                    </div>
                </div>            
                <div id="cecyt9">
                    <div id="fondo9">

                    </div>
                    <div id="medio9">
                        Cecyt 9
                    </div>
                    <div id="abajo9">
                        <br>Juan de Dios Bátiz<br><br>
                        <center><a href="cecyts/cecyt9.jsp"><button id="b9">Ver escuela</button></a></center>
                    </div>
                </div> 
                <div id="cecyt10">
                    <div id="fondo10">

                    </div>
                    <div id="medio10">
                        Cecyt 10
                    </div>
                    <div id="abajo10">
                        <br>Carlos Vallejo Márquez<br><br>
                        <center><a href="cecyts/cecyt10.jsp"><button id="b10">Ver escuela</button></a></center>
                    </div>
                </div>             
                <div id="cecyt11">
                    <div id="fondo11">

                    </div>
                    <div id="medio11">
                        Cecyt 11
                    </div>
                    <div id="abajo11">
                        <br>Wilfrido Massieu<br><br>
                        <center><a href="cecyts/cecyt11.jsp"><button id="b11">Ver escuela</button></a></center>
                    </div>
                </div>            
                <div id="cecyt12">
                    <div id="fondo12">

                    </div>
                    <div id="medio12">
                        Cecyt 12
                    </div>
                    <div id="abajo12">
                        <br>José María Morelos<br><br>
                        <center><a href="cecyts/cecyt12.jsp"><button id="b12">Ver escuela</button></a></center>
                    </div>
                </div>   
                <div id="cecyt13">
                    <div id="fondo13">

                    </div>
                    <div id="medio13">
                        Cecyt 13
                    </div>
                    <div id="abajo13">
                        <br>Ricardo Flores Magón<br><br>
                        <center><a href="cecyts/cecyt13.jsp"><button id="b13">Ver escuela</button></a></center>
                    </div>
                </div>             
                <div id="cecyt14">
                    <div id="fondo14">

                    </div>
                    <div id="medio14">
                        Cecyt 14
                    </div>
                    <div id="abajo14">
                        <br>Luis Enrique Erro Soler<br><br>
                        <center><a href="cecyts/cecyt14.jsp"><button id="b14">Ver escuela</button></a></center>
                    </div>
                </div>              
                <div id="cecyt15">
                    <div id="fondo15">

                    </div>
                    <div id="medio15">
                        Cecyt 15
                    </div>
                    <div id="abajo15">
                        <br>Diodoro Antúnez Echegaray<br><br>
                        <center><a href="cecyts/cecyt15.jsp"><button id="b15">Ver escuela</button></a></center>
                    </div>
                </div>   

                <div class="clear"></div> 
            </div>
        </div>
        <div id="otroos">
            <p i="t3">Centro de Estudios Tecnológicos</p>
            <hr id="tres" />
            <div id="contenedor3">
                <div id="cet">
                    <div id="fondoCet">

                    </div>
                    <div id="medioCet">
                        Cet 1
                    </div>
                    <div id="abajoCet">
                        <br>Walter Cross Buchanan<br><br>
                        <center><a href="cecyts/cecyt16.jsp"><button id="bCet">Ver escuela</button></a></center>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div id="otros">
            <p id="t2">Centro de Estudios Científicos y Tecnológicos fuera de la CDMX (No entran en programa comipems)</p>
            <hr id="dos" />
            <div id="contenedor2">
                <div id="cecyt16">
                    <div id="fondo16">

                    </div>
                    <div id="medio16">
                        Cecyt 16
                    </div>
                    <div id="abajo16">
                        <br>Hidalgo<br><br>

                    </div>
                </div>
                <div id="cecyt17">
                    <div id="fondo17">

                    </div>
                    <div id="medio17">
                        Cecyt 17
                    </div>
                    <div id="abajo17">
                        <br>León<br><br>

                    </div>
                </div>
                <div id="cecyt18">
                    <div id="fondo18">

                    </div>
                    <div id="medio18">
                        Cecyt 18
                    </div>
                    <div id="abajo18">
                        <br>Zacatecas<br><br>

                    </div>
                </div>

            </div>
            <div class="clear"></div>
        </div>

        </div>
    </body>
</html>
