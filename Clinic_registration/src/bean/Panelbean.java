package bean;

import java.io.InputStream;

public class Panelbean {
	private  int sl_no;
	private String message;
	private String Name;
	private String Email;
	private String Category;
	private String datetime;
	private String file;
	
	



	public Panelbean(int sl_no, String message, String name, String email, String category, String datetime,
			String file) {
		super();
		this.sl_no = sl_no;
		this.message = message;
		Name = name;
		Email = email;
		Category = category;
		this.datetime = datetime;
		this.file = file;
	}





	public Panelbean(String message, String name, String email, String category, String datetime,
			String file) {
	
		this.message = message;
		Name = name;
		Email = email;
		Category = category;
		this.datetime = datetime;
		this.file = file;
	}





	public int getSl_no() {
		return sl_no;
	}





	public void setSl_no(int sl_no) {
		this.sl_no = sl_no;
	}





	public String getMessage() {
		return message;
	}





	public void setMessage(String message) {
		this.message = message;
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





	public String getCategory() {
		return Category;
	}





	public void setCategory(String category) {
		Category = category;
	}





	public String getDatetime() {
		return datetime;
	}





	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}





	public String getFile() {
		return file;
	}





	public void setFile(String file) {
		this.file = file;
	}


	
	
}

	