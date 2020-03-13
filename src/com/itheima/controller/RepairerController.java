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

import com.itheima.po.Repairer;
import com.itheima.po.Repfs;

@Controller
public class RepairerController {
	@Autowired
	private com.itheima.service.RepairerService RepairerService;
	/**
	 * 维修人员登陆
	 */
	@RequestMapping("/RepairerLogin")
	public String RepairerLogin(Repairer repairer,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException{
		String check=request.getParameter("check");
		String check1="repairer";
	    int flag=RepairerService.RepairerLogin(repairer);
	    response.setContentType("text/html;charset=utf-8");
	    request.getSession().setAttribute("repairer", repairer);
	    PrintWriter out = response.getWriter();
	    if(check.equals(check1)){
			if(flag==1){
				request.getSession().setAttribute("USER_SESSION", repairer);		
			}else{
				out.print("<script> alert('账号或密码错误，请重试！');</script>");
				out.flush();
				return "Repairer_Login";
			     }
		}else{
			   out.print("<script> alert('账号或密码错误，请重试！');</script>");
			   out.flush();
			   return "Repairer_Login";
		}
		return "Repairer_index";
		}
	
/**
 * 维修人员查询个人信息
 */
	@RequestMapping("/QueryRepairerSelf")
	public String QueryRepairerSelf(Model model,HttpServletResponse response,HttpServletRequest request) throws IOException{
		HttpSession session =request.getSession();
		Repairer repairer=(Repairer)session.getAttribute("repairer");//此前为student,出现获取失败的情况；原因：登陆的方法StudentLogin把保存的信息命名为stu了（request.getSession().setAttribute("stu", stu);）
		System.out.println(repairer.getRepairer_id());
		List<Repairer> list = RepairerService.QueryRepairerSelf(repairer);
		request.getSession().setAttribute("list1", list);
	    return "Repairer_personalDetail";	
	}
	/**
	 * 修改初始密码
	 * @return
	 */

	@RequestMapping("/ModifyRepairerPassword")
	public String ModifyRepairerPassword(Repairer repairer_password,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException{
		int flag=RepairerService.ModifyRepairerPassword(repairer_password);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		System.out.println(repairer_password);
		if(flag>0){
			out.print("<script> alert('密码修改成功！');</script>");
			out.flush();
			return "forward:QueryRepairerSelf";
		}else{
			out.print("<script> alert('密码修改失败！');</script>");
			out.flush();
			return "Repairer_personalDetail";
		}
		

	}	
	/**
	 * 查看故障信息
	 * @return
	 */
	@RequestMapping("/RepfWorks")
	public String RepfWorks(Repfs repfs,HttpServletRequest request)throws IOException{
		List<Repfs> list=RepairerService.RepfWorks(repfs);
		request.getSession().setAttribute("list3", list);
		return "RepairerWorks";
		
	}
	/**
	 * 故障信息接受
	 * @return
	 */
@RequestMapping("/RepfWorksOp")
public String RepfWorksOp(Repfs repf_id,HttpServletResponse response,HttpServletRequest request)throws IOException{
	int flag=RepairerService.RepfWorksOp(repf_id);
	if(flag>0){
		return "forward:RepfWorks";
	}else{
		return "RepairerWorks";
	}
}
	@RequestMapping("/Repairer_Login")
	public String Repairer_Login(){
		return "Repairer_Login";
		
	}
}
