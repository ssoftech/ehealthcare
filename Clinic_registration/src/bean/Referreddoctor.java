package bean;

public class Referreddoctor {
private String Pathalogyname;
private String DoctorName;
private String Registrationid;
private String Specilization;
private String Date;
public Referreddoctor(String pathalogyname, String doctorName, String registrationid, String specilization,
		String date) {
	super();
	Pathalogyname = pathalogyname;
	DoctorName = doctorName;
	Registrationid = registrationid;
	Specilization = specilization;
	Date = date;
}
public String getPathalogyname() {
	return Pathalogyname;
}
public void setPathalogyname(String pathalogyname) {
	Pathalogyname = pathalogyname;
}
public String getDoctorName() {
	return DoctorName;
}
public void setDoctorName(String doctorName) {
	DoctorName = doctorName;
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

}
