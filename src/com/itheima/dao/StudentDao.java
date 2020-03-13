package com.itheima.dao;

import java.util.List;


import com.itheima.po.Repfs;
import com.itheima.po.grade;
import com.itheima.po.student;

public interface StudentDao {
      public  student Student_Login(student stu);
      public List<student> QueryStudentSelf(student stu_id);
      public int ModifyStudentPassword(student stu_password);
      public List<grade> StudentSelectGrades(grade grade);
      public int AddRepairers(Repfs repfs);
      public List<Repfs> SeletRepf(Repfs repfs);
}
