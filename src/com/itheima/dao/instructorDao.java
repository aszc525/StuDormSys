package com.itheima.dao;

import java.util.List;

import com.itheima.po.instructor;
public interface instructorDao {
		public instructor validateUser1(instructor instructor);
		public List<instructor> queryInstructorSelf(instructor ins_id);
		public int modifyInstructorPassword(instructor ins_password);
}
