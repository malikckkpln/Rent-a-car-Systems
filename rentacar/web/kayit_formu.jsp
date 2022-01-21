<%-- 
    Document   : kayit_formu
    Created on : 16.Ara.2021, 22:15:27
    Author     : CELAL
--%>

<%@page import="database.DBUser"%>
<%@page import="data.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
       <link rel="stylesheet" href="style/kayıt_ol.css">
        <title>FORM KONTROL</title>
  </head>
    <body>
        
    <div class="kayyit">
        <h2 style="color: blanchedalmond;">KAYIT OLMAK İSTERMİSİNİZ?</h2>
    </div>
    <form action="index.jsp">    
        <button class="cikis" type="submit">CIKIS</button>
    </form>
    <div class="container"> 
        
        
        
      <form  action="" method="post"> <!--kulllanıcı bilgilerini veritabanına yazdir -->
          
          <div class="ad">
          <label for="first">Ad : </label>    
          <input class="ad_form" name="firstname" placeholder="Adınız" type="text"  >
          </div> <br>
          <div class="soyad">
          <label for="last">Soyad : </label>   
          <input class="soyad_form" name="lastname" placeholder="Soyadınız" type="text"  >
          </div><br> 
          <div class="email">
          <label for="phone">Email :</label>
          <input class="email_form" name="number" placeholder="Email" type="email"  >
          </div><br>
          <div class="telno">
          <label for="email">Telefon Numarası : </label>
          <input class="telno_form" name="email" placeholder="Telefon(555-555-55-55)" type="tel"  >
          </div><br>
          <div class="sifre">
          <label for="password">Şifre : </label>
          <input class="sifre_form" name="password1" placeholder="Şifre" type="password"  >
          </div><br>
          <div class="sifreonay">
          <label for="confirmpassword">Şifreyi onaylayınız : </label>
          <input class="sifreonay_form" name="password2" placeholder="Şifreyi Tekrar Giriniz" type="password"  >
          </div><br>
          <button class="kayıt_btn" name="submit" type="submit" id="contact-submit" data-submit="...Sending">Kaydı Gönder</button>
          
          

        
      </form>
    </div>
    
    <%   
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phone_number = request.getParameter("number");
        String email = request.getParameter("email");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String kytbtn = request.getParameter("submit");
        String geribtn = request.getParameter("geri");
        
        User user= new User(firstname, lastname, phone_number, email, password1, password2);
        DBUser bduser = new DBUser();
        
        

        if(kytbtn !=null){
            
            if(!firstname.equals("") && !lastname.equals("") && 
                    !phone_number.equals("") && 
                    !email.equals("") && !password1.equals("") &&
                    !password2.equals("")){
                bduser.insert(user);
                response.sendRedirect("index.jsp");
            }
            
           
            
        }
        if(geribtn !=null){
            
            response.sendRedirect("index.jsp");
            
        }
    %>
    
    
    </body>
</html>
