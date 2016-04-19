package bean;

public class subcategory_testbean {
	private int TEST_ID;
	private String TEST_SUBCATEGORY_NAME;
	private String NAME_OF_TESTS;
	private String path_name;
	private String path_adress;
	private String path_email;
	private String DETAILS;
	private String SPECIMEN;
	private String METHOD;
	private double PRICE;
	private String RULES;
	private String AVAILABILITY;
	private String DISTANCE;
	private String SUBCAT_TEST_DATE;
	public subcategory_testbean(int tEST_ID, String tEST_SUBCATEGORY_NAME, String path_name, String path_adress,
			String path_email, String dETAILS, String sPECIMEN, String mETHOD, double pRICE, String rULES,
			String aVAILABILITY, String dISTANCE, String sUBCAT_TEST_DATE) {
		super();
		
		TEST_ID = tEST_ID;
		TEST_SUBCATEGORY_NAME = tEST_SUBCATEGORY_NAME;
		this.path_name = path_name;
		this.path_adress = path_adress;
		this.path_email = path_email;
		DETAILS = dETAILS;
		SPECIMEN = sPECIMEN;
		METHOD = mETHOD;
		PRICE = pRICE;
		RULES = rULES;
		AVAILABILITY = aVAILABILITY;
		DISTANCE = dISTANCE;
		SUBCAT_TEST_DATE = sUBCAT_TEST_DATE;
	}
	public subcategory_testbean(int tEST_ID, String tEST_SUBCATEGORY_NAME, String nAME_OF_TESTS) {
		super();
		TEST_ID = tEST_ID;
		TEST_SUBCATEGORY_NAME = tEST_SUBCATEGORY_NAME;
		NAME_OF_TESTS = nAME_OF_TESTS;
	}
	public int getTEST_ID() {
		return TEST_ID;
	}
	public void setTEST_ID(int tEST_ID) {
		TEST_ID = tEST_ID;
	}
	public String getTEST_SUBCATEGORY_NAME() {
		return TEST_SUBCATEGORY_NAME;
	}
	public void setTEST_SUBCATEGORY_NAME(String tEST_SUBCATEGORY_NAME) {
		TEST_SUBCATEGORY_NAME = tEST_SUBCATEGORY_NAME;
	}
	public String getPath_name() {
		return path_name;
	}
	public void setPath_name(String path_name) {
		this.path_name = path_name;
	}
	public String getPath_adress() {
		return path_adress;
	}
	public void setPath_adress(String path_adress) {
		this.path_adress = path_adress;
	}
	public String getPath_email() {
		return path_email;
	}
	public void setPath_email(String path_email) {
		this.path_email = path_email;
	}
	public String getDETAILS() {
		return DETAILS;
	}
	public void setDETAILS(String dETAILS) {
		DETAILS = dETAILS;
	}
	public String getSPECIMEN() {
		return SPECIMEN;
	}
	public void setSPECIMEN(String sPECIMEN) {
		SPECIMEN = sPECIMEN;
	}
	public String getMETHOD() {
		return METHOD;
	}
	public void setMETHOD(String mETHOD) {
		METHOD = mETHOD;
	}
	public double getPRICE() {
		return PRICE;
	}
	public void setPRICE(double pRICE) {
		PRICE = pRICE;
	}
	public String getRULES() {
		return RULES;
	}
	public void setRULES(String rULES) {
		RULES = rULES;
	}
	public String getAVAILABILITY() {
		return AVAILABILITY;
	}
	public void setAVAILABILITY(String aVAILABILITY) {
		AVAILABILITY = aVAILABILITY;
	}
	public String getDISTANCE() {
		return DISTANCE;
	}
	public void setDISTANCE(String dISTANCE) {
		DISTANCE = dISTANCE;
	}
	public String getSUBCAT_TEST_DATE() {
		return SUBCAT_TEST_DATE;
	}
	public void setSUBCAT_TEST_DATE(String sUBCAT_TEST_DATE) {
		SUBCAT_TEST_DATE = sUBCAT_TEST_DATE;
	}
	public String getNAME_OF_TESTS() {
		return NAME_OF_TESTS;
	}
	public void setNAME_OF_TESTS(String nAME_OF_TESTS) {
		NAME_OF_TESTS = nAME_OF_TESTS;
	}
	
	
	}