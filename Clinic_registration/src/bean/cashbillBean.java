package bean;

public class cashbillBean {
	private String pathalogyname;
	private String PATIENT_NAME;
	private String SUGGESTED_DOCTOR;
	private String PATIENT_AGE;
	private String PATIENT_GENDER;
    private String TEST_SUBCATEGORY_NAME;
    private Double total_price;
    private String TestDate;
    private String Mobile;
    private String Address;
    private String Pathmobile;
    private String Billdate;
    private String PatAddress;
    private  String Vat;
	public cashbillBean(String pathalogyname, String pATIENT_NAME, String sUGGESTED_DOCTOR, String pATIENT_AGE,
			String pATIENT_GENDER, String tEST_SUBCATEGORY_NAME, Double total_price, String testDate, String mobile,
			String address, String pathmobile, String billdate, String patAddress, String vat) {
		super();
		this.pathalogyname = pathalogyname;
		PATIENT_NAME = pATIENT_NAME;
		SUGGESTED_DOCTOR = sUGGESTED_DOCTOR;
		PATIENT_AGE = pATIENT_AGE;
		PATIENT_GENDER = pATIENT_GENDER;
		TEST_SUBCATEGORY_NAME = tEST_SUBCATEGORY_NAME;
		this.total_price = total_price;
		TestDate = testDate;
		Mobile = mobile;
		Address = address;
		Pathmobile = pathmobile;
		Billdate = billdate;
		PatAddress = patAddress;
		Vat = vat;
	}
	public String getPathalogyname() {
		return pathalogyname;
	}
	public void setPathalogyname(String pathalogyname) {
		this.pathalogyname = pathalogyname;
	}
	public String getPATIENT_NAME() {
		return PATIENT_NAME;
	}
	public void setPATIENT_NAME(String pATIENT_NAME) {
		PATIENT_NAME = pATIENT_NAME;
	}
	public String getSUGGESTED_DOCTOR() {
		return SUGGESTED_DOCTOR;
	}
	public void setSUGGESTED_DOCTOR(String sUGGESTED_DOCTOR) {
		SUGGESTED_DOCTOR = sUGGESTED_DOCTOR;
	}
	public String getPATIENT_AGE() {
		return PATIENT_AGE;
	}
	public void setPATIENT_AGE(String pATIENT_AGE) {
		PATIENT_AGE = pATIENT_AGE;
	}
	public String getPATIENT_GENDER() {
		return PATIENT_GENDER;
	}
	public void setPATIENT_GENDER(String pATIENT_GENDER) {
		PATIENT_GENDER = pATIENT_GENDER;
	}
	public String getTEST_SUBCATEGORY_NAME() {
		return TEST_SUBCATEGORY_NAME;
	}
	public void setTEST_SUBCATEGORY_NAME(String tEST_SUBCATEGORY_NAME) {
		TEST_SUBCATEGORY_NAME = tEST_SUBCATEGORY_NAME;
	}
	public Double getTotal_price() {
		return total_price;
	}
	public void setTotal_price(Double total_price) {
		this.total_price = total_price;
	}
	public String getTestDate() {
		return TestDate;
	}
	public void setTestDate(String testDate) {
		TestDate = testDate;
	}
	public String getMobile() {
		return Mobile;
	}
	public void setMobile(String mobile) {
		Mobile = mobile;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPathmobile() {
		return Pathmobile;
	}
	public void setPathmobile(String pathmobile) {
		Pathmobile = pathmobile;
	}
	public String getBilldate() {
		return Billdate;
	}
	public void setBilldate(String billdate) {
		Billdate = billdate;
	}
	public String getPatAddress() {
		return PatAddress;
	}
	public void setPatAddress(String patAddress) {
		PatAddress = patAddress;
	}
	public String getVat() {
		return Vat;
	}
	public void setVat(String vat) {
		Vat = vat;
	}
		
}