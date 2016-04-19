package bean;

public class Patient {
private String Clinicname;
private String Patientname;
private String Age;
private String Doctorname;
private String Date;
private String Disease;
private String FromTime;
/*private String ToTime;*/
private String Mobileno;
private String Address;
private String Registrationid;
private String SEX;
private String Specilization;

public Patient(String clinicname, String patientname, String age, String doctorname, String date, String disease,
		String fromTime, String mobileno, String address, String registrationid, String sEX, String specilization) {
	super();
	Clinicname = clinicname;
	Patientname = patientname;
	Age = age;
	Doctorname = doctorname;
	Date = date;
	Disease = disease;
	FromTime = fromTime;
	Mobileno = mobileno;
	Address = address;
	Registrationid = registrationid;
	SEX = sEX;
	Specilization = specilization;
}
public Patient(String patientname, String age, String doctorname, String date, String disease, String mobileno,
		 String registrationid, String sEX) {

	Patientname = patientname;
	Age = age;
	Doctorname = doctorname;
	Date = date;
	Disease = disease;
	Mobileno = mobileno;
	
	Registrationid = registrationid;
	SEX = sEX;
}

public String getClinicname() {
	return Clinicname;
}

public void setClinicname(String clinicname) {
	Clinicname = clinicname;
}

public String getPatientname() {
	return Patientname;
}

public void setPatientname(String patientname) {
	Patientname = patientname;
}

public String getAge() {
	return Age;
}

public void setAge(String age) {
	Age = age;
}

public String getDoctorname() {
	return Doctorname;
}

public void setDoctorname(String doctorname) {
	Doctorname = doctorname;
}

public String getDate() {
	return Date;
}

public void setDate(String date) {
	Date = date;
}

public String getDisease() {
	return Disease;
}

public void setDisease(String disease) {
	Disease = disease;
}

public String getFromTime() {
	return FromTime;
}

public void setFromTime(String fromTime) {
	FromTime = fromTime;
}

public String getMobileno() {
	return Mobileno;
}

public void setMobileno(String mobileno) {
	Mobileno = mobileno;
}

public String getAddress() {
	return Address;
}

public void setAddress(String address) {
	Address = address;
}

public String getRegistrationid() {
	return Registrationid;
}

public void setRegistrationid(String registrationid) {
	Registrationid = registrationid;
}

public String getSEX() {
	return SEX;
}

public void setSEX(String sEX) {
	SEX = sEX;
}

public String getSpecilization() {
	return Specilization;
}

public void setSpecilization(String specilization) {
	Specilization = specilization;
}
}
