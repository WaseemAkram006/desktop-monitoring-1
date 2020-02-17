package com.fyp.user.models;

public class SignUpModel {
	String Managerid;
	String first_name;
	String last_name;
	String department;
	String user_password;
	String email;
	String contact_no;
	/**
	 * @return the managerid
	 */
	public String getManagerid() {
		return Managerid;
	}
	/**
	 * @param managerid the managerid to set
	 */
	public void setManagerid(String managerid) {
		Managerid = managerid;
	}
	/**
	 * @return the first_name
	 */
	public String getFirst_name() {
		return first_name;
	}
	/**
	 * @param first_name the first_name to set
	 */
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	/**
	 * @return the last_name
	 */
	public String getLast_name() {
		return last_name;
	}
	/**
	 * @param last_name the last_name to set
	 */
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	/**
	 * @return the department
	 */
	public String getDepartment() {
		return department;
	}
	/**
	 * @param department the department to set
	 */
	public void setDepartment(String department) {
		this.department = department;
	}
	/**
	 * @return the user_password
	 */
	public String getUser_password() {
		return user_password;
	}
	/**
	 * @param user_password the user_password to set
	 */
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the contact_no
	 */
	public String getContact_no() {
		return contact_no;
	}
	/**
	 * @param contact_no the contact_no to set
	 */
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	
}
