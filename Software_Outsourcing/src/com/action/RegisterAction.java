package com.action;



import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.Entity.User;
import com.opensymphony.xwork2.ActionSupport;
public class RegisterAction extends ActionSupport{
    private User user;
    @Override
    public String execute() throws UnsupportedEncodingException{
    	HttpServletRequest req = ServletActionContext.getRequest();
    	Cookie cs[] = req.getCookies();
    	if(user.getUsername().length()>0){
    		String username = new String(user.getUsername().getBytes("ISO-8859-1"),"UTF-8");
    	System.out.println("1"+username);
    	if(cs!=null){
    	for(Cookie c:cs){
    		String name = URLDecoder.decode(c.getName(),"UTF-8");
     		String value = URLDecoder.decode(c.getValue(),"UTF-8");
    		if(name.equals(username)&&value.equals(user.getPassword())){
    			req.setAttribute("register_error","用户已经存在不需要注册,请直接登录!");
    			return "error";
    		}
    	}
    	}
    	addCookie(username,user.getPassword());
    	return "success";
    	}
    	req.setAttribute("register_error","没输入用户呢!");
    	return "error";
    }
    private void addCookie(String name,String user2) throws UnsupportedEncodingException{
        name = URLEncoder.encode(name,"UTF-8");
		user2 = URLEncoder.encode(user2,"UTF-8");
        Cookie cookie = new Cookie(name, user2);
        cookie.setMaxAge(60*60*24*365);
        ServletActionContext.getResponse().addCookie(cookie);
    }
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
