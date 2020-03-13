package com.itheima.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itheima.po.admin;
import com.itheima.po.grade;
import com.itheima.po.student;
import com.itheima.po.vistor;
import com.itheima.service.adminService;
@Controller
public class adminController {
	@Autowired
	private adminService adminService;
	/**
	 * 查询学生信息
	 */
	@RequestMapping("/queryStudentAll")
	public String querystudent(student student,HttpServletRequest request)throws IOException{
		List<student> list = adminService.queryStudentAll(student);
		request.getSession().setAttribute("list2", list);
		return "studentList";
		
	}
	/**
	 * 查询个人信息
	 */
	@RequestMapping("/queryadminSelf")
	public String queryadminSelf(Model model,HttpServletResponse response,HttpServletRequest request) throws IOException{
		HttpSession session =request.getSession();
		admin admin=(admin)session.getAttribute("admin");
		System.out.println(admin.getAdmin_id());
		List<admin> list = adminService.queryadminSelf(admin);
		request.getSession().setAttribute("list1", list);
	    return "Admin_personalDetail";	
	}
	/**
	 * 修改初始密码
	 */
	@RequestMapping("/modifyAdminPassword")
	public String modifyAdminPassword(admin admin_password,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException{
		int flag=adminService.modifyAdminPassword(admin_password);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(flag>0){
			out.print("<script> alert('密码修改成功！');</script>");
			out.flush();
			return "forward:queryadminSelf";
		}else{
			out.print("<script> alert('密码修改失败！');</script>");
			out.flush();
			return "Admin_personalDetail";
		}
		

	}
	/**
	 * 登陆查询用户信息
	 * @throws IOException 
	 */
	@RequestMapping("/validateUser")
	public String validateUser(admin admin,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException {
		String check=request.getParameter("check");
		String check1="admin";
		int flag=adminService.validateUser(admin);
		response.setContentType("text/html;charset=utf-8");
		request.getSession().setAttribute("admin", admin);
		PrintWriter out = response.getWriter();
		if(check.equals(check1)){
			if(flag==1){
				request.getSession().setAttribute("USER_SESSION", admin);		
			}else{
				out.print("<script> alert('账号或密码错误，请重试！');</script>");
				out.flush();
				return "login";
			     }
		}else{
			   out.print("<script> alert('账号或密码错误，请重试！');</script>");
			   out.flush();
			   return "login";
		}
				
     	    return "admin_index";	    
		//返回客户信息展示页面
	}
	/**
	 * 查询来访信息
	 * @return
	 */
	@RequestMapping("/adminSeletVistor")
	public String adminSeletVistor(vistor vistor,HttpServletRequest request)throws IOException{
		List<vistor> list = adminService.adminSeletVistor(vistor);
		request.getSession().setAttribute("list3", list);
		return "vistorList";
		
	}
	/**
	 * 查询打分信息
	 * @return
	 */
	@RequestMapping("/adminSeletGrade")
	public String adminSeletGrade(grade grade,HttpServletRequest request)throws IOException{
		List<grade> list = adminService.adminSeletGrade(grade);
		request.getSession().setAttribute("list4", list);
		return "gradeList";
	}
	/**
	 * 删除打分记录
	 * @return
	 */
	@RequestMapping("/adminDeleteGrades")
	public String adminDeleteGrades(grade deleteGrades,HttpServletRequest request)throws IOException{
		int flag=adminService.adminDeleteGrades(deleteGrades);
		if(flag>0){
			return "forward:adminSeletGrade";
		}else{
			return "gradeList";
		}
	}
	/**
	 * 添加打分记录
	 * @return
	 */
	@RequestMapping("/addGrades")
	public String addGrades(grade addGrades,Model model,HttpServletResponse response)throws IOException{
	int flag=adminService.addGrades(addGrades);
	response.setContentType("text/html;charset=utf-8");
	System.out.println(flag);
	PrintWriter out = response.getWriter();
	if(flag==1){
		out.print("<script> alert('添加成功！');</script>");
		out.flush();
	return "forward:adminSeletGrade";
	}else{
		out.print("<script> alert('添加失败！！！');</script>");
		out.flush();
		return "addGradesPage";
	}
	}
	/**
	 * 记录来访信息
	 * @return
	 */
	@RequestMapping("/addVistors")
	public String addVistors(vistor addVistors,Model model,HttpServletResponse response)throws IOException{
		int flag=adminService.addVistors(addVistors);
		response.setContentType("text/html;charset=utf-8");
		System.out.println(flag);
		PrintWriter out = response.getWriter();
		if(flag==1){
			out.print("<script> alert('添加成功！');</script>");
			out.flush();
		return "forward:adminSeletVistor";
		}else{
			out.print("<script> alert('添加失败！！！');</script>");
			out.flush();
			return "addVistorsPage";
		}
		}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/UserRegisterPage")
	public String Manage_account() {
		return "UserRegisterPage";
	}
	
	@RequestMapping("/addGradesPage")
	public String addGradesPage() {
		return "addGradesPage";
	}
	@RequestMapping("/addVistorsPage")
	public String addVistorsPage() {
		return "addVistorsPage";
	}
	@RequestMapping("/ZhouChao")
	public String ZhouChao() {
		return "ZhouChao";
	}
}
