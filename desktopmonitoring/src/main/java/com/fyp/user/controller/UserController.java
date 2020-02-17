package com.fyp.user.controller;

import java.awt.AWTException;
import java.awt.HeadlessException;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import com.fyp.user.daoImp.UserDaoImp;
import com.fyp.user.models.LoginModel;
import com.fyp.user.models.SignUpModel;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
@Controller
public class UserController {

	@Autowired
	private UserDaoImp userdaoimp;

	@GetMapping("/")
	public ModelAndView employee_login() {

		ModelAndView object = new ModelAndView("employee_login");
		return object;
	}

	@PostMapping("/signupProcess")
	public ModelAndView signup(@ModelAttribute SignUpModel singnup) {
		userdaoimp.signUp(singnup);
		ModelAndView mavsignup = new ModelAndView("userpanal");
		return (mavsignup);
	}

	@PostMapping("/loginProcess")
	public ModelAndView loginsubmit(@ModelAttribute LoginModel login, HttpServletRequest request,
			HttpServletResponse response) {

		 int Count=userdaoimp.login(login);
		if (Count > 0) {
			ModelAndView mav = new ModelAndView("userdashBoard");
			String userid=userdaoimp.getuserid(login);
			HttpSession session = request.getSession();
			session.setAttribute("userid",userid);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("employee_login");
			mav.addObject("msg", "Username or Password Wrong");
			return mav;
		}
	}

	@GetMapping("/userpanal")
	public ModelAndView userpanal() {

		ModelAndView object = new ModelAndView("userpanal");

		return object;
	}

	@GetMapping("/screenshot")

	public void screenshot(HttpServletRequest request, HttpServletResponse response)
			throws IOException, HeadlessException, AWTException {
		HttpSession session = request.getSession(false);
		String userid;
		if (session != null) {
			userid = (String) session.getAttribute("userid");
			System.out.println(userid);
			DateTimeFormatter ptndate = DateTimeFormatter.ofPattern("dd-MM-yyyy");
			LocalDateTime date = LocalDateTime.now();
			DateTimeFormatter ptnName = DateTimeFormatter.ofPattern("HH-mm-ss");
			LocalDateTime name = LocalDateTime.now();

			final String dir = System.getProperty("user.dir");
			Robot robot = new Robot();
			String format = "jpg";
			String fileName = ptnName.format(name) + "." + format;
			String imgdate = ptndate.format(date);
			String path = dir + "//src//main//resources//static//employee_screenshots//" + fileName;

			Rectangle screenRect = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
			BufferedImage screenFullImage = robot.createScreenCapture(screenRect);
			ImageIO.write(screenFullImage, format, new File(path));

			System.out.println("Date:" + imgdate + "--name" + fileName);
			userdaoimp.ScreenshotSave(fileName, imgdate, userid);
		} else {
			employee_login();
		}
	}
	@GetMapping("/userLogOut")
	public ModelAndView userLogOut() {
		
		ModelAndView mav=new ModelAndView("employee_login");
		return mav;
	}
	@GetMapping("/CurrentTime")
	public void getCurrentTime() {
		DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
		Date dateobj = new Date();
	    String date=df.format(dateobj);
		System.out.println(date);
		
	}
	
	

}
