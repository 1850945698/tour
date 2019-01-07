package tour.entity;

public class User {
private String name;
private String phone;
private String email;
private Integer id;
private String password;
private String address;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
@Override
public String toString() {
	return "user [name=" + name + ", phone=" + phone + ", email=" + email + ", id=" + id + ", password=" + password
			+ ", address=" + address + "]";
}




}
