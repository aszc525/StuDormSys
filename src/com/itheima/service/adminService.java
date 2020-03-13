package com.itheima.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itheima.po.admin;
import com.itheima.po.grade;
import com.itheima.po.student;
import com.itheima.po.vistor;
@Service
public interface adminService {
	public int validateUser(admin admin);//登录
	public List<admin> queryadminSelf(admin admin_id);
	public int modifyAdminPassword(admin admin_password);
	public List<student> queryStudentAll(student student);
	public List<vistor> adminSeletVistor(vistor vistor);
	public List<grade> adminSeletGrade(grade grade);
	public int adminDeleteGrades(grade deleteGrades);
	public int addGrades(grade addGrades);
	public int addVistors(vistor addvitors);
	public int reviseUser(admin admin);
}
