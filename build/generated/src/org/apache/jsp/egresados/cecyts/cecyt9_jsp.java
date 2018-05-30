package org.apache.jsp.egresados.cecyts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cecyt9_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("    <head>\n");
      out.write("        <title>Cecyt 9</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <script></script>\n");
      out.write("        <style>\n");
      out.write("            @keyframes slidein {\n");
      out.write("                from {\n");
      out.write("                    margin-left: 100%;\n");
      out.write("                    width: 500%\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                to {\n");
      out.write("                    margin-right: 0%;\n");
      out.write("                    width: 100%;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                background-color: white;\n");
      out.write("                align-content: center;\n");
      out.write("                font-family: Arial;\n");
      out.write("                margin:0;\n");
      out.write("                animation-duration: 1.5s;\n");
      out.write("                animation-name: slidein;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            button \n");
      out.write("            {\n");
      out.write("                border: none;\n");
      out.write("                background: #0288D1;\n");
      out.write("                color: #f2f2f2;\n");
      out.write("                padding: 10px;\n");
      out.write("                font-size: 18px;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                position: relative;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                transition: all 500ms ease;\n");
      out.write("            }\n");
      out.write("            button:hover {\n");
      out.write("                background: rgba(0,0,0,0);\n");
      out.write("                color: #0288D1;\n");
      out.write("                box-shadow: inset 0 0 0 3px #0288D1;\n");
      out.write("            }\n");
      out.write("            ul {\n");
      out.write("                list-style-type: none;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                overflow: hidden;\n");
      out.write("                background-color: whitesmoke;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li {\n");
      out.write("                float: left;\n");
      out.write("                border-right:1px solid #bbb;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li:last-child {\n");
      out.write("                border-right: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li a {\n");
      out.write("                display: block;\n");
      out.write("                color: gray;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 14px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li a:hover:not(.active) {\n");
      out.write("                background-color: silver;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .active {\n");
      out.write("                background-color: gray;\n");
      out.write("            }\n");
      out.write("            #contenido{\n");
      out.write("                background-color: white;\n");
      out.write("                font-family: Arial;\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("            #contenedor{ \n");
      out.write("                margin: 10px;\n");
      out.write("            } \n");
      out.write("            .clear { \n");
      out.write("                clear:both; \n");
      out.write("            }\n");
      out.write("            #titulo\n");
      out.write("            {\n");
      out.write("                background-image: URL(\"../contenidoPagina/Escuelas/Cecyt1/cecyt9.jpg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 100%, 100%;\n");
      out.write("                background-attachment: fixed;\n");
      out.write("                color: white;\n");
      out.write("                font-size: 95px;\n");
      out.write("                text-align: center;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            #opaco{\n");
      out.write("                background-color: black;\n");
      out.write("                border: 1px solid black;\n");
      out.write("                opacity: 0.6;\n");
      out.write("                filter: alpha(opacity=100); \n");
      out.write("            }\n");
      out.write("            #subtitulo{\n");
      out.write("                font-size: 30px;\n");
      out.write("                color: #2979FF;/*color*/\n");
      out.write("                margin: 20px;\n");
      out.write("                margin-bottom: 0px;\n");
      out.write("            }\n");
      out.write("            hr{\n");
      out.write("                margin-left: 10px;\n");
      out.write("                margin-right: 10px;\n");
      out.write("                border: 0;\n");
      out.write("                height: 0;\n");
      out.write("            }\n");
      out.write("            #uno{\n");
      out.write("                border-top: 1px solid gray;\n");
      out.write("                border-bottom: 1px solid rgba(255, 255, 255, 0.3);\n");
      out.write("            }\n");
      out.write("            #texto{\n");
      out.write("                margin: 20px;\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("            #textoA{\n");
      out.write("                margin: 20px;\n");
      out.write("                font: bold 30px/100px Arial, Serif;\n");
      out.write("            }\n");
      out.write("            #contenedor{ \n");
      out.write("                margin-left: 50px;\n");
      out.write("                margin-right: 50px;\n");
      out.write("                margin-top: 20px;\n");
      out.write("            } \n");
      out.write("            #cuadrox{ \n");
      out.write("                border: 5px solid #2979FF;\n");
      out.write("                border-radius: 7px;\n");
      out.write("                background-image: URL(\"carreras/maquinas9.png\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 100%, 100%;\n");
      out.write("                color: white;\n");
      out.write("                width: 350px;\n");
      out.write("                height: 205px;\n");
      out.write("                margin:15px; \n");
      out.write("                float:left;\n");
      out.write("                transition: all 500ms ease;\n");
      out.write("                font-size: 30px;\n");
      out.write("                text-align: center;\n");
      out.write("            } \n");
      out.write("            #cuadrox1{ \n");
      out.write("                border: 5px solid #2979FF;\n");
      out.write("                border-radius: 7px;\n");
      out.write("                background-image: URL(\"carreras/programacion.jpg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 100%, 100%;\n");
      out.write("                color: white;\n");
      out.write("                width: 350px;\n");
      out.write("                height: 205px;\n");
      out.write("                margin:15px; \n");
      out.write("                float:left;\n");
      out.write("                transition: all 500ms ease;\n");
      out.write("                font-size: 30px;\n");
      out.write("                text-align: center;\n");
      out.write("            } \n");
      out.write("            #cuadrox2{ \n");
      out.write("                border: 5px solid #2979FF;\n");
      out.write("                border-radius: 7px;\n");
      out.write("                background-image: URL(\"carreras/sistemas9.png\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 100%, 100%;\n");
      out.write("                color: white;\n");
      out.write("                width: 350px;\n");
      out.write("                height: 205px;\n");
      out.write("                margin:15px; \n");
      out.write("                float:left;\n");
      out.write("                transition: all 500ms ease;\n");
      out.write("                font-size: 30px;\n");
      out.write("                text-align: center;\n");
      out.write("            } \n");
      out.write("\n");
      out.write("            .clear { \n");
      out.write("                clear:both; \n");
      out.write("            }\n");
      out.write("            #grande{\n");
      out.write("                position:relative;\n");
      out.write("                top:-170px;\n");
      out.write("                background-color: white;\n");
      out.write("            }\n");
      out.write("            #pricing-table {\n");
      out.write("                margin: 60px auto;\n");
      out.write("                margin-left: 25%;\n");
      out.write("                text-align: center;\n");
      out.write("                width: 892px; /* total computed width = 222 x 3 + 226 */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #pricing-table .plan {\n");
      out.write("                font: 12px 'Lucida Sans', 'trebuchet MS', Arial, Helvetica;\n");
      out.write("                text-shadow: 0 1px rgba(255,255,255,.8);        \n");
      out.write("                background: #2979FF;      \n");
      out.write("                border: 1px solid #2962FF;\n");
      out.write("                color: #2962FF;\n");
      out.write("                padding: 20px;\n");
      out.write("                width: 180px; /* plan width = 180 + 20 + 20 + 1 + 1 = 222px */      \n");
      out.write("                float: left;\n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #pricing-table #most-popular {\n");
      out.write("                z-index: 2;\n");
      out.write("                top: -13px;\n");
      out.write("                border-width: 3px;\n");
      out.write("                padding: 30px 20px;\n");
      out.write("                -moz-border-radius: 5px;\n");
      out.write("                -webkit-border-radius: 5px;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                -moz-box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px -10px rgba(0, 0, 0, .15);\n");
      out.write("                -webkit-box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px -10px rgba(0, 0, 0, .15);\n");
      out.write("                box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px -10px rgba(0, 0, 0, .15);    \n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            #pricing-table h3 {\n");
      out.write("                font-size: 20px;\n");
      out.write("                font-weight: normal;\n");
      out.write("                padding: 20px;\n");
      out.write("                margin: -20px -20px 50px -20px;\n");
      out.write("                background-color: #eee;\n");
      out.write("                background-image: -moz-linear-gradient(#fff,#eee);\n");
      out.write("                background-image: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#eee));    \n");
      out.write("                background-image: -webkit-linear-gradient(#fff, #eee);\n");
      out.write("                background-image: -o-linear-gradient(#fff, #eee);\n");
      out.write("                background-image: -ms-linear-gradient(#fff, #eee);\n");
      out.write("                background-image: linear-gradient(#fff, #eee);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #pricing-table #most-popular h3 {\n");
      out.write("                background-color: #ddd;\n");
      out.write("                background-image: -moz-linear-gradient(#eee,#ddd);\n");
      out.write("                background-image: -webkit-gradient(linear, left top, left bottom, from(#eee), to(#ddd));    \n");
      out.write("                background-image: -webkit-linear-gradient(#eee, #ddd);\n");
      out.write("                background-image: -o-linear-gradient(#eee, #ddd);\n");
      out.write("                background-image: -ms-linear-gradient(#eee, #ddd);\n");
      out.write("                background-image: linear-gradient(#eee, #ddd);\n");
      out.write("                margin-top: -30px;\n");
      out.write("                padding-top: 30px;\n");
      out.write("                -moz-border-radius: 5px 5px 0 0;\n");
      out.write("                -webkit-border-radius: 5px 5px 0 0;\n");
      out.write("                border-radius: 5px 5px 0 0; \t\t\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #pricing-table .plan:nth-child(1) h3 {\n");
      out.write("                -moz-border-radius: 5px 0 0 0;\n");
      out.write("                -webkit-border-radius: 5px 0 0 0;\n");
      out.write("                border-radius: 5px 0 0 0;       \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #pricing-table .plan:nth-child(4) h3 {\n");
      out.write("                -moz-border-radius: 0 5px 0 0;\n");
      out.write("                -webkit-border-radius: 0 5px 0 0;\n");
      out.write("                border-radius: 0 5px 0 0;       \n");
      out.write("            }\t\n");
      out.write("\n");
      out.write("            #pricing-table h3 span {\n");
      out.write("                display: block;\n");
      out.write("                font: bold 25px/100px Georgia, Serif;\n");
      out.write("                color: #777;\n");
      out.write("                background: #fff;\n");
      out.write("                border: 5px solid #fff;\n");
      out.write("                height: 100px;\n");
      out.write("                width: 100px;\n");
      out.write("                margin: 10px auto -65px;\n");
      out.write("                -moz-border-radius: 100px;\n");
      out.write("                -webkit-border-radius: 100px;\n");
      out.write("                border-radius: 100px;\n");
      out.write("                -moz-box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;\n");
      out.write("                -webkit-box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;\n");
      out.write("                box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            .clear:before, .clear:after {\n");
      out.write("                content:\"\";\n");
      out.write("                display:table\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .clear:after {\n");
      out.write("                clear:both\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .clear {\n");
      out.write("                zoom:1\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"../paginaPrincipal.jsp\">Inicio</a></li>\n");
      out.write("            <li><a href=\"../escuelas.jsp\" class=\"active\"><font color=\"white\">Nuestras escuelas</font></a></li>\n");
      out.write("            <li style=\"float:right\"><a href=\"../destruyeSesion.jsp\">Cerrar Sesión</a></li>\n");
      out.write("            <li style=\"float:right\"><a href=\"../obtenerDatos.jsp\">Usuario</a></li>\n");
      out.write("        </ul>\n");
      out.write("        <div id=\"titulo\">\n");
      out.write("            <div id=\"opaco\"><br>CECyT 9<br><p style=\"font-size: 55px;\"><br><br></vr></p></div>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"margin: 30px; border: 5px solid #2979FF; border-radius: 10px;\" id=\"grande\">\n");
      out.write("            <div style=\"font-size: 55px; margin-top: 15px; text-align: center; color: #2979FF;\">\"Juan de Dios Bátiz\"</div>\n");
      out.write("            <div id=\"descripcion\">\n");
      out.write("                <div id=\"subtitulo\">Descripción</div><hr id=\"uno\">\n");
      out.write("                <div id=\"texto\">El Centro de Estudios Científicos y Tecnológicos 9 “Juan de Dios Bátiz” es una escuela de Nivel Medio Superior,\n");
      out.write("                    líder en la formación integral de profesionales con liderazgo y comprometidos con la sociedad y el medio ambiente;\n");
      out.write("                    a través de programas y estrategias centradas en el aprendizaje, la investigación y el desarrollo tecnológico; logrando\n");
      out.write("                    reconocimiento nacional e internacional en los campos académico y laboral</div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"carreras\">\n");
      out.write("                <div id=\"subtitulo\">Carreras</div><hr id=\"uno\">\n");
      out.write("                <div id=\"contenedor\">\n");
      out.write("                    <center>\n");
      out.write("                        <table width=\"90%\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td width=\"688\" height=\"241\" id=\"texto\">\n");
      out.write("                                    Preparar técnicos en Máquinas con Sistemas Automatizados, para incorporarse a estos estudios de Nivel Superior en la rama de Ingeniería y Ciencias Físico-Matemáticas, así como la instalación, operación, adaptación y mantenimiento de Sistemas Automatizados que apoyen al desarrollo industrial, con la calidad y profesionalismo. \n");
      out.write("                                </td>\n");
      out.write("                                <td width=\"281\">\n");
      out.write("                                    <div id=\"cuadrox\">\n");
      out.write("                                        <div id=\"opaco\"><b><br>Técnico en Máquinas con Sistemas Automatizados<br><br><br></b></div>\n");
      out.write("                                    </div>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td width=\"688\" height=\"241\" id=\"texto\">\n");
      out.write("                                    Formar técnicos competentes que tendrán los conocimientos, habilidades y actitudes necesarias para desarrollar aplicaciones de software en función de las necesidades de la industria, para favorecer su desarrollo y maduración en México que demanda el mercado laboral, o bien para continuar sus estudios a nivel superior en la rama del las ciencias físico matemáticas.\n");
      out.write("                                </td>\n");
      out.write("                                <td width=\"281\">\n");
      out.write("                                    <div id=\"cuadrox1\">\n");
      out.write("                                        <div id=\"opaco\"><b><br>Técnico en Programación<br><br><br><br></b></div>\n");
      out.write("                                    </div>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td width=\"688\" height=\"241\" id=\"texto\">\n");
      out.write("                                    Formar técnicos competentes que tendrán conocimientos, habilidades y actitudes necesarias para la instalación, operación, mantenimiento de sistemas electrónicos digitales de computo, medición y control que demanda el mercado laboral, o bien para continuar con estudios a nivel superior en la rama de las Ciencias Físico-Matemáticas.\n");
      out.write("                                </td>\n");
      out.write("                                <td width=\"281\">\n");
      out.write("                                    <div id=\"cuadrox2\">\n");
      out.write("                                        <div id=\"opaco\"><b><br>Técnico en Sistemas Digitales<br><br><br><br></b></div>\n");
      out.write("                                    </div>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </center>\n");
      out.write("\n");
      out.write("                    <div class=\"clear\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"aciertos\">\n");
      out.write("                <div id=\"subtitulo\">Demanda</div><hr id=\"uno\">\n");
      out.write("                <div id=\"textoA\"><center>Aciertos Mínimos</center></div>\n");
      out.write("                <div id=\"pricing-table\" class=\"clear\">\n");
      out.write("                    <div class=\"plan\" id=\"most-popular\">\n");
      out.write("                        <h3>2014<span>107</span></h3>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"plan\" id=\"most-popular\">\n");
      out.write("                        <h3>2015<span>104</span></h3>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"plan\" id=\"most-popular\">\n");
      out.write("                        <h3>2016<span>108</span></h3>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div id=\"ubicacion\">\n");
      out.write("                <div id=\"subtitulo\">Ubicacion</div><hr id=\"uno\">\n");
      out.write("                <div id=\"mapa\"><center><iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15048.184272259943!2d-99.1751969!3d19.4535805!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x57501a5479751d18!2sCECyT+9+Juan+de+Dios+B%C3%A1tiz!5e0!3m2!1ses-419!2smx!4v1491265495900\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe></center></div>\n");
      out.write("            </div>\n");
      out.write("            <a href=\"http://www.cecyt9.ipn.mx/\">Visista la página de la escuela</a>\n");
      out.write("            <div id=\"comentarios\">\n");
      out.write("                <form action=”#” method=”post” onsubmit=\"validaLongitud();\">\n");
      out.write("                    <textarea cols=\"40\" rows =\"5\" id=\"comentario\" name=\"comentario\" ></textarea>\n");
      out.write("                    <input type=\"submit\" value=\"comentar\">\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("           function validaLongitud(){\n");
      out.write("               var texto = document.getElementById(\"comentario\").value.length;\n");
      out.write("               alert(texto);\n");
      out.write("               if(texto > 1){\n");
      out.write("                   alert('prueba');\n");
      out.write("                   return false;\n");
      out.write("               }\n");
      out.write("               \n");
      out.write("               \n");
      out.write("           }\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
