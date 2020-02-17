package com.fyp.user.dao;
import com.fyp.user.models.LoginModel;
import com.fyp.user.models.SignUpModel;;

public interface UserDao{
	public void signUp(SignUpModel signUp);
	public int login(LoginModel login);
	public String getuserid(LoginModel login);
    public void ScreenshotSave(String fileName,String date,String userid);

}
