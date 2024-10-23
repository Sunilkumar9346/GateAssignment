package mts.dto;

import java.util.Objects;

public class login {
   private String email;
   private String password;
   
public login(String email, String password) {
	super();
	this.email = email;
	this.password = password;
}

public login() {
	super();
	// TODO Auto-generated constructor stub
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

@Override
public String toString() {
	return "login [email=" + email + ", password=" + password + ", getEmail()=" + getEmail() + ", getPassword()="
			+ getPassword() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
			+ super.toString() + "]";
}

@Override
public int hashCode() {
	return Objects.hash(email, password);
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	login other = (login) obj;
	return Objects.equals(email, other.email) && Objects.equals(password, other.password);
}
   
}
