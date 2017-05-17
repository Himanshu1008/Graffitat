package pack;

import org.springframework.data.mongodb.core.mapping.Field;

public class User {

@Override
	public String toString() {
		return "User [userID=" + userID + ", userName=" + userName + ", userEmail=" + userEmail + ", phoneNo=" + phoneNo
				+ ", userAddress=" + userAddress + ", Password=" + Password + "]";
	}
public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
private String userID;
@Field( value="userName")
private String userName;
@Field(value="userEmail")
private String userEmail;
@Field(value="phoneNo")
private String phoneNo;
@Field(value="userAddress")
private String userAddress;
@Field(value="Password")
private String Password;
}
