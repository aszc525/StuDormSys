package com.itheima.dao;

import java.util.List;
import com.itheima.po.admin;
import com.itheima.po.grade;
import com.itheima.po.student;
import com.itheima.po.vistor;

/**
 * User接口文件
 */

public interface adminDao {
	public admin validateUser(admin admin);
	public List<admin> queryadminSelf(admin admin_id);
	public int modifyAdminPassword(admin admin_password);
	public List<student> queryStudentAll(student student);
	public List<vistor> adminSeletVistor(vistor vistor);
	public List<grade> adminSeletGrade(grade grade);
	public int adminDeleteGrades(grade deleteGrades);
	public int addGrades(grade addgrades);
	public int addVistors(vistor addvitors);
	public int deleteUser(admin admin);
	public int reviseUser(admin admin);
}
