package bean;

public class updateTest_bean {
private String TEST_SUBCATEGORY_NAME;
private String DETAILS;
private String SPECIMEN;
private String METHOD;
private Double PRICE;
private String RULES;
private String AVAILABILITY;
private String DISTANCE;
public updateTest_bean(String tEST_SUBCATEGORY_NAME, String dETAILS, String sPECIMEN, String mETHOD, Double pRICE,
		String rULES, String aVAILABILITY, String dISTANCE) {
	super();
	TEST_SUBCATEGORY_NAME = tEST_SUBCATEGORY_NAME;
	DETAILS = dETAILS;
	SPECIMEN = sPECIMEN;
	METHOD = mETHOD;
	PRICE = pRICE;
	RULES = rULES;
	AVAILABILITY = aVAILABILITY;
	DISTANCE = dISTANCE;
}
public String getTEST_SUBCATEGORY_NAME() {
	return TEST_SUBCATEGORY_NAME;
}
public void setTEST_SUBCATEGORY_NAME(String tEST_SUBCATEGORY_NAME) {
	TEST_SUBCATEGORY_NAME = tEST_SUBCATEGORY_NAME;
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
public Double getPRICE() {
	return PRICE;
}
public void setPRICE(Double pRICE) {
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
}