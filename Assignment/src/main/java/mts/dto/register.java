/**
 * 
 */
package mts.dto;

import java.util.Objects;

/**
 * 
 */
public class register {
	  private String fullname;
	  private String email;
	  private String phone;
	  private String password;
	  private String cpassword;
	  private String role;
	public register() {
		super();
		// TODO Auto-generated constructor stub
	}
	public register(String fullname, String email, String phone, String password, String cpassword, String role) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.cpassword = cpassword;
		this.role = role;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public int hashCode() {
		return Objects.hash(cpassword, email, fullname, password, phone, role);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		register other = (register) obj;
		return Objects.equals(cpassword, other.cpassword) && Objects.equals(email, other.email)
				&& Objects.equals(fullname, other.fullname) && Objects.equals(password, other.password)
				&& Objects.equals(phone, other.phone) && Objects.equals(role, other.role);
	}
	@Override
	public String toString() {
		return "register [fullname=" + fullname + ", email=" + email + ", phone=" + phone + ", password=" + password
				+ ", cpassword=" + cpassword + ", role=" + role + "]";
	}
	  
	  
}
