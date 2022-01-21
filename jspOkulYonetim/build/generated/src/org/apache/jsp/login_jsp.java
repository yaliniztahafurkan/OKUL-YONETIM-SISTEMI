package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"css/style3.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <title>Giriş Sayfası</title>\n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <div class=\"loginbox\">\n");
      out.write("        <img src=\"images/images.png\" alt=\"\"class=\"avatar\">\n");
      out.write("        <h1>Giriş  Yapınız</h1>\n");
      out.write("            <form method=\"POST\" action=\"DAO/loginv.jsp\">\n");
      out.write("                    <label class=\"form-label\">Kullanıcı Adı : </label>\n");
      out.write("                    <input type=\"text\" id=\"username\" name=\"username\" class=\"form-control\" placeholder=\"Username\" size=\"30px\" required>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                    <label class=\"form-label\">Şifre : </label>\n");
      out.write("                    <input type=\"password\" id=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Password\" size=\"30px\" required>\n");
      out.write("                \n");
      out.write("                </br>\n");
      out.write("                <input type=\"submit\" value=\"Giriş\">\n");
      out.write("                \n");
      out.write("            </form>\n");
      out.write("            <form method=\"POST\" action=\"register.jsp\">\n");
      out.write("                </br>\n");
      out.write("                <div align=\"left\">\n");
      out.write("                    <input type=\"submit\" id=\"submit\" name=\"submit\" value=\"Kayıt Ol\" class=\"btn  btn-info\">\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </form>\n");
      out.write("    \n");
      out.write("    <div style=\"margin-top: 290px;\">\n");
      out.write("        <center>\n");
      out.write("        <p>Tüm Telif Hakkı &copy; 2022 Taha Furkan YALINIZ. Tüm Hakları Saklıdır.</p>\n");
      out.write("        </center>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
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
