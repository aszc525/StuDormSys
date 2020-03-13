package com.itheima.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.dao.instructorDao;
import com.itheima.po.instructor;
import com.itheima.service.instructorService;
@Service
@Transactional
public class instructorServiceImpl implements instructorService {
	@Autowired
	private  instructorDao instructorDao;
	@Override
	//辅导员登录
	public int validateUser1(instructor instructor) {
		// TODO Auto-generated method stub
		int flag=0;
		if(this.instructorDao.validateUser1(instructor)!=null){
			flag=1;
		}
		return flag;
	}
	@Override
	public List<instructor> queryInstructorSelf(instructor ins_id) {
		// TODO Auto-generated method stub
		return this.instructorDao.queryInstructorSelf(ins_id);
	}
	@Override
	public int modifyInstructorPassword(instructor ins_password) {
		// TODO Auto-generated method stub
		return this.instructorDao.modifyInstructorPassword(ins_password);
	}
}
