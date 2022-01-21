package model;

public class ders {
    public static void main(String[] args) {
         
    }
    private String dersAdi;
    private String dersSuresi;
    
    public ders() {}
    
    public ders (String dersAdi, String dersSuresi) {
        super();
        this.dersAdi = dersAdi;
        this.dersSuresi = dersSuresi;
    }
    public String getDersAdi () {
        return dersAdi;
    }
    public void setDersAdi () {
        this.dersAdi = dersAdi;
    }
    public String getDersSuresi () {
        return dersSuresi;
    }
    public void setDersSuresi () {
        this.dersSuresi = dersSuresi;
    }
    
    
    
}

