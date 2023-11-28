package devop_sproject.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class studentdto {
    
	
	@Id
	private int id;
	private String username;
	private String email;
	private long phoneno;
	private String pwd;
	private String cpwd;
	private String gender;
	private String dob;
	private String address;
	@Override
	public String toString() {
		return "studentdto [id=" + id + ", username=" + username + ", email=" + email + ", phoneno=" + phoneno
				+ ", pwd=" + pwd + ", cpwd=" + cpwd + ", gender=" + gender + ", dob=" + dob + ", address=" + address
				+ "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(long phoneno) {
		this.phoneno = phoneno;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getCpwd() {
		return cpwd;
	}
	public void setCpwd(String cpwd) {
		this.cpwd = cpwd;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	


	

	
	
	
	
	
}
