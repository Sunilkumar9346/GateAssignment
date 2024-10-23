package mts.dto;

import java.util.Objects;

public class Assignment1 {
	private String email;
	private String assignment;
	private String marks;
	public Assignment1() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Assignment1(String email, String assignment, String marks) {
		super();
		this.email = email;
		this.assignment = assignment;
		this.marks = marks;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAssignment() {
		return assignment;
	}
	public void setAssignment(String assignment) {
		this.assignment = assignment;
	}
	public String getMarks() {
		return marks;
	}
	public void setMarks(String marks) {
		this.marks = marks;
	}
	@Override
	public String toString() {
		return "Assignment1 [email=" + email + ", assignment=" + assignment + ", marks=" + marks + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(assignment, email, marks);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Assignment1 other = (Assignment1) obj;
		return Objects.equals(assignment, other.assignment) && Objects.equals(email, other.email)
				&& Objects.equals(marks, other.marks);
	}
	
	

}
