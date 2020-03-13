package com.itheima.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.dao.StudentDao;
import com.itheima.po.Repfs;
import com.itheima.po.grade;
import com.itheima.po.student;
import com.itheima.service.StudentService;
@Service
@Transactional
public class StudentServiceImpl implements StudentService{
	@Autowired
	private StudentDao studentDao;
	@Override
	public int Student_Login(student stu) {
		// TODO Auto-generated method stub
		int flag=0;
		if(this.studentDao.Student_Login(stu)!=null){
			flag=1;
		}
		return flag;
	}
	@Override
	public List<student> QueryStudentSelf(student stu_id) {
		// TODO Auto-generated method stub
		return this.studentDao.QueryStudentSelf(stu_id);
	}
	@Override
	public int ModifyStudentPassword(student stu_password) {
		// TODO Auto-generated method stub
		return this.studentDao.ModifyStudentPassword(stu_password);
	}
	@Override
	public List<grade> StudentSelectGrades(grade grade) {
		// TODO Auto-generated method stub
		return this.studentDao.StudentSelectGrades(grade);
	}
	@Override
	public int AddRepairers(Repfs repfs) {
		// TODO Auto-generated method stub
		
		return this.studentDao.AddRepairers(repfs);
	}
	@Override
	public List<Repfs> SeletRepf(Repfs repfs) {
		// TODO Auto-generated method stub
		return this.studentDao.SeletRepf(repfs);
	}
 
}
