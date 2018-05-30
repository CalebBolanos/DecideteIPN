package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class prueba_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        Consulta de usuarios <br>\n");
      out.write("        ");
 
            BD.cDatos base = new BD.cDatos();
            try{
                base.conectar();
                ResultSet resultado = base.consulta("select * from usuarios;");
                out.println("<table border=\"1\"><tr><td>IdUsuario</td><td>IdTipo</td><td>idgenero</td><td>nombre</td><td>correo</td><td>edad</td><td>Contra</td><td>fechareg</td</tr>");
                while(resultado.next()){
                    out.println("<tr>");
                    out.println("<td>"+resultado.getObject("idUsuario")+"</td>");
                    out.println("<td>"+resultado.getObject("idTipo")+"</td>");
                    out.println("<td>"+resultado.getObject("idGenero")+"</td>");
                    out.println("<td>"+resultado.getObject("nombe")+"</td>");
                    out.println("<td>"+resultado.getObject("correo")+"</td>");
                    out.println("<td>"+resultado.getObject("edad")+"</td>");
                    out.println("<td>"+resultado.getObject("contraseña")+"</td>");
                    out.println("<td>"+resultado.getObject("fechaReg")+"</td>");
                    out.println("</tr>");
                }
                out.println("</table>");
            }
            catch(Exception xd){
                out.println("error");
            }      
        
      out.write("\n");
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
