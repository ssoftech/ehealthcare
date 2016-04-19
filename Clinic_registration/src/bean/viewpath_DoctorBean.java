package bean;

public class viewpath_DoctorBean {
private String PATIENT_NAME;
private Double total_price;
private String SUGGESTED_DOCTOR;
public viewpath_DoctorBean(String pATIENT_NAME, Double total_price, String sUGGESTED_DOCTOR) {
	super();
	PATIENT_NAME = pATIENT_NAME;
	this.total_price = total_price;
	SUGGESTED_DOCTOR = sUGGESTED_DOCTOR;
}
public String getPATIENT_NAME() {
	return PATIENT_NAME;
}
public void setPATIENT_NAME(String pATIENT_NAME) {
	PATIENT_NAME = pATIENT_NAME;
}
public Double getTotal_price() {
	return total_price;
}
public void setTotal_price(Double total_price) {
	this.total_price = total_price;
}
public String getSUGGESTED_DOCTOR() {
	return SUGGESTED_DOCTOR;
}
public void setSUGGESTED_DOCTOR(String sUGGESTED_DOCTOR) {
	SUGGESTED_DOCTOR = sUGGESTED_DOCTOR;
}
}