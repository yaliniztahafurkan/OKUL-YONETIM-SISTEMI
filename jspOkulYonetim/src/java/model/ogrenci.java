package model;

public class ogrenci {
    public static void main(String[] args) {
         
    }
    private String ogrenciAdi;
    private String ders;
    private String grup;
    private String address;
    private String phone;
    
    public ogrenci() {}
    
    public ogrenci (String ogrenciAdi, String ders, String grup, String address, String phone) {
        super();
        this.ogrenciAdi = ogrenciAdi;
        this.ders = ders;
        this.grup = grup;
        this.address = address;
        this.phone = phone;
    }
    public String getOgrenciAdi () {
        return ogrenciAdi;
    }
    public void setOgrenciAdi () {
        this.ogrenciAdi = ogrenciAdi;
    }
    public String getDers () {
        return ders;
    }
    public void setDers () {
        this.ders = ders;
    }
    public String getGrup () {
        return grup;
    }
    public void setGrup () {
        this.grup = grup;
    }
    public String getAddress () {
        return address;
    }
    public void setAddress () {
        this.address = address;
    }
    public String getPhone () {
        return phone;
    }
    public void setPhone () {
        this.phone = phone;
    }
    
    
    
}

