package bean;

public class Customer_regisBean {
	private String FirstNAME;
	private String LastNAME;
	private String EMAIL;
	private String Gender;
	private String PASSWORD;
	private String Confirmpassword;
	private String Country;
	private String State;
	private String CITY;
	private String ADDRESS;
	private String Zipcode;
	private String MOBILENO;
    private String file;
	public Customer_regisBean(String firstNAME, String lastNAME, String eMAIL, String gender, String pASSWORD,
			String confirmpassword, String country, String state, String cITY, String aDDRESS,
			String zipcode, String mOBILENO, String file) {
		super();
		FirstNAME = firstNAME;
		LastNAME = lastNAME;
		EMAIL = eMAIL;
		Gender = gender;
		PASSWORD = pASSWORD;
		Confirmpassword = confirmpassword;
		Country = country;
		State = state;
		CITY = cITY;
		ADDRESS = aDDRESS;
		Zipcode = zipcode;
		MOBILENO = mOBILENO;
		this.file = file;
	}
	public String getFirstNAME() {
		return FirstNAME;
	}
	public void setFirstNAME(String firstNAME) {
		FirstNAME = firstNAME;
	}
	public String getLastNAME() {
		return LastNAME;
	}
	public void setLastNAME(String lastNAME) {
		LastNAME = lastNAME;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public String getConfirmpassword() {
		return Confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		Confirmpassword = confirmpassword;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCITY() {
		return CITY;
	}
	public void setCITY(String cITY) {
		CITY = cITY;
	}
	public String getADDRESS() {
		return ADDRESS;
	}
	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}
	public String getZipcode() {
		return Zipcode;
	}
	public void setZipcode(String zipcode) {
		Zipcode = zipcode;
	}
	public String getMOBILENO() {
		return MOBILENO;
	}
	public void setMOBILENO(String mOBILENO) {
		MOBILENO = mOBILENO;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
    
}


