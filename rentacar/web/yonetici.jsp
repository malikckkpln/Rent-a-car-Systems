<%@page import="java.sql.ResultSet"%>
<%@page import="data.User"%>
<%@page import="data.User2"%>
<%@page import="database.DBUser" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/yetkili.css">
    <link rel="stylesheet" href="style/aracform.css">
</head>
<body>
     <%
        
        Cookie [] cookies = request.getCookies();
        DBUser dbveri = new DBUser();
        HttpSession oturum = request.getSession();
               String epostaa = "";
               boolean d = oturum.getAttribute("Ymail") != null;
               if(d){
                   epostaa =oturum.getAttribute("Ymail").toString();
               }
if(cookies != null){
    for(int i = 0; i < cookies.length; i++){
        if(cookies[i].getName().equals("mail")){
            epostaa = cookies[i].getValue();
            break;
        }
    }
}
    %>
     <p class="shadow">Hosgeldin : <%= epostaa %></p>
    <nav class="area" >
        <a href="#first" class="a"><button class="ekle">ARAC EKLE</button></a>
        <a href="#second" class="a"><button class="listele">ARAC LISTELE</button></a>
        <a href="#third" class="a"><button class="profil_adm">PROFIL</button></a>
        <a href="#fourth" class="a"><button class="users">KULLANICILAR</button></a>
    
        <form action="index.jsp">    
        <button class="cikis" type="submit">CIKIS</button>
        </form>
    </nav>
    
    
<section id= 'first'>
    <div class="form">
      <form action="" method="post">  
        
        <input class="marka" type="text" name="marka" placeholder="MARKA :" />
        
        <input class="model" type="text" name="model" placeholder="MODEL :" />
        
        <input class="plaka" type="text" name="plaka" placeholder="PLAKA :" />
       
        <input class="yil" type="text" name="yil" placeholder="ARAC YILI :" />
        
        <input class="fiyat" type="text" name="fiyat" placeholder="FIYAT :" />

        <button class="kayit" type="submit" name="arackayit" value="">KAYDET</button>
    </form>   
    </div>
    
    <%
        String marka = request.getParameter("marka");
        String model = request.getParameter("model");
        String plaka = request.getParameter("plaka");
        String yil = request.getParameter("yil");
        String fiyat = request.getParameter("fiyat");
        String buton = request.getParameter("arackayit");
        if(buton !=null){
          if(!marka.equals("") && !model.equals("") && !plaka.equals("") && !yil.equals("")&& !fiyat.equals("")){
            User user2 = new User(marka, model, plaka, yil, fiyat);
            dbveri.arackayit(user2);
            response.sendRedirect("yonetici.jsp#first");
            
            out.print("Araciniz Kaydedildi");
              
            
        }
         
            
            
        }
        %>
    
    
    
    
</section>
        
        <section id= 'second'>
           <table id="personel_tablo">
                  <tr>
                      
                      <th>MARKA</th>
                      <th>MODEL</th>
                      <th>PLAKA</th>
                      <th>YIL</th>
                      <th>FIYAT</th>
                  </tr>
              <%
             
              ResultSet result = dbveri.aracgetir();
              
                while (result.next()) {
                    
                    
                        out.print("<tr>");
                        out.print("<td>" + result.getString("marka")+"</td>" );
                        out.print("<td>" + result.getString("model")+"</td>");
                        out.print("<td>" + result.getString("plaka")+"</td>");
                        out.print("<td>" + result.getString("yil")+"</td>");
                        out.print("<td>" + result.getString("fiyat")+"</td>");
                       %>  
                       <td><a href="yonetici.jsp?id=<%= result.getString("ID")%>#second">Kullan?c? kald?r</a></td>
                       <%
                        out.print("<tr>");
                        
                    }

                       String sil = request.getParameter("id");
                       if(sil != null){
                        dbveri.aracsil(Integer.valueOf(sil));
                        response.sendRedirect("yonetici.jsp#second");
                       }
              
              
              
              %>
              
              
              
              </table>
            
            
            
        </section>

              
              
        <section id= 'third'>
            
            <div class="alan">
        
                <%
           
               ResultSet r = dbveri.verigetirr(epostaa);
