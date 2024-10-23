package mts.dto;

import java.util.Objects;

public class getquestions {
     private String q1;
     private String q2;
	public getquestions() {
		super();
		// TODO Auto-generated constructor stub
	}
	public getquestions(String q1, String q2) {
		super();
		this.q1 = q1;
		this.q2 = q2;
	}
	public String getQ1() {
		return q1;
	}
	public void setQ1(String q1) {
		this.q1 = q1;
	}
	public String getQ2() {
		return q2;
	}
	public void setQ2(String q2) {
		this.q2 = q2;
	}
	@Override
	public int hashCode() {
		return Objects.hash(q1, q2);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		getquestions other = (getquestions) obj;
		return Objects.equals(q1, other.q1) && Objects.equals(q2, other.q2);
	}
	@Override
	public String toString() {
		return "getquestions [q1=" + q1 + ", q2=" + q2 + "]";
	}
     
}
