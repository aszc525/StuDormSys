package com.itheima.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itheima.po.Repfs;
import com.itheima.po.grade;
import com.itheima.po.student;
@Service
public interface StudentService{
    public int Student_Login(student stu);
    public List<student> QueryStudentSelf(student stu_id);
    public int ModifyStudentPassword(student stu_password);
    public List<grade> StudentSelectGrades(grade grade);
    public int AddRepairers(Repfs repfs);
    public List<Repfs> SeletRepf(Repfs repfs);
}
