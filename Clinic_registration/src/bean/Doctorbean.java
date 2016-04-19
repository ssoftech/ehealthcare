package bean;


public class Doctorbean {
	private String Firstname;
	private String Lastname;
	private String Email;
	private String Address;
	private String Gender;
	private String State;
	private String Country;
	private String City;
	private String Pincode;
	private String Qualification;
	private String Registrationid;
	private String Experience;
	private String Specilization;
	private String Mobile;
	private String Password;
	private String file;
	public Doctorbean(String firstname, String lastname, String email, String address, String gender, String state,
			String country, String city, String pincode, String qualification, String registrationid, String experience,
			String specilization, String mobile, String password, String file) {
		super();
		Firstname = firstname;
		Lastname = lastname;
		Email = email;
		Address = address;
		Gender = gender;
		State = state;
		Country = country;
		City = city;
		Pincode = pincode;
		Qualification = qualification;
		Registrationid = registrationid;
		Experience = experience;
		Specilization = specilization;
		Mobile = mobile;
		Password = password;
		this.file = file;
	}
		public Doctorbean(String firstname, String lastname, String email, String gender, String qualification,
			String experience, String mobile,String file) {
		super();
		Firstname = firstname;
		Lastname = lastname;
		Email = email;
		Gender = gender;
		Qualification = qualification;
		Experience = experience;
		Mobile = mobile;
		this.file = file;
	}
	public Doctorbean(String firstname, String lastname, String email, String gender, String qualification,
			 String experience, String specilization, String mobile,String file) {
		super();
		Firstname = firstname;
		Lastname = lastname;
		Email = email;
		Gender = gender;
		Qualification = qualification;
		Experience = experience;
		Specilization = specilization;
		Mobile = mobile;
		this.file = file;
	}




	public String getFirstname() {
		return Firstname;
	}
	public void setFirstname(String firstname) {
		Firstname = firstname;
	}
	public String getLastname() {
		return Lastname;
	}
	public void setLastname(String lastname) {
		Lastname = lastname;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
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
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
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
	public String getQualification() {
		return Qualification;
	}
	public void setQualification(String qualification) {
		Qualification = qualification;
	}
	public String getRegistrationid() {
		return Registrationid;
	}
	public void setRegistrationid(String registrationid) {
		Registrationid = registrationid;
	}
	public String getExperience() {
		return Experience;
	}
	public void setExperience(String experience) {
		Experience = experience;
	}
	public String getSpecilization() {
		return Specilization;
	}
	public void setSpecilization(String specilization) {
		Specilization = specilization;
	}
	public String getMobile() {
		return Mobile;
	}
	public void setMobile(String mobile) {
		Mobile = mobile;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

}
