package model;

public class not {
    public static void main(String[] args) {
         
    }
    private String ogrenciAdi;
    private String ders;
    private String grup;
    private String notes;
    
    public not() {}
    
    public not (String ogrenciAdi, String ders, String grup, String notes) {
        super();
        this.ogrenciAdi = ogrenciAdi;
        this.ders = ders;
        this.grup = grup;
        this.notes = notes;
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
    public String getNotes () {
        return notes;
    }
    public void setNotes () {
        this.notes = notes;
    }
    
    
    
}

