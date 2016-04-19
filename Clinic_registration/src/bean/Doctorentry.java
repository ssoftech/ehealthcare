package bean;

public class Doctorentry {
private String Clinicname;
private String Doctorname;
private String Registrationid;
private String Specilization;
private String Date;
private String Formtime;
private String Totime;



public Doctorentry(String clinicname, String doctorname, String registrationid, String specilization, String date,
		String formtime, String totime) {
	super();
	Clinicname = clinicname;
	Doctorname = doctorname;
	Registrationid = registrationid;
	Specilization = specilization;
	Date = date;
	Formtime = formtime;
	Totime = totime;
	
}


public Doctorentry(String clinicname, String doctorname, String registrationid, String date, String formtime,
		String totime) {
	super();
	Clinicname = clinicname;
	Doctorname = doctorname;
	Registrationid = registrationid;
	Date = date;
	Formtime = formtime;
	Totime = totime;
}


public String getClinicname() {
	return Clinicname;
}
public void setClinicname(String clinicname) {
	Clinicname = clinicname;
}
public String getDoctorname() {
	return Doctorname;
}
public void setDoctorname(String doctorname) {
	Doctorname = doctorname;
}
public String getRegistrationid() {
	return Registrationid;
}
public void setRegistrationid(String registrationid) {
	Registrationid = registrationid;
}
public String getSpecilization() {
	return Specilization;
}
public void setSpecilization(String specilization) {
	Specilization = specilization;
}
public String getDate() {
	return Date;
}
public void setDate(String date) {
	Date = date;
}
public String getFormtime() {
	return Formtime;
}
public void setFormtime(String formtime) {
	Formtime = formtime;
}
public String getTotime() {
	return Totime;
}
public void setTotime(String totime) {
	Totime = totime;
}

	
}

	
	