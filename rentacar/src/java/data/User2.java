package data;

import java.io.Serializable;


public class User2 implements Serializable{
    private  String eposta_yon ; 
    private  String password_yon ;
    private String yon_ad;
    private String yon_soyad;
    private String yon_numara;
    
    
    public User2(String eposta_yon, String password_yon, String yon_ad, String yon_soyad){
        this.eposta_yon = eposta_yon;
        this.password_yon = password_yon;
        this.yon_ad = yon_ad;
        this.yon_soyad = yon_soyad;
    }

    
      public User2(String eposta_yon, String password_yon, String yon_ad, String yon_soyad, String yon_plaka){
        this.eposta_yon = eposta_yon;
        this.password_yon = password_yon;
        this.yon_ad = yon_ad;
        this.yon_soyad = yon_soyad;
        this.yon_numara= yon_plaka;
    }
    
    public String getYon_ad() {
        return yon_ad;
    }

    public void setYon_ad(String yon_ad) {
        this.yon_ad = yon_ad;
    }

    public String getYon_soyad() {
        return yon_soyad;
    }

    public void setYon_soyad(String yon_soyad) {
        this.yon_soyad = yon_soyad;
    }

    public String getEposta_yon() {
        return eposta_yon;
    }

    public void setEposta_yon(String eposta_yon) {
        this.eposta_yon = eposta_yon;
    }

    public String getPassword_yon() {
        return password_yon;
    }

    public void setPassword_yon(String password_yon) {
        this.password_yon = password_yon;
    }

    public String getYon_numara() {
        return yon_numara;
    }

    public void setYon_numara(String yon_numara) {
        this.yon_numara = yon_numara;
    }

   
    
    
    
    
    
    
    
}
