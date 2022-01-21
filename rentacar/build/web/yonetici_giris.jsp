<%-- 
    Document   : yonetici_giris
    Created on : 16.Ara.2021, 22:14:52
    Author     : GULCİN
--%>

<%@page import="data.User"%>
<%@page import="database.DBUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/giris.css" type="text/css"/>
</head>
<body>

<div class="kayyit">
    <h2 style="color: blanchedalmond;">YÖNETİCİ GİRİŞİ</h2>
</div>  

<div class="container">
<form id="accesspanel" action="" method="get">
  
  
    <div class="adminemail">
      <label for="useremail">Email : </label>
      <input class="adminemail2" type="text" name="email" id="email" placeholder="Email address">
      </div><br>
      
      <div class="adminsifre">
      <label for="userpassword">Şifre : </label>
      <input class="adminsifre2" type="password" name="sifre" id="password" placeholder="Access code">
      </div><br> 
    
    <input class="loginLoginValue" type="hidden" name="giris" value="login" />
  
  

       <input style="margin-left: 20px; margin-bottom: 15px;" type="checkbox" name="remember" id="remember">
           <label class="remember">Beni Hatırla</label>

  
  
      

    <input class="giris_btn1" type="submit" name="Login" id="go" value="Giris"/>
  
</form>
</div>
    <%
        DBUser data = new DBUser();
        String mail = request.getParameter("email");
        String sifre = request.getParameter("sifre");
        String giris = request.getParameter("giris");
        Cookie ckMail = null;
        Cookie ckSifre = null;
        Cookie ckDurum = null;
        String name = "";
        String pass = "";
         HttpSession oturum = request.getSession(true);
        oturum.setAttribute("Ymail", mail);
        boolean durum = request.getParameter("remember") != null;
        
if(giris != null && !mail.equals("") && !sifre.equals("")){
             ckDurum = new Cookie("durum", "true");
             ckMail = new Cookie("mail", mail);
             ckSifre = new Cookie("sifre", sifre);
    
    
}
         Cookie[] allCookies = request.getCookies();
         if (allCookies != null) {
                 for(Cookie cook: allCookies){
                     if(cook.getName().equalsIgnoreCase("mail")){
                         name = cook.getValue();
                     }
                     else if(cook.getName().equalsIgnoreCase("sifre")){
                         pass = cook.getValue();
                     }
                 }
             }
         
        if(allCookies != null){
             for(int i = 0; i < allCookies.length; i++){
             if(allCookies[i].getValue().contains("true")){
                      response.sendRedirect(request.getContextPath() + "/yonetici.jsp");
                      break;
                  }
             else{
                 System.out.println("bulunamadi");
             }
         }
         }
        
if(giris != null && !mail.equals("") && !sifre.equals("")){
    data.yonetici_vericek(mail, sifre);
            if(DBUser.entry_permit){
                if(durum){
                         ckDurum.setMaxAge(1000);
                         response.addCookie(ckDurum);
                         ckMail.setMaxAge(1000);
                         response.addCookie(ckMail);
                         ckSifre.setMaxAge(1000);
                         response.addCookie(ckSifre);
                }
                response.sendRedirect("yonetici.jsp");
            }
            
    
    
}
        




    %>
    

	

</body>
</html>

