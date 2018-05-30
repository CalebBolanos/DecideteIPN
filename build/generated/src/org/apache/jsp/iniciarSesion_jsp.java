package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class iniciarSesion_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!doctype html>\n");

    String btnInicio = request.getParameter("btnInicio") == null ? "" : request.getParameter("btnInicio");
    
    String xxxD = "";
    if(btnInicio.equals("Ingresar")){
        String email = request.getParameter("email") == null ? "" : request.getParameter("email");
        String contrasena = request.getParameter("contrasena") == null ? "" : request.getParameter("contrasena");
        
        validaciones.inicioDeSesion usuario = new validaciones.inicioDeSesion(email, contrasena);
        
        if(usuario.VALIDO()){
           
        }
        xxxD = usuario.ERROR();
    }

      out.write('\n');
      out.write('\n');
 
    String error = request.getParameter("e");
    if(error != null){
        xxxD = error;
    }

      out.write("\n");
      out.write("<html lang=\"es\">\n");
      out.write("    <head>\n");
      out.write("        <title>Iniciar Sesión</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <script>\n");
      out.write("            function validar()\n");
      out.write("            {\n");
      out.write("                var contrasena = document.getElementById('contrasena').value;\n");
      out.write("                var email = document.getElementById('email').value;\n");
      out.write("                var expr = /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\n");
      out.write("\n");
      out.write("                if (email === '')\n");
      out.write("                {\n");
      out.write("                    alert('Escribe tu correo electronico');\n");
      out.write("                    return false;\n");
      out.write("                } else\n");
      out.write("                if (contrasena === '')\n");
      out.write("                {\n");
      out.write("                    alert('Escribe tu contraseña');\n");
      out.write("                    return false;\n");
      out.write("                } else\n");
      out.write("                if (!expr.test(email))\n");
      out.write("                {\n");
      out.write("                    alert('Algo salió mal. Asegurate de escribir bien tu correo electrónico');\n");
      out.write("                    return false;\n");
      out.write("                } else\n");
      out.write("                    return true;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            @keyframes slidein {\n");
      out.write("                from {\n");
      out.write("                    margin-top: 100%;\n");
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
      out.write("                background-color: whitesmoke;\n");
      out.write("                align-content: center;\n");
      out.write("                font-family: Arial;\n");
      out.write("                margin:0;\n");
      out.write("                animation-duration: 1s;\n");
      out.write("                animation-name: slidein;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            input[type=submit]\n");
      out.write("            {\n");
      out.write("                border: none;\n");
      out.write("                background: crimson;\n");
      out.write("                color: #f2f2f2;\n");
      out.write("                padding: 10px;\n");
      out.write("                font-size: 18px;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                position: relative;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                transition: all 500ms ease;\n");
      out.write("            }\n");
      out.write("            input[type=submit]:hover {\n");
      out.write("                background: rgba(0,0,0,0);\n");
      out.write("                color: crimson;\n");
      out.write("                box-shadow: inset 0 0 0 3px crimson;\n");
      out.write("            }\n");
      out.write("            #content{\n");
      out.write("                margin:0 auto;\n");
      out.write("                position:relative;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("            #cuadro1\n");
      out.write("            {\n");
      out.write("                background-color: crimson;\n");
      out.write("                color: white;\n");
      out.write("                font-size: 55px;\n");
      out.write("                text-align: center;\n");
      out.write("                width: 40%;\n");
      out.write("                height: 100%;\n");
      out.write("                float: left;\n");
      out.write("                position: fixed;  \n");
      out.write("                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            #cuadro2\n");
      out.write("            {\n");
      out.write("                background-color: whitesmoke;\n");
      out.write("                color: white;\n");
      out.write("                width: 60%;\n");
      out.write("                height: 100%;\n");
      out.write("                float: right;\n");
      out.write("            }\n");
      out.write("            input[type=email] {\n");
      out.write("                width: 70%;\n");
      out.write("                padding: 12px 20px;\n");
      out.write("                font-size: 20px;\n");
      out.write("                margin: 8px 0;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                border: 3px solid #ccc;\n");
      out.write("                -webkit-transition: 0.5s;\n");
      out.write("                transition: 0.5s;\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=email]:focus {\n");
      out.write("                border: 3px solid crimson;\n");
      out.write("            }\n");
      out.write("            input[type=password] {\n");
      out.write("                width: 70%;\n");
      out.write("                padding: 12px 20px;\n");
      out.write("                margin: 8px 0;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                font-size: 20px;\n");
      out.write("                border: 3px solid #ccc;\n");
      out.write("                -webkit-transition: 0.5s;\n");
      out.write("                transition: 0.5s;\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=password]:focus {\n");
      out.write("                border: 3px solid crimson;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <div id=\"cuadro1\">\n");
      out.write("                    <br><br><br><br><br>Iniciar sesión\n");
      out.write("            </div>\n");
      out.write("            <div id=\"cuadro2\">\n");
      out.write("                <center><br><br><br><br><br><br><br><br><br><br><br><br><br><br>\n");
      out.write("                    <form id=\"iniciar\" method=\"post\" action=\"validaSesion.jsp\" onsubmit=\"return validar();\">\n");
      out.write("                        <input type=\"email\" id=\"email\" name=\"email\" placeholder=\"Escribe tu correo electrónico\" required><br><br>\n");
      out.write("                        <input type=\"password\" id=\"contrasena\" name=\"contrasena\" placeholder=\"Escribe tu contraseña\" required><br><br><br>\n");
      out.write("                        <input type=\"submit\" id=\"btnInicio\" name=\"btnInicio\" value=\"Ingresar\" />\n");
      out.write("                        <input type=\"hidden\" id=\"checa\" name=\"checa\" value=\"chk1\" /> \n");
      out.write("                    </form>\n");
      out.write("                    <div style=\"color: black\">\n");
      out.write("                    ");
      out.print(xxxD);
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </center>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
