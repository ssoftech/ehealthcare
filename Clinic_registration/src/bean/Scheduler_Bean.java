package bean;

public class Scheduler_Bean {

	private String Date;
	private String From;
	private String To;
	private String Description;
	private String DocDetails;
	private String dbdocdetails;
	public Scheduler_Bean(String date, String from, String to, String description, String docDetails) {
		super();
		Date = date;
		From = from;
		To = to;
		Description = description;
		DocDetails = docDetails;
	}
	
	
	

	public Scheduler_Bean(String date, String from, String to, String description, String docDetails,
			String dbdocdetails) {
		super();
		Date = date;
		From = from;
		To = to;
		Description = description;
		DocDetails = docDetails;
		this.dbdocdetails = dbdocdetails;
	}

	



	public String getDbdocdetails() {
		return dbdocdetails;
	}




	public void setDbdocdetails(String dbdocdetails) {
		this.dbdocdetails = dbdocdetails;
	}




	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getFrom() {
		return From;
	}
	public void setFrom(String from) {
		From = from;
	}
	public String getTo() {
		return To;
	}
	public void setTo(String to) {
		To = to;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getDocDetails() {
		return DocDetails;
	}
	public void setDocDetails(String docDetails) {
		DocDetails = docDetails;
	}
	
	
	
	

}
