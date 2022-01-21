package data;

import java.io.Serializable;

public class User implements Serializable {

    private String firstName;
    private String lastName;
    private String phone_number;
    private String email;
    private String password1;
    private String password2;
    
    private String email_load;
    public  String password_load;
    
    private String yon_email;
    private String yon_sifre;
  
    private String marka;
    private String model;
    private String plaka;
    private String km;
    private String fiyat;
    public User() {
      
        
    }

    public User(String firstName, String lastName, String phone_number,  String email, String password1, String password2) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone_number=phone_number;
        this.email = email;
        this.password1 = password1;
        this.password2 = password2;
    }
    
    
    
    
    public User(String email_load, String password_load){
        this.email_load = email_load;
        this.password_load = password_load;
    }
    
   public User( String marka, String model, String plaka, String km, String fiyat){
       this.marka = marka;
        this.model = model;
        this.plaka = plaka;
        this.km = km;
        this.fiyat= fiyat;
        System.out.println("veri kaydedildi");
   }
   
    
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) {
        this.password1 = password1;
    }

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) {
        this.password2 = password2;
    }

    public String getEmail_load() {
        return email_load;
    }

    public void setEmail_load(String email_load) {
        this.email_load = email_load;
    }

    public String getPassword_load() {
        return password_load;
    }

    public void setPassword_load(String password_load) {
        this.password_load = password_load;
    }

    public String getYon_email() {
        return yon_email;
    }

    public void setYon_email(String yon_email) {
        this.yon_email = yon_email;
    }

    public String getYon_sifre() {
        return yon_sifre;
    }

    public void setYon_sifre(String yon_sifre) {
        this.yon_sifre = yon_sifre;
    }

    public String getMarka() {
        return marka;
    }

    public void setMarka(String marka) {
        this.marka = marka;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getPlaka() {
        return plaka;
    }

    public void setPlaka(String plaka) {
        this.plaka = plaka;
    }

    public String getKm() {
        return km;
    }

    public void setKm(String km) {
        this.km = km;
    }

    public String getFiyat() {
        return fiyat;
    }

    public void setFiyat(String fiyat) {
        this.fiyat = fiyat;
    }



   
    
    
    
    
    
}
