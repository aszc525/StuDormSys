package com.itheima.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.dao.RepairerDao;
import com.itheima.po.Repairer;
import com.itheima.po.Repfs;
import com.itheima.service.RepairerService;
@Service
@Transactional
public class RepairerServiceImpl implements RepairerService{
	@Autowired
	private RepairerDao RepairerDao;

/*
 * 维修人员登陆
 * 
 */
@Override
public int RepairerLogin(Repairer repairer) {
	// TODO Auto-generated method stub
	int flag=0;
	if(this.RepairerDao.RepairerLogin(repairer)!=null){
		flag=1;
	}
	return flag;
}

@Override
public List<Repairer> QueryRepairerSelf(Repairer repairer_id) {
	// TODO Auto-generated method stub
	return this.RepairerDao.QueryRepairerSelf(repairer_id);
}

@Override
public int ModifyRepairerPassword(Repairer repairer_password) {
	// TODO Auto-generated method stub
	return this.RepairerDao.ModifyRepairerPassword(repairer_password);
}

@Override
public List<Repfs> RepfWorks(Repfs repfs) {
	// TODO Auto-generated method stub
	return this.RepairerDao.RepfWorks(repfs);
}

@Override
public int RepfWorksOp(Repfs repf_id) {
	// TODO Auto-generated method stub
	return this.RepairerDao.RepfWorksOp(repf_id);

}
}