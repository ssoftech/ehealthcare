package bean;

import java.io.InputStream;

public class Add_Medicine_Bean {
	private String medicine_name;
	private String medicine_type;
	private String Tagline;
	private double price;
	private int quantity;
	private int power;
	private int totalquantity;
	private double vat;
	private double mrp;
	private String discount_range;
	private double discount;
	private String manufacturedate;
	private String expirydate;
	private String manufacturername;
	private String location;
	private String landmark;
	private String retailername;
	private String fileName;
	private String retailerid;




	public Add_Medicine_Bean(String medicine_name, String medicine_type, String tagline, double price, int quantity,
			int power, int totalquantity,double vat,double mrp, String discount_range, double discount,String manufacturedate,String expirydate,String manufacturername,String location, String landmark,String retailername, String fileName, String retailerid) {
		super();
		this.medicine_name = medicine_name;
		this.medicine_type = medicine_type;
		this.Tagline = tagline;
		this.price = price;
		this.quantity = quantity;
		this.power = power;
		this.totalquantity = totalquantity;
		this.vat=vat;
		this.mrp=mrp;
		this.discount_range=discount_range;
		this.discount=discount;
		this.manufacturedate=manufacturedate;
		this.expirydate=expirydate;
		this.manufacturername=manufacturername;
		this.location = location;
		this.landmark = landmark;
		this.retailername = retailername;
		this.fileName = fileName;
		this.retailerid = retailerid;
	}

	
	public Add_Medicine_Bean(String medicine_name, String fileName) {
		super();
		this.medicine_name = medicine_name;
		this.fileName = fileName;
	}


	public double getVat() {
		return vat;
	}


	public void setVat(double vat) {
		this.vat = vat;
	}


	public double getMrp() {
		return mrp;
	}


	public void setMrp(double mrp) {
		this.mrp = mrp;
	}


	public String getDiscount_range() {
		return discount_range;
	}


	public void setDiscount_range(String discount_range) {
		this.discount_range = discount_range;
	}


	public double getDiscount() {
		return discount;
	}


	public void setDiscount(double discount) {
		this.discount = discount;
	}


	public String getManufacturedate() {
		return manufacturedate;
	}


	public void setManufacturedate(String manufacturedate) {
		this.manufacturedate = manufacturedate;
	}


	public String getExpirydate() {
		return expirydate;
	}


	public void setExpirydate(String expirydate) {
		this.expirydate = expirydate;
	}


	public String getManufacturername() {
		return manufacturername;
	}


	public void setManufacturername(String manufacturername) {
		this.manufacturername = manufacturername;
	}
	
	

	public String getRetailerid() {
		return retailerid;
	}


	public void setRetailerid(String retailerid) {
		this.retailerid = retailerid;
	}


	public Add_Medicine_Bean(String medicine_name, String medicine_type, String tagline, double price, int quantity,
			int power,int totalquantity,double vat,double mrp, String discount_range, double discount, String location, String landmark) {
		super();
		this.medicine_name = medicine_name;
		this.medicine_type = medicine_type;
		this.Tagline = tagline;
		this.price = price;
		this.quantity = quantity;
		this.power = power;
		this.totalquantity = totalquantity;
		this.vat=vat;
		this.mrp=mrp;
		this.discount_range=discount_range;
		this.discount=discount;
		this.location = location;
		this.landmark = landmark;
		
	}


	public int getTotalquantity() {
		return totalquantity;
	}


	public void setTotalquantity(int totalquantity) {
		this.totalquantity = totalquantity;
	}


	public Add_Medicine_Bean(String medicinename) {
		medicine_name = medicinename;
	}


	

	public String getMedicine_name() {
		return medicine_name;
	}


	public void setMedicine_name(String medicine_name) {
		this.medicine_name = medicine_name;
	}


	public String getMedicine_type() {
		return medicine_type;
	}


	public void setMedicine_type(String medicine_type) {
		this.medicine_type = medicine_type;
	}


	public String getTagline() {
		return Tagline;
	}


	public void setTagline(String tagline) {
		Tagline = tagline;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public int getPower() {
		return power;
	}


	public void setPower(int power) {
		this.power = power;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getLandmark() {
		return landmark;
	}


	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}


	public String getRetailername() {
		return retailername;
	}


	public void setRetailername(String retailername) {
		this.retailername = retailername;
	}


	public String getFileName() {
		return fileName;
	}


	public void setFileName(String fileName) {
		this.fileName = fileName;
	}





}
