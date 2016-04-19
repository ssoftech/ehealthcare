package bean;

public class Report_reg_bean {
	private String pathalogyname;
	private String Reportname;
	private String mobile;
	private String gender;
	private String password;
	private String confirmpassword;
	private String userid;
	private String email;
	private String Address;
	public Report_reg_bean(String pathalogyname, String reportname, String mobile, String gender, String password,
			String confirmpassword, String userid, String email, String address) {
		super();
		this.pathalogyname = pathalogyname;
		Reportname = reportname;
		this.mobile = mobile;
		this.gender = gender;
		this.password = password;
		this.confirmpassword = confirmpassword;
		this.userid = userid;
		this.email = email;
		Address = address;
	}
	
	public Report_reg_bean(String password, String confirmpassword, String userid) {
		super();
		this.password = password;
		this.confirmpassword = confirmpassword;
		this.userid = userid;
	}

	public String getPathalogyname() {
		return pathalogyname;
	}
	public void setPathalogyname(String pathalogyname) {
		this.pathalogyname = pathalogyname;
	}
	public String getReportname() {
		return Reportname;
	}
	public void setReportname(String reportname) {
		Reportname = reportname;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	
}
