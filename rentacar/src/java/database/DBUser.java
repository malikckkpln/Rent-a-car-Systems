
package database;


import data.User;
import data.User2;
import java.sql.*;

public class DBUser {
    
    User user1 = new User();
    static final String DB_URL = "jdbc:mysql://localhost:3306/gulcin";
    static final String USER="root";
    static final String PASSWORD="root";
    
    public static boolean entry_permit = false;
    public   String cekad ;
    public   String ceksoyad ;        
    public   String ceknumara;        
    public   String cekplaka;        
    public   String cekeposta;        
    public   String ceksifre;
    
    public  void insert(User user) {
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            
            
            String sql ="INSERT INTO kullanicilar(ad, soyad, email, telefon, sifre) VALUES(?, ?, ?, ?, ?)";
            PreparedStatement psnt = con.prepareStatement(sql);
            
            // veri tabanına bilgilerin yazdırıldığı kısım
            psnt.setString(1,user.getFirstName());
            psnt.setString(2,user.getLastName());
            psnt.setString(3,user.getPhone_number());
            psnt.setString(4,user.getEmail());
            psnt.setString(5,user.getPassword1());
            
            psnt.executeUpdate();
         
           // veri tabanı kullanıldıktan sonra kapatılıyor
            
           psnt.close();
           con.close();
        } catch (Exception e) {
            System.out.println("HATA :  "+ e);
        }
        
    }
    
    /*
    Database'den veri çekiliyor
    */
    public  void vericek(String mail, String sifre){
    Connection con =null;
    Statement st = null;
    ResultSet rs=null;
   
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);   
            st = con.createStatement();
            String sql ="SELECT * FROM kullanicilar";
            
            rs = st.executeQuery(sql);
           
            while(rs.next()) {
                if( mail.equals(rs.getString("email")) && sifre.equals(rs.getString("sifre"))    ){
                    entry_permit =true;
                    
                    System.out.println("BAŞARILI");
                    break;
                }else{
                    entry_permit=false;
                }
                  
            }
      
        }catch(Exception e){
            System.out.println(" HATA2 : " + e);
        }
            
            
    }

    
    
  
    
    
    
    
      public  ResultSet verigetirr(String eposta) {
        Connection con =null;
        Statement st = null;
        ResultSet rs=null;
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);   
            st = con.createStatement();  
            String sql ="SELECT * FROM yetkili WHERE email='" + eposta + "'";
            
            rs = st.executeQuery(sql);
            
        } catch (Exception e) {
           
            System.out.println(" HATAaa: "+e );
            
        }
        return rs;
    }
    
    //////////////////////////////////////////////////////////////7
    
    
    public  void yonetici_guncelle(User2 user2){
        Connection con =null;
    Statement st = null;
    ResultSet rs=null;
   
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);   
            st = con.createStatement();
            String sql ="UPDATE yetkili set ad='" + user2.getYon_ad() + "', soyad='" + user2.getYon_soyad() + 
                            "', email='"+ user2.getEposta_yon()+ "', sifre='" + user2.getPassword_yon() + "' WHERE ID='1'";
            
            
            
            st.executeUpdate(sql);
      
        }catch(Exception e){
            System.out.println(" HATA22 : " + e);
        }
        
        
    }
    
    
    
    
    
    
       public  void kullanici_guncelle(User2 user2, String eposta){
        Connection con =null;
    Statement st = null;
    ResultSet rs=null;
   
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);   
            st = con.createStatement();
            String sql ="UPDATE kullanicilar set ad='" + user2.getYon_ad() + "', soyad='" + user2.getYon_soyad() + 
                            "', email='"+ user2.getEposta_yon()+ "', sifre='" + user2.getPassword_yon() + "' WHERE email='"+ eposta+"'";
            
            
            
            st.executeUpdate(sql);
      
        }catch(Exception e){
            System.out.println(" HATA2 : " + e);
        }
        
        
    }
   
    
    public  void yonetici_vericek(String mail, String sifre){
    Connection con =null;
    Statement st = null;
    ResultSet rs=null;
   
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);   
            st = con.createStatement();
            String sql ="SELECT * FROM yetkili";
            
            rs = st.executeQuery(sql);
           
            while(rs.next()) {
                if( mail.equals(rs.getString("email")) && sifre.equals(rs.getString("sifre"))){
                    entry_permit =true;
                 
                    break;
                }else{
                    entry_permit=false;
                }
             
            }
      
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(" HATA3 : ");
        }
            
            
    }


  public  ResultSet kullaniciGetir() {
        Connection con =null;
        Statement st = null;
        ResultSet rs=null;
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);   
            st = con.createStatement();  
            String sql ="SELECT * FROM kullanicilar";
            
            rs = st.executeQuery(sql);
      
            
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : " );
            
        }
        return rs;
    }


    public  void kullanicisil(int id){
     Connection conn = null;  
         PreparedStatement sorgu = null;
        
         
          try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
             
             sorgu = conn.prepareStatement("DELETE   FROM kullanicilar WHERE ID='" + id + "'");
             sorgu.executeUpdate();
            
                
             
        } catch (Exception ex) {
            ex.printStackTrace();
                    
        }
    }
    
    
    
     public  ResultSet aracgetir() {
        Connection con =null;
        Statement st = null;
        ResultSet rs=null;
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL,USER,PASSWORD);   
            st = con.createStatement();  
            String sql ="SELECT * FROM araclar";
            
            rs = st.executeQuery(sql);
            
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : " );
            
        }
        return rs;
    }
    
    
       public  void aracsil(int id){
     Connection conn = null;  
         PreparedStatement sorgu = null;
        
         
          try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(DB_URL,USER,PASSWORD);
             
             sorgu = conn.prepareStatement("DELETE   FROM araclar WHERE ID='" + id + "'");
             sorgu.executeUpdate();
            
                
             
        } catch (Exception ex) {
            ex.printStackTrace();
                    
        }
    }
    
           public  ResultSet kisigetir() {
        Connection con =null;
        Statement st = null;
        ResultSet rs=null;
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gulcin", "root", "root");   
            st = con.createStatement();  
            String sql ="SELECT * FROM kullanicilar";
            
            rs = st.executeQuery(sql);
            
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : " );
            
        }
        return rs;
    }
    
    public  ResultSet verigetir(String eposta) {
        Connection con =null;
        Statement st = null;
        ResultSet rs=null;
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL,USER,PASSWORD);   
            st = con.createStatement();  
            String sql ="SELECT * FROM kullanicilar WHERE email='" + eposta + "'";
            
            rs = st.executeQuery(sql);
            
        } catch (Exception e) {
            System.out.println(" HATA : "+e );
            
        }
        return rs;
    } 





 public static void arackayit(User veri){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection baglanti = DriverManager.getConnection(DB_URL,USER,PASSWORD);
            
            String veriler = "INSERT INTO araclar(marka, model, plaka,yil,fiyat) VALUES (?,?,?,?,?)";
            
            
            PreparedStatement prt = baglanti.prepareStatement(veriler);
            
            prt.setString(1, veri.getMarka());
            prt.setString(2, veri.getModel());
            prt.setString(3, veri.getPlaka());
            prt.setString(4, veri.getKm());
            prt.setString(5, veri.getFiyat());
            
            
            prt.executeUpdate();
            prt.close();
            baglanti.close();
            
        }catch(Exception e){
            
            System.out.println("HATA5 : " + e);
            
            
        }
    } 
    









    
}




