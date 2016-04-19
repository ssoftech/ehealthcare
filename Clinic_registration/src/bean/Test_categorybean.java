package bean;

public class Test_categorybean {

	private String NAME_OF_TESTS;
	private String PATH_NAME;
	private String TEST_DATE;
	private String email;
	public Test_categorybean(String nAME_OF_TESTS, String pATH_NAME, String tEST_DATE, String email) {
		super();
		NAME_OF_TESTS = nAME_OF_TESTS;
		PATH_NAME = pATH_NAME;
		TEST_DATE = tEST_DATE;
		this.email = email;
	}
	
	public Test_categorybean(String nAME_OF_TESTS) {
		super();
		NAME_OF_TESTS = nAME_OF_TESTS;
	}

	public String getNAME_OF_TESTS() {
		return NAME_OF_TESTS;
	}
	public void setNAME_OF_TESTS(String nAME_OF_TESTS) {
		NAME_OF_TESTS = nAME_OF_TESTS;
	}
	public String getPATH_NAME() {
		return PATH_NAME;
	}
	public void setPATH_NAME(String pATH_NAME) {
		PATH_NAME = pATH_NAME;
	}
	public String getTEST_DATE() {
		return TEST_DATE;
	}
	public void setTEST_DATE(String tEST_DATE) {
		TEST_DATE = tEST_DATE;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}	
}
