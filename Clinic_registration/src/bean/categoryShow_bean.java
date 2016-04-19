package bean;

public class categoryShow_bean {
private String NAME_OF_TESTS;
private int TEST_ID;
public categoryShow_bean(String nAME_OF_TESTS, int tEST_ID) {
	super();
	NAME_OF_TESTS = nAME_OF_TESTS;
	TEST_ID = tEST_ID;
}
public String getNAME_OF_TESTS() {
	return NAME_OF_TESTS;
}
public void setNAME_OF_TESTS(String nAME_OF_TESTS) {
	NAME_OF_TESTS = nAME_OF_TESTS;
}
public int getTEST_ID() {
	return TEST_ID;
}
public void setTEST_ID(int tEST_ID) {
	TEST_ID = tEST_ID;
}
}
