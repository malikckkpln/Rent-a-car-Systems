<%@page import="database.DBUser"%>
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
    <h2 style="color: blanchedalmond;">KULLANICI GIRISI</h2>
</div>


<div class="container">
<form id="accesspanel" action="" method="post">

  <div class="useremail">
      <label for="useremail">Email : </label>
      <input class="useremail2" type="text" name="email_load" id="email" placeholder="Buraya Emailinizi giriniz">
          
        </div><br>
      <div class="usersifre">
      <label for="userpassword">Sifre : </label>
      <input class="usersifre2" type="password" name="password_load" id="password" placeholder="Buraya sifrenizi giriniz">
        </div><br>
    <div style="text-align: center;">
      
      
    </div>
        <label for="userpassword">Sifre : </label>
    <input class="usersifre2" type="hidden" name="service" value="login" />
    </div>
  
    <input class="giris_btn" type="submit" name="giris" id="go" value="Giris">
  
</form>
</div>   
 
     <% 
  String mail = request.getParameter("email_load");
 String sifre = request.getParameter("password_load");
   String giris = request.getParameter("giris"); 
 
   
DBUser db =  new DBUser();

    HttpSession oturum = request.getSession(true);
    oturum.setAttribute("Kmail", mail);

 %> 
    
    


<%  
if(mail !=null && sifre !=null && giris !=null){
    db.vericek(mail, sifre);
    
    if(DBUser.entry_permit){
        response.sendRedirect("giris.jsp");
        
    }else{
        response.sendRedirect("kullanici_giris.jsp");
    }
    
    
}





 
%>  



</body>
</html>
