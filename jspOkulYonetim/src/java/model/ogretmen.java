package model;

public class ogretmen {
    public static void main(String[] args) {
         
    }
    private String ogretmenAdi;
    private String ders;
    private String grup;
    private String address;
    private String phone;
    
    public ogretmen() {}
    
    public ogretmen (String ogretmenAdi, String ders, String grup, String address, String phone) {
        super();
        this.ogretmenAdi = ogretmenAdi;
        this.ders = ders;
        this.grup = grup;
        this.address = address;
        this.phone = phone;
    }
    public String getOgretmenAdi () {
        return ogretmenAdi;
    }
    public void setOgretmenAdi () {
        this.ogretmenAdi = ogretmenAdi;
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

