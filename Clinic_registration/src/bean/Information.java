package bean;

public class Information {
private String pathalogyname;
private String PATIENT_NAME;
private String SUGGESTED_DOCTOR;
private String PATIENT_AGE;
private String PATIENT_GENDER;
private String Mobile;
private String Test;
private String TestDate;
private String DeliveryDate;
private String Address;
public Information(String pathalogyname, String pATIENT_NAME, String sUGGESTED_DOCTOR, String pATIENT_AGE,
		String pATIENT_GENDER, String mobile, String test, String testDate, String deliveryDate, String address) {
	super();
	this.pathalogyname = pathalogyname;
	PATIENT_NAME = pATIENT_NAME;
	SUGGESTED_DOCTOR = sUGGESTED_DOCTOR;
	PATIENT_AGE = pATIENT_AGE;
	PATIENT_GENDER = pATIENT_GENDER;
	Mobile = mobile;
	Test = test;
	TestDate = testDate;
	DeliveryDate = deliveryDate;
	Address = address;
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
public String getMobile() {
	return Mobile;
}
public void setMobile(String mobile) {
	Mobile = mobile;
}
public String getTest() {
	return Test;
}
public void setTest(String test) {
	Test = test;
}
public String getTestDate() {
	return TestDate;
}
public void setTestDate(String testDate) {
	TestDate = testDate;
}
public String getDeliveryDate() {
	return DeliveryDate;
}
public void setDeliveryDate(String deliveryDate) {
	DeliveryDate = deliveryDate;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
}
