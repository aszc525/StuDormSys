package com.itheima.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.dao.adminDao;
import com.itheima.po.admin;
import com.itheima.po.grade;
import com.itheima.po.student;
import com.itheima.po.vistor;
import com.itheima.service.adminService;
@Service
@Transactional
public class adminServiceImpl implements adminService {
	//注解注入adminDao
	@Autowired
	private  adminDao adminDao;
	@Override
	public int validateUser(admin admin) {
		// TODO Auto-generated method stub
		int flag=0;
		if(this.adminDao.validateUser(admin)!=null){
			flag=1;
		}
		return flag;
	}
	@Override
	public int reviseUser(admin admin) {
		// TODO Auto-generated method stub
		return adminDao.reviseUser(admin);
	}
	@Override
	/**
	 * 查询个人信息
	 */
	public List<admin> queryadminSelf(admin admin_id) {
		return this.adminDao.queryadminSelf(admin_id);
	}
	@Override
	/**
	 * 查询学生信息
	 */
	public List<student> queryStudentAll(student student) {
		// TODO Auto-generated method stub
		return adminDao.queryStudentAll(student);
	}
	@Override
	/**
	 * 查询来访信息
	 */
	public List<vistor> adminSeletVistor(vistor vistor) {
		// TODO Auto-generated method stub
		return adminDao.adminSeletVistor(vistor);
	}
	@Override
	/**
	 * 查询打分信息
	 */
	public List<grade> adminSeletGrade(grade grade) {
		// TODO Auto-generated method stub
		return adminDao.adminSeletGrade(grade);
	}
	@Override
	/**
	 * 添加打分信息
	 */
	public int addGrades(grade addGrades) {
		// TODO Auto-generated method stub
		return adminDao.addGrades(addGrades);
	}
	@Override
	public int addVistors(vistor addvitors) {
		// TODO Auto-generated method stub
		return adminDao.addVistors(addvitors);
	}
	@Override
	public int adminDeleteGrades(grade deleteGrades) {
		// TODO Auto-generated method stub
		return adminDao.adminDeleteGrades(deleteGrades);
	}
	@Override
	public int modifyAdminPassword(admin admin_password) {
		// TODO Auto-generated method stub
		return adminDao.modifyAdminPassword(admin_password);
	}
}
