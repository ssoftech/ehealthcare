package bean;

public class Newsbean {
private String Name;
private String Area;
public Newsbean(String name, String area) {
	super();
	Name = name;
	Area = area;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getArea() {
	return Area;
}
public void setArea(String area) {
	Area = area;
}

}
