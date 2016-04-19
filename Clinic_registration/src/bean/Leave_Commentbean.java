package bean;

public class Leave_Commentbean {

	private String Name;
	private String Email;
	private String Phone;
	private String Message;
	private int sl_no;
	private String Datetime;
	private String BlogName;
	
	
	
	public Leave_Commentbean(String name, String email, String phone, String message, int sl_no) {
		super();
		Name = name;
		Email = email;
		Phone = phone;
		Message = message;
		this.setSl_no(sl_no);
	}
	
	




	public Leave_Commentbean(String name, String email, String phone, String message, String datetime, String BlogName) {
	
		Name = name;
		Email = email;
		Phone = phone;
		Message = message;
		setDatetime(datetime);
		this.BlogName=BlogName;
		
		
	}






	public String getBlogName() {
		return BlogName;
	}






	public void setBlogName(String blogName) {
		BlogName = blogName;
	}






	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	public int getSl_no() {
		return sl_no;
	}
	public void setSl_no(int sl_no) {
		this.sl_no = sl_no;
	}






	public String getDatetime() {
		return Datetime;
	}






	public void setDatetime(String datetime) {
		Datetime = datetime;
	}
	
	
	
}
