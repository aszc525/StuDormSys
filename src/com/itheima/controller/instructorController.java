package com.itheima.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itheima.service.instructorService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itheima.po.instructor;
@Controller
public class instructorController {
	@Autowired
	private instructorService instructorService;
	/**
	 * 登陆查询用户信息
	 * @throws IOException 
	 */
	@RequestMapping("/validateUser1")
	public String validateUser1(instructor instructor,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException {
		String check=request.getParameter("check");
		String check1="instructor";
		int flag=instructorService.validateUser1(instructor);
		response.setContentType("text/html;charset=utf-8");
		request.getSession().setAttribute("instructor", instructor);
		PrintWriter out = response.getWriter();
		if(check.equals(check1)){
			if(flag==1){
				request.getSession().setAttribute("USER_SESSION", instructor);		
			}else{
				out.print("<script> alert('账号或密码错误，请重试！');</script>");
				out.flush();
				return "instructorlogin";
			     }
		}else{
			   out.print("<script> alert('账号或密码错误，请重试！');</script>");
			   out.flush();
			   return "instructorlogin";
		}
				
     	    return "instructor_index";	    
		//返回客户信息展示页面
	}
//辅导员查看个人信息
	@RequestMapping("/queryInstructorSelf")
	public String queryInstructorSelf(Model model,HttpServletResponse response,HttpServletRequest request) throws IOException{
		HttpSession session =request.getSession();
		instructor instructor=(instructor)session.getAttribute("instructor");
		List<instructor> list=instructorService.queryInstructorSelf(instructor);
		request.getSession().setAttribute("list5", list);
		System.out.println(instructor.getIns_id());
		return "Instructor_personalDetail";
		
		
	}
//辅导员修改密码
	@RequestMapping("/modifyInstructorPassword")
	public String modifyInstructorPassword(instructor ins_password,Model model,HttpServletResponse response,HttpServletRequest request)throws IOException{
		int flag=instructorService.modifyInstructorPassword(ins_password);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(flag>0){
			out.print("<script> alert('密码修改成功！');</script>");
			out.flush();
			return "forward:queryadminSelf";
		}else{
			out.print("<script> alert('密码修改失败！');</script>");
			out.flush();
		}
		return "Instructor_personalDetail";

	}
	
	
	@RequestMapping("/instructorlogin")
	public String instructorlogin() {
		return "instructorlogin";
	}
	

}
