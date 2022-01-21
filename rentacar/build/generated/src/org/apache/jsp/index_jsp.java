package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(' ');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("     \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Document</title>\n");
      out.write("    <link href=\"Styles/stylee.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("        <img class=\"logo\" src=\"photo/mali.png\" alt=\"logo\" width=\"30%\" height=\"15%\">\n");
      out.write("\n");
      out.write("        <div class=\"ust\">\n");
      out.write("            <p>RENT A CAR</p>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"d-iç\">\n");
      out.write("\n");
      out.write("        <form action=\"yonetici_giris.jsp\" method=\"get\"> <!-- Yönlendirir -->\n");
      out.write("            <input id=\"admin_btn\" type=\"submit\" value=\"YÖNETİCİ GİRİŞİ\" />\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        <form action=\"kullanici_giris.jsp\" method=\"get\">\n");
      out.write("            <input  id=\"user_btn\" type=\"submit\" value=\"OTURUM AÇ\" />\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        <form action=\"kayit_formu.jsp\" method=\"get\">\n");
      out.write("            <input  id=\"kayit_btn\" type=\"submit\" value=\"KAYDOL\" />\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    <div class=\"baslik\"></div>\n");
      out.write("\n");
      out.write("        <div class=\"metin\">\n");
      out.write("            <p>İhtiyacın olan araba bu portal’da!</p>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <img class=\"backgr\" src=\"photo/backgr.jpg\" alt=\"backgr\" width=\"100%\" height=\"100%\">\n");
      out.write("\n");
      out.write("        <div class=\"alt_cizgi\"></div>\n");
      out.write("\n");
      out.write("        <div class=\"alt_baslik\">\n");
      out.write("            <h1>SİZİN İÇİN KİRALIK ARAÇLAR</h1>\n");
      out.write("            <div class=\"cizgi1\"></div>\n");
      out.write("            <div class=\"cizgi2\"></div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"kira_box\" >\n");
      out.write("            <img class=\"car1\" src=\"photo/car1.png\" alt=\"car1\">\n");
      out.write("            <center>\n");
      out.write("            <p class=\"car1p\">MERCEDES GLS 450<br><br>2012</p>\n");
      out.write("            <p class=\"car1p2\">250 TL</p>\n");
      out.write("            <form action=\"kullanici_giris.jsp\" method=\"get\">\n");
      out.write("            <button class=\"car1btn\">KİRALA</button>\n");
      out.write("            </form>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"kira_box2\" >\n");
      out.write("            <img class=\"car1\" src=\"photo/car2.png\" alt=\"car1\">\n");
      out.write("            <center>\n");
      out.write("            <p class=\"car1p\">RENAULT CLİO<br><br>2019</p>\n");
      out.write("            <p class=\"car1p2\">135 TL</p>\n");
      out.write("            <form action=\"kullanici_giris.jsp\" method=\"get\">\n");
      out.write("            <button class=\"car1btn\">KİRALA</button>\n");
      out.write("            </form>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"kira_box3\" >\n");
      out.write("            <img class=\"car1\" src=\"photo/car3.png\" alt=\"car1\">\n");
      out.write("            <center>\n");
      out.write("            <p class=\"car1p\">MASERATİ GHİBLİ<br><br>2021</p>\n");
      out.write("            <p class=\"car1p2\">500 TL</p>\n");
      out.write("            <form action=\"kullanici_giris.jsp\" method=\"get\">\n");
      out.write("            <button class=\"car1btn\">KİRALA</button>\n");
      out.write("            </form>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"kira_box4\" >\n");
      out.write("            <img class=\"car1\" src=\"photo/car4.png\" alt=\"car1\">\n");
      out.write("            <center>\n");
      out.write("            <p class=\"car1p\">FİAT EGEA<br><br>2021</p>\n");
      out.write("            <p class=\"car1p2\">80 TL</p>\n");
      out.write("            <form action=\"kullanici_giris.jsp\" method=\"get\">                <button class=\"car1btn\">KİRALA</button>\n");
      out.write("            </form>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"kira_box5\" >\n");
      out.write("            <img class=\"car1\" src=\"photo/car5.png\" alt=\"car1\">\n");
      out.write("            <center>\n");
      out.write("            <p class=\"car1p\">VW GOLF<br><br>2019</p>\n");
      out.write("            <p class=\"car1p2\">150 TL</p>\n");
      out.write("            <form action=\"kullanici_giris.jsp\" method=\"get\">\n");
      out.write("            <button class=\"car1btn\">KİRALA</button>\n");
      out.write("            </form>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"kira_box6\" >\n");
      out.write("            <img class=\"car1\" src=\"photo/car6.png\" alt=\"car1\">\n");
      out.write("            <center>\n");
      out.write("            <p class=\"car1p\">MAZDA MX-5<br><br>2021</p>\n");
      out.write("            <p class=\"car1p2\">400 TL</p>\n");
      out.write("            <form action=\"kullanici_giris.jsp\" method=\"get\">\n");
      out.write("            <button class=\"car1btn\">KİRALA</button>\n");
      out.write("            </form>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("</body>\n");
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
