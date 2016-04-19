package bean;

import java.io.InputStream;

public class Retailerbean {
	
		private String Retailername;
		
		private String Email;
		private String Country;
		private String Address;
	    private String State;
		private String City;
		private String Pincode;
        private String Retailerid;
        private String Password;
        private String Confirmpwd;
		private String Mobile;
		private String DelivaryRange;
		private double Minimumpricefordelivary;
	
		private String file;
		
		public Retailerbean(String retailername, String email, String country, String address, String state,
				String city, String pincode, String retailerid, String password, String confirmpwd, String mobile,
				String delivaryRange, double Minimumpricefordelivary,String file) {
			super();
			Retailername = retailername;
			Email = email;
			
			Country = country;
			Address = address;
			State = state;
			City = city;
			Pincode = pincode;
			Retailerid = retailerid;
			Password = password;
			Confirmpwd = confirmpwd;
			Mobile = mobile;
			DelivaryRange = delivaryRange;
			this.Minimumpricefordelivary = Minimumpricefordelivary;	
			
			this.file = file;
		}
	
			
		
		


		public double getMinimumpricefordelivary() {
			return Minimumpricefordelivary;
		}






		public void setMinimumpricefordelivary(double minimumpricefordelivary) {
			Minimumpricefordelivary = minimumpricefordelivary;
		}






		public Retailerbean(String address, String pincode, String email, String mobile) {
			
			Address = address;
			Pincode = pincode;
			Mobile = mobile;
			Email = email;
		
		}
		public Retailerbean(String email, String file) {
			super();
			Email = email;
			this.file = file;
		}






		public Retailerbean(String country, String address, String state, String city, String pincode, String mobile) {
	
			Country = country;
			Address = address;
			State = state;
			City = city;
			Pincode = pincode;
			Mobile = mobile;
		}




		public String getRetailername() {
			return Retailername;
		}




		public void setRetailername(String retailername) {
			Retailername = retailername;
		}




		public String getEmail() {
			return Email;
		}




		public void setEmail(String email) {
			Email = email;
		}




		public String getCountry() {
			return Country;
		}




		public void setCountry(String country) {
			Country = country;
		}




		public String getAddress() {
			return Address;
		}




		public void setAddress(String address) {
			Address = address;
		}




		public String getState() {
			return State;
		}




		public void setState(String state) {
			State = state;
		}




		public String getCity() {
			return City;
		}




		public void setCity(String city) {
			City = city;
		}



		public String getPincode() {
			return Pincode;
		}




		public void setPincode(String pincode) {
			Pincode = pincode;
		}




		public String getRetailerid() {
			return Retailerid;
		}




		public void setRetailerid(String retailerid) {
			Retailerid = retailerid;
		}




		public String getPassword() {
			return Password;
		}




		public void setPassword(String password) {
			Password = password;
		}




		public String getConfirmpwd() {
			return Confirmpwd;
		}




		public void setConfirmpwd(String confirmpwd) {
			Confirmpwd = confirmpwd;
		}




		public String getMobile() {
			return Mobile;
		}




		public void setMobile(String mobile) {
			Mobile = mobile;
		}




		public String getDelivaryRange() {
			return DelivaryRange;
		}




		public void setDelivaryRange(String delivaryRange) {
			DelivaryRange = delivaryRange;
		}

		public String getFile() {
			return file;
		}




		public void setFile(String file) {
			this.file = file;
		}





		
		
}