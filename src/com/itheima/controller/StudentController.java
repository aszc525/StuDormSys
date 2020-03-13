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
import org.springframework.web.multipart.MultipartFile;

import com.itheima.common.ImageUtils;
import com.itheima.po.Repfs;
import com.itheima.po.grade;
import com.itheima.po.student;
@Controller
public class StudentController {
	@Autowired
	private com.itheima.service.StudentService StudentService;
/**
 * 学生登陆
 */
@RequestMapping("/StudentLogin")
public String StudentLogin(student stu,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException{
	String check=request.getParameter("check");
	String check1="student";
    int flag=StudentService.Student_Login(stu);
    response.setContentType("text/html;charset=utf-8");
    request.getSession().setAttribute("stu", stu);
    PrintWriter out = response.getWriter();
    if(check.equals(check1)){
		if(flag==1){
			request.getSession().setAttribute("USER_SESSION", stu);		
		}else{
			out.print("<script> alert('账号或密码错误，请重试！');</script>");
			out.flush();
			return "Student_Login";
		     }
	}else{
		   out.print("<script> alert('账号或密码错误，请重试！');</script>");
		   out.flush();
		   return "Student_Login";
	}
	return "Student_index";
	}
/**
 * 学生查看个人信息
 * @return
 */
@RequestMapping("/QueryStudentSelf")
public String QueryStudentSelf(Model model,HttpServletResponse response,HttpServletRequest request) throws IOException{
	HttpSession session =request.getSession();
	student student=(student)session.getAttribute("stu");//此前为student,出现获取失败的情况；原因：登陆的方法StudentLogin把保存的信息命名为stu了（request.getSession().setAttribute("stu", stu);）
	System.out.println(student.getStu_id());
	List<student> list = StudentService.QueryStudentSelf(student);
	request.getSession().setAttribute("list1", list);
    return "Student_personalDetail";	
}
/**
 * 学生修改初始密码
 * @return
 */
@RequestMapping("/ModifyStudentPassword")
public String ModifyStudentPassword(student stu_password,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException{
	int flag=StudentService.ModifyStudentPassword(stu_password);
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out = response.getWriter();
	System.out.println(stu_password);
	if(flag>0){
		out.print("<script> alert('密码修改成功！');</script>");
		out.flush();
		return "forward:QueryStudentSelf";
	}else{
		out.print("<script> alert('密码修改失败！');</script>");
		out.flush();
		return "Student_personalDetail";
	}
	

}
/**
 * 学生查询扣分信息
 * @return
 */
@RequestMapping("/StudentSelectGrades")
public String StudentSelectGrades(grade grade,Model model,HttpServletRequest request,HttpServletResponse response)throws IOException{
	List<grade> list = StudentService.StudentSelectGrades(grade);
	request.getSession().setAttribute("Deduction", list);
	System.out.println(list.get(0));
	return "StudentSelectGrade";
	
}
/**
 * 学生申报故障信息
 * @return
 */
@RequestMapping("/AddRepairers")
public String AddRepairers(Repfs repfs,HttpServletRequest request,MultipartFile thing)throws IOException{
	String files;
	try {
        //ImageUtils为之前添加的工具类
		files = ImageUtils.upload(request, thing);
		if (thing != null) {
			// 将上传图片的地址封装到实体类
			
         repfs.setRepf_thing(files);
         request.setAttribute("file", repfs);
			System.out.println("-----------------图片上传成功！");
		}else{
            System.out.println("-----------------图片上传失败！");
        }
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println("----------------图片上传失败！");
	}
	//将数据提交到数据库（包含文件和普通表单数据）
	int rowNo = StudentService.AddRepairers(repfs);
	if (rowNo > 0) {
		System.out.println("----------------------用户添加成功！");
		// 转发：forword，重定向：redirect
		return "StudentAddRepairerInfo";
	} else {
		System.out.println("----------------------用户添加失败！");
		return "StudentAddRepairerInfo";
	}

}
/**
 * 学生查看故障信息
 * @return
 */
@RequestMapping("/SeletRepf")
public String SeletRepf(Repfs repfs,HttpServletRequest request)throws IOException{
	List<Repfs> list=StudentService.SeletRepf(repfs);
	request.getSession().setAttribute("list3", list);
	return "SelectRepfs";
	
}
/**
 * 学生查询水费电费余额
 * @return
 */
/**
 * 学生充值电费水费
 * @return
 */
@RequestMapping("/Student_Login")
public String Student_Login(){
	return "Student_Login";
	
}
@RequestMapping("/StudentSelectGrade")
public String StudentSelectGrade(){
	return "StudentSelectGrade";
}
@RequestMapping("/StudentAddRepairerInfo")
	public String StudentAddRepairerInfo(){
		return "StudentAddRepairerInfo";

}
}
