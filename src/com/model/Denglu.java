package com.model;

/**
 * Denglu entity. @author MyEclipse Persistence Tools
 */

public class Denglu implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private String password;
	private String name;
	private String sex;
	private String province;
	private String city;
	private String area;
	private String company;
	private String major;
	private String industry;
	private String education;
	private String title;
	private String address;
	private String zipCode;
	private String phone;
	private String telephone;
	private String email;
	private String qq;
	private String msn;
	private String type;
	private String cpow;
	private String rpow;
	private String upow;
	private String dpow;

	// Constructors

	/** default constructor */
	public Denglu() {
	}

	/** full constructor */
	public Denglu(String username, String password, String name, String sex,
			String province, String city, String area, String company,
			String major, String industry, String education, String title,
			String address, String zipCode, String phone, String telephone,
			String email, String qq, String msn, String type, String cpow,
			String rpow, String upow, String dpow) {
		this.username = username;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.province = province;
		this.city = city;
		this.area = area;
		this.company = company;
		this.major = major;
		this.industry = industry;
		this.education = education;
		this.title = title;
		this.address = address;
		this.zipCode = zipCode;
		this.phone = phone;
		this.telephone = telephone;
		this.email = email;
		this.qq = qq;
		this.msn = msn;
		this.type = type;
		this.cpow = cpow;
		this.rpow = rpow;
		this.upow = upow;
		this.dpow = dpow;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getIndustry() {
		return this.industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getEducation() {
		return this.education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZipCode() {
		return this.zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQq() {
		return this.qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getMsn() {
		return this.msn;
	}

	public void setMsn(String msn) {
		this.msn = msn;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCpow() {
		return this.cpow;
	}

	public void setCpow(String cpow) {
		this.cpow = cpow;
	}

	public String getRpow() {
		return this.rpow;
	}

	public void setRpow(String rpow) {
		this.rpow = rpow;
	}

	public String getUpow() {
		return this.upow;
	}

	public void setUpow(String upow) {
		this.upow = upow;
	}

	public String getDpow() {
		return this.dpow;
	}

	public void setDpow(String dpow) {
		this.dpow = dpow;
	}

}