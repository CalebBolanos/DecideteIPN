package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class validaRegistro_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String nombre = request.getParameter("nombre") == null ? "" : request.getParameter("nombre");
    String email = request.getParameter("email") == null ? "" : request.getParameter("email");
    String edad = request.getParameter("edad") == null ? "" : request.getParameter("edad");
    String genero = request.getParameter("nombre") == null ? "" : request.getParameter("genero");
    String domicilio = request.getParameter("delegacion") == null ? "" : request.getParameter("delegacion");
    String contrasena = request.getParameter("contrasena") == null ? "" : request.getParameter("contrasena");
    String contrasena1 = request.getParameter("contrasena1") == null ? "" : request.getParameter("contrasena1");

    validaciones.registro registrar = new validaciones.registro(nombre, email, edad, genero, domicilio, contrasena, contrasena1);

    validaciones.inicioDeSesion verificar = new validaciones.inicioDeSesion();
    if (registrar.VALIDO()) {
        if(verificar.RgistraUSR(nombre, email, edad, genero, domicilio, contrasena, contrasena1)){
            response.sendRedirect("index.html");
        }
    } else {
        String error = registrar.ERROR();
        response.sendRedirect("registroUsuarios.jsp?e=" + error + "");
    }

      out.write('\n');
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
