package com.fyp.user.daoImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import com.fyp.user.dao.UserDao;
import com.fyp.user.models.LoginModel;
import com.fyp.user.models.SignUpModel;
@Component

public class UserDaoImp implements UserDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;  
	
	
	@Override
	public void signUp(SignUpModel signUp) {
		// TODO Auto-generated method stub
	String query="INSERT INTO `employee_record` (`employee_id`, `first_name`, `last_name`, `email`, `passwrod`, `department`, `manager_id`) VALUES (NULL, '"+signUp.getFirst_name()+"', '"+signUp.getLast_name()+"','"+signUp.getEmail()+"', '"+signUp.getUser_password()+"','"+signUp.getDepartment()+"','"+signUp.getManagerid()+"')";
	jdbcTemplate.execute(query);
	}

	@Override
	public int login(LoginModel login) {
			String sql="SELECT Count(*) FROM `employee_record`where `email`=? and `passwrod`=?";
			return jdbcTemplate.queryForObject(sql,new Object[] {login.getUsername(),login.getPassword()} ,Integer.class);
	}

	@Override
	public void ScreenshotSave(String fileName,String date,String userid) {

		String sql="INSERT INTO `employees_images_record` (`employee_id`, `date`, `images`,`work`,`nonwork`) VALUES ('"+userid+"', '"+date+"', '"+fileName+"','1','1')";
		jdbcTemplate.execute(sql);
	}

	@Override
	public String getuserid(LoginModel login) {
		String sql="SELECT employee_id FROM `employee_record` where email='"+login.getUsername()+"' and passwrod='"+login.getPassword()+"'";
		String id=(String) jdbcTemplate.queryForObject(sql,String.class);
		return id;
	}

	
}
