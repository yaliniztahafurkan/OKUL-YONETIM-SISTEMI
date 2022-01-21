package model;

public class grup {
    public static void main(String[] args) {
         
    }
    private String grupAdi;
    private String year;
    
    public grup() {}
    
    public grup (String grupAdi, String year) {
        super();
        this.grupAdi = grupAdi;
        this.year = year;
    }
    public String getGrupAdi () {
        return grupAdi;
    }
    public void setGrupAdi () {
        this.grupAdi = grupAdi;
    }
    public String getYear () {
        return year;
    }
    public void setYear () {
        this.year = year;
    }
    
    
    
}

