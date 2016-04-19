package bean;

public class SizeBean {

	
	private String Header="";
	private String Footer="";
	private String Print="";
	public SizeBean(String header, String footer, String print) {
		super();
		Header = header;
		Footer = footer;
		Print = print;
	}
	public String getHeader() {
		return Header;
	}
	public void setHeader(String header) {
		Header = header;
	}
	public String getFooter() {
		return Footer;
	}
	public void setFooter(String footer) {
		Footer = footer;
	}
	public String getPrint() {
		return Print;
	}
	public void setPrint(String print) {
		Print = print;
	}
	
	
}