while(r.next()){

    out.print("<div id='ana-div' >");
        out.print("<div id='div-sol'>");
            out.print("<p class='psolad'>AD :</p>");
            out.print("<p class='psolsoyad'>SOYAD :</p>");
            out.print("<p class='psolmail'>EPOSTA :</p>");
            out.print("<p class='psolnum'>SIFRE :</p>");
        out.print("</div>");

        
        out.print("<div id='div-sag'>");
            out.print("<p class='psagad'>"+ r.getString("ad") +  "</p>");
            out.print("<p class='psagsoyad'>"+ r.getString("soyad") +  "</p>");
            out.print("<p class='psagmail'>"+ r.getString("email") +  "</p>");
            out.print("<p class='psagpw'>"+ r.getString("sifre") +  "</p>");
        out.print("</div>");

    out.print("</div>");
}
            %>
                
            
        <div class = "card-container"> 
            <form action="" method="post">
            <label class="ad_alt" id = "label_eposta"> AD :  </label>
            <input class="ad_alt1" type="text" name="yonad" value="" /> <br> 
            <input type="hidden" name="deger" value="kullanici"> 
                
                    
            <label class="soyad_alt" id = "label_eposta"> SOYAD :  </label>
            <input class="soyad_alt1" type="text" name="yonsoyad" value="" /> <br> 
            
            <label class="mail_alt" id = "label_eposta"> E-POSTA :  </label>
            <input class="mail_alt1" type="text" name="yonetici_eposta" value="" /> <br> 
            
            <label class="pw1_alt" id="label_sifre"> SIFRE :   </label>
            <input class="pw1_alt1" type="text" name="yoneticisifre" value="" /> <br>
            
            <label class="pw2_alt" id="label_sifretek"> SIFRE TEKRAR :   </label>
            <input class="pw2_alt1" type="text" name="yoneticisifre1" value="" /> </br>
            
            <input class="btn_son" style="margin-bottom: 10px; margin-left: 140px;" type="submit" value="GUNCELLE" name="yonetici_sifre_sifirlama" />
          
        </form> 
    </div>

                 <%
                String yon_eposta = request.getParameter("yonetici_eposta"); 
                String yon_sifre = request.getParameter("yoneticisifre");
                String yon_ad = request.getParameter("yonad");
                String yon_soyad = request.getParameter("yonsoyad");
                String yonetici_sifre_sifirlama = request.getParameter("yonetici_sifre_sifirlama");
                
                
                User2 user2 = new User2(yon_eposta, yon_sifre, yon_ad, yon_soyad);
                
                
                
if(yonetici_sifre_sifirlama != null){
    if(!yon_eposta.equals("") && !yon_sifre.equals("") && !yon_ad.equals("") && !yon_soyad.equals("")){
        dbveri.yonetici_guncelle(user2);
        response.sendRedirect("yonetici_giris.jsp");
        out.print("Bilgiler güncellendi");
    }

}
            %>
            
            
            
            
            
            </div>
            
            
        </section>

              
              
              
              
        <section id= 'fourth'>
            
 <table id="personel_tablo">
                  <tr>
                      
                      <th>AD</th>
                      <th>SOYAD</th>
                      <th>TELEFON</th>
                      <th>EMAIL</th>
                      <th>SIFRE</th>
                  </tr>
              <%
           try{   
              result = dbveri.kisigetir();
              
                while (result.next()) {
                    
                    
                        out.print("<tr>");
                        out.print("<td>" + result.getString("ad")+"</td>" );
                        out.print("<td>" + result.getString("soyad")+"</td>");
                        out.print("<td>" + result.getString("telefon")+"</td>");
                        out.print("<td>" + result.getString("email")+"</td>");
                        out.print("<td>" + result.getString("sifre")+"</td>");
                       %>  
                       <td><a href="yonetici.jsp?idd=<%= result.getString("ID")%>#fourth">Bilgileri Sil</a></td>
                       <%
                        out.print("<tr>");
                        
                    }
                       String sill = request.getParameter("idd");
                       if(sill != null){
                        dbveri.kullanicisil(Integer.valueOf(sill));
                        response.sendRedirect("yonetici.jsp#fourth");
                       }
                     
                    }catch(Exception e){

                        System.out.println("HATA : "+ e);

                    }
              
              
              
              %>
              
              
              
              </table>
            
             
            
        </section>
              
               
              
    </div>
    
</body>
</html>