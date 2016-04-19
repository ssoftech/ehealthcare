package bean;

public class Doc_LogBean {
	private String DocID;
	private String Email;
	private String Password;
	public Doc_LogBean(String docID, String email, String password) {
		super();
		DocID = docID;
		Email = email;
		Password = password;
	}
	public String getDocID() {
		return DocID;
	}
	public void setDocID(String docID) {
		DocID = docID;
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
	
	
}
