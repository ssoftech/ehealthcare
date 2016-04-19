package bean;

import java.io.InputStream;

public class Doctor_reg {
	
	private String Id;
	private String Rid;
	private String Fname;
	private String Lname;
	private String DOB;
	private String Email;
	private String password;
	private String Country;
	private String State;
	private String Address;
	private String Gender;
	private String Pincode;
	private String City;
	private String Mobileno;
	private String Rexp;
	private String Rspc;
	private String image;
	private String Rdeg;

	public Doctor_reg(String id, String rid, String fname, String lname, String dOB, String email, String password,
			String country, String state, String address, String gender, String pincode, String city, String mobileno,
			String rexp, String rspc, String image, String rdeg) {
		super();
		Id = id;
		Rid = rid;
		Fname = fname;
		Lname = lname;
		DOB = dOB;
		Email = email;
		this.password = password;
		Country = country;
		State = state;
		Address = address;
		Gender = gender;
		Pincode = pincode;
		City = city;
		Mobileno = mobileno;
		Rexp = rexp;
		Rspc = rspc;
		this.image = image;
		Rdeg = rdeg;
	}




	public Doctor_reg(String rspc, String rexp, String lname, String email,
			String rdeg, String country, String state, String city,
			String pincode, String address, String mobileno, String image) {
		super();
		Rspc = rspc;
		Rexp = rexp;
		Lname = lname;
		Email = email;
		Rdeg = rdeg;
		Country = country;
		State = state;
		City = city;
		Pincode = pincode;
		Address = address;
		Mobileno = mobileno;
		this.image = image;
	}




	public String getId() {
		return Id;
	}




	public void setId(String id) {
		Id = id;
	}




	public String getRid() {
		return Rid;
	}




	public void setRid(String rid) {
		Rid = rid;
	}




	public String getFname() {
		return Fname;
	}




	public void setFname(String fname) {
		Fname = fname;
	}




	public String getLname() {
		return Lname;
	}




	public void setLname(String lname) {
		Lname = lname;
	}




	public String getDOB() {
		return DOB;
	}




	public void setDOB(String dOB) {
		DOB = dOB;
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




	public String getAddress() {
		return Address;
	}




	public void setAddress(String address) {
		Address = address;
	}




	public String getGender() {
		return Gender;
	}




	public void setGender(String gender) {
		Gender = gender;
	}




	public String getPincode() {
		return Pincode;
	}




	public void setPincode(String pincode) {
		Pincode = pincode;
	}




	public String getCity() {
		return City;
	}




	public void setCity(String city) {
		City = city;
	}




	public String getMobileno() {
		return Mobileno;
	}




	public void setMobileno(String mobileno) {
		Mobileno = mobileno;
	}




	public String getRexp() {
		return Rexp;
	}




	public void setRexp(String rexp) {
		Rexp = rexp;
	}




	public String getRspc() {
		return Rspc;
	}




	public void setRspc(String rspc) {
		Rspc = rspc;
	}




	public String getImage() {
		return image;
	}




	public void setImage(String image) {
		this.image = image;
	}




	public String getRdeg() {
		return Rdeg;
	}




	public void setRdeg(String rdeg) {
		Rdeg = rdeg;
	}



	}
