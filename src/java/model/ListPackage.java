package model;

public class ListPackage {
    private int packageId;
    private int vaccineId;
    private String packageName;
    private String vaccineName;
    private String vaccineOrigin;
    private float vaccinePrice;
    private String vaccineDetail;
    private String packageDetail; 

    public ListPackage() {
    }

    public ListPackage(int packageId, int vaccineId, String packageName, String vaccineName, String vaccineOrigin, float vaccinePrice, String vaccineDetail, String packageDetail) {
        this.packageId = packageId;
        this.vaccineId = vaccineId;
        this.packageName = packageName;
        this.vaccineName = vaccineName;
        this.vaccineOrigin = vaccineOrigin;
        this.vaccinePrice = vaccinePrice;
        this.vaccineDetail = vaccineDetail;
        this.packageDetail = packageDetail;
    }

    public int getPackageId() {
        return packageId;
    }

    public void setPackageId(int packageId) {
        this.packageId = packageId;
    }

    public int getVaccineId() {
        return vaccineId;
    }

    public void setVaccineId(int vaccineId) {
        this.vaccineId = vaccineId;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getVaccineName() {
        return vaccineName;
    }

    public void setVaccineName(String vaccineName) {
        this.vaccineName = vaccineName;
    }

    public String getVaccineOrigin() {
        return vaccineOrigin;
    }

    public void setVaccineOrigin(String vaccineOrigin) {
        this.vaccineOrigin = vaccineOrigin;
    }

    public double getVaccinePrice() {
        return vaccinePrice;
    }

    public void setVaccinePrice(float vaccinePrice) {
        this.vaccinePrice = vaccinePrice;
    }

    public String getVaccineDetail() {
        return vaccineDetail;
    }

    public void setVaccineDetail(String vaccineDetail) {
        this.vaccineDetail = vaccineDetail;
    }

    public String getPackageDetail() {
        return packageDetail;
    }

    public void setPackageDetail(String packageDetail) {
        this.packageDetail = packageDetail;
    }
    
}
