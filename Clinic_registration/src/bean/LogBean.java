package bean;

public class LogBean {
	private String Userid;
	private String Email;
	private String Password;
	public LogBean(String userid,String email, String password) {
		super();
		Userid=userid;
		Email = email;
		Password = password;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getUserid() {
		return Userid;
	}
	public void setUserid(String userid) {
		Userid = userid;
	}
	
}
