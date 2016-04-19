package bean;

import java.io.InputStream;

public class clinicbean 
{
	private String clinicname;
	private String Email;
	private String password;
	private String Confirmpassword;
	private String Address;
	private String Country;
	private String State;
	private String City;
	private String Pincode;
	private String Mobile;
	private String userid;
	private String file;
	

	public clinicbean(String clinicname, String email, String password, String confirmpassword, String address,
			String country, String state, String city, String pincode, String mobile, String userid, String file) {
		super();
		this.clinicname = clinicname;
		Email = email;
		this.password = password;
		Confirmpassword = confirmpassword;
		Address = address;
		Country = country;
		State = state;
		City = city;
		Pincode = pincode;
		Mobile = mobile;
		this.userid = userid;
		this.file = file;
	}







	public clinicbean(String clinicname, String email, String address, String country, String state, String city,
			String mobile, String file) {
		super();
		this.clinicname = clinicname;
		Email = email;
		Address = address;
		Country = country;
		State = state;
		City = city;
		Mobile = mobile;
		this.file = file;
	}

	public clinicbean(String email, String city, String address, String mobile, String file) {
		super();
		Email = email;
		Address = address;
		City = city;
		Mobile = mobile;
		this.file = file;
	}







	public clinicbean(String email,String city, String address,String mobile) {
		super();
		Email = email;
		City = city;
		Address = address;
		Mobile = mobile;
		
	}

	public clinicbean(String email, String address, String mobile) {
		super();
		Email = email;
		Address = address;
		Mobile = mobile;
	}

	public clinicbean(String email, String file) {
		super();
		Email = email;
		this.file = file;
	}






	public String getClinicname() {
		return clinicname;
	}

	public void setClinicname(String clinicname) {
		this.clinicname = clinicname;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmpassword() {
		return Confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		Confirmpassword = confirmpassword;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
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

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getPincode() {
		return Pincode;
	}

	public void setPincode(String pincode) {
		Pincode = pincode;
	}

	public String getMobile() {
		return Mobile;
	}

	public void setMobile(String mobile) {
		Mobile = mobile;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

}