package com.itheima.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.itheima.po.instructor;
@Service
public interface instructorService {
	public int validateUser1(instructor instructor);
	public List<instructor> queryInstructorSelf(instructor ins_id);
	public int modifyInstructorPassword(instructor ins_password);
}
