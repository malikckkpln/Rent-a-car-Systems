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
    <link rel="stylesheet" href="style/arackiralama.css">
</head>
<body>
     <%
        
        Cookie [] cookies = request.getCookies();
         DBUser dbveri = new DBUser();
        HttpSession oturum = request.getSession();
               String epostaa = "";
               boolean d = oturum.getAttribute("Kmail") != null;
               if(d){
                   epostaa =oturum.getAttribute("Kmail").toString();
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
    <p class="shadow"><%= epostaa %> --> Hosgeldiniz</p>
    
    <nav class="area" >
        
        <a href="#first" class="a"><button class="kira">ARAC KIRALA</button></a>
        <a href="#second" class="a"><button class="kiralanan">KIRALANAN ARACLAR</button></a>
        <a href="#third" class="a"><button class="profil">PROFIL</button></a>
        
        <form action="index.jsp">    
        <button class="cikis" type="submit">CIKIS</button>
        </form>
    </nav>
  
    <%!
       public String [] marka = new String[4];
       public String [] model = new String[4];
       public String [] fiyat = new String[4];
       public String [] yil = new String[4]; 

        %>
    
    
    <%
        
        int i=0;
    ResultSet result = dbveri.aracgetir();
        while (result.next()) {
        marka[i] =   result.getString("marka").toUpperCase();
        model[i] =    result.getString("model").toUpperCase();    
        fiyat[i] =   result.getString("fiyat").toUpperCase();
        yil[i] =   result.getString("yil").toUpperCase();
        i++;
        }
        %>
    
    
        <section id= 'first'>
            
           <div class="kira_box" >
            <img class="car1" src="photo/car1.png" alt="car1">
            <center>
                <p class="car1p"><% out.print(marka[0]+" "+ model[0]); %><br><br> <% out.print(yil[0]);  %></p>
                <p class="car1p2"><% out.print(fiyat[0]); %></p>
                <form>
                    <button type="submit" value="1" name="car1" class="car1btn">KIRALA</button>
                    
                </form>   
            </center>
        </div>

        <div class="kira_box2" >
            <img class="car1" src="photo/car5.png" alt="car1">
            <center>
            <p class="car1p"><% out.print(marka[1]+" "+ model[1]); %><br><br> <% out.print(yil[1]);  %><br></p>
            <p class="car1p2"><% out.print(fiyat[1]); %></p>
            <form>
                
                <button type="submit" value="2" name="car2" class="car1btn">KIRALA</button>

            </form>
            </center>
        </div>

         <div class="kira_box3" >
            <img class="car1" src="photo/car7.png" alt="car1">
            <center>
            <p class="car1p"><% out.print(marka[2]+" "+ model[2]); %><br><br><% out.print(yil[2]);  %></p>
            <p class="car1p2"><% out.print(fiyat[2]); %></p>
            <form action="" >
            <button type="submit" value="3" name="car3" class="car1btn">KIRALA</button>
                
            </form>
            </center>
        </div>
            
        <div class="kira_box4" >
            <img class="car1" src="photo/car6.png" alt="car1">
            <center>
            <p class="car1p"><% out.print(marka[3]+" "+ model[3]); %><br><br><% out.print(yil[2]);  %></p>
            <p class="car1p2"><% out.print(fiyat[3]); %></p>
            <form action="" >
            <button type="submit" value="3" name="car3" class="car1btn">KIRALA</button>
                
            </form>
            </center>
        </div>
            <%!
                public int aracbilgisi;
                %>
            <%
                
               String kirala1 = request.getParameter("car1");
               String kirala2 = request.getParameter("car2");
               String kirala3 = request.getParameter("car3");
               
               if( kirala1 != null){
                  response.sendRedirect("giris.jsp#onay");
                  aracbilgisi =  0;
               }else if( kirala2 != null){
                   response.sendRedirect("giris.jsp#onay");
                  aracbilgisi =  1;
               }else  if( kirala3 != null){
                   response.sendRedirect("giris.jsp#onay");
                  aracbilgisi =  2;
               }
                
                %>
            
        </section>
        
       



  

              
              
        <section id= 'third'>
            
            <div class="alan">
        
                <%!  
                public String ad = "";  
                public String soyad = ""; 
                public String email = "";  

                %> 
                
                <%
           
               ResultSet r = dbveri.verigetir(epostaa);
while(r.next()){

    out.print("<div id='ana-div' >");
        out.print("<div id='div-sol'>");
            out.print("<p class='psolad'>AD :</p>");
            out.print("<p class='psolsoyad'>SOYAD :</p>");
            out.print("<p class='psolmail'>SIFRE :</p>");
            out.print("<p class='psolnum'>EPOSTA :</p>");
        out.print("</div>");
        
         ad= r.getString("ad");
         soyad= r.getString("soyad");
         email= r.getString("email");
        out.print("<div id='div-sag'>");
            out.print("<p class='psagad'>"+ad +  "</p>");
            out.print("<p class='psagsoyad'>"+soyad +  "</p>");
            out.print("<p class='psagmail'>"+ email +  "</p>");
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
                String a ="a";
                String yon_soyad = request.getParameter("yonsoyad");
                String yonetici_sifre_sifirlama = request.getParameter("yonetici_sifre_sifirlama");
                
                
                User2 user2 = new User2(yon_eposta, yon_sifre, yon_ad, yon_soyad,a);
                
                
                
if(yonetici_sifre_sifirlama != null){
    if(!yon_eposta.equals("") && !yon_sifre.equals("") && !yon_ad.equals("") && !yon_soyad.equals("")){
        dbveri.kullanici_guncelle(user2, epostaa);
        response.sendRedirect("kullanici_giris.jsp");
        out.print("Bilgiler güncellendi");
    }

}
            %>
            
            
            </div>
            
            
        </section>
        
            <section id="onay">
                <h1>KISI BILGILERI </h1>
                <%
                   out.println("<P class='add1'>AD :</p>");
                   out.println("<P class='add'>"+ ad+ "</p>");
                   out.println("<P class='soyadd1'>SOYAD :</p>");
                   out.println("<P class='soyadd'>"+ soyad+ "</p>");
                   out.println("<P class='emaill1'>EMAIL :</p>");
                   out.println("<P class='emaill'>"+ email+ "</p>");
                   
                    %>
                <h1>ARAC BILGILERI </h1>
                <%
                   out.println("<P class='markaa'>"+ marka[aracbilgisi]+ "</p>");
                   out.println("<P class='modell'>"+ model[aracbilgisi]+ "</p>");
                   out.println("<P class='yill'>"+ yil[aracbilgisi]+ "</p>");                    
                   out.println("<P class='fiyatt'>"+ fiyat[aracbilgisi]+ "</p>");
                    %>
                    <form>
                      <input class="btnn" type="submit" value="ONAY" name="onay" />
                    </form>
                        
                    <%
                        String s = request.getParameter("onay");
                        if(s !=null){
                            out.println("<img class='onayimg' src = 'photo/onay.png' alt = 'onay' / >");
                            out.println("<P class='text'>ONAYLANDI</p>");
                        }
                        %>
                    
            </section>
              
              
              
              
      
                
                
        <section id= 'second'>
           <table id="personel_tablo">
                  <tr>
                      
                      <th>MARKA</th>
                      <th>MODEL</th>
                      <th>YIL</th>
                      <th>FIYAT</th>
                  </tr>
              <%
   
                
                    
                 
                        out.print("<tr>");
                        out.print("<td>" + marka[aracbilgisi]+"</td>" );
                        out.print("<td>" + model[aracbilgisi]+"</td>");
                        out.print("<td>" + yil[aracbilgisi]+"</td>");
                        out.print("<td>" + fiyat[aracbilgisi]+"</td>");
                      
                        out.print("<tr>");
                        
                    

              %>
   
              </table>
 
        </section>
                
                
                
                
                
    </div>
    
</body>
</html>