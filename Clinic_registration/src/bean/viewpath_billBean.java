package bean;

public class viewpath_billBean {

private String PATIENT_NAME;
private String SUGGESTED_DOCTOR;
private String PATIENT_AGE;
private String PATIENT_GENDER;
private String TEST_SUBCATEGORY_NAME;
private Double total_price;
private String mobile;
public viewpath_billBean(String pATIENT_NAME, String sUGGESTED_DOCTOR, String pATIENT_AGE, String pATIENT_GENDER,
		String tEST_SUBCATEGORY_NAME, Double total_price,String mob) {
	super();
	PATIENT_NAME = pATIENT_NAME;
	SUGGESTED_DOCTOR = sUGGESTED_DOCTOR;
	PATIENT_AGE = pATIENT_AGE;
	PATIENT_GENDER = pATIENT_GENDER;
	TEST_SUBCATEGORY_NAME = tEST_SUBCATEGORY_NAME;
	this.total_price = total_price;
	mobile=mob;
}


public String getMobile() {
	return mobile;
}


public void setMobile(String mobile) {
	this.mobile = mobile;
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
}