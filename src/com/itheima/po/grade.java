package com.itheima.po;

public class grade {
private String grade_id;
private String grade_dorm;
private String grade_absent;
private String grade_weiji;
private String grade_weisheng;
private String grade_time;
private String grade_grade1;
public String getGrade_id() {
	return grade_id;
}
public void setGrade_id(String grade_id) {
	this.grade_id = grade_id;
}
public String getGrade_dorm() {
	return grade_dorm;
}
public void setGrade_dorm(String grade_dorm) {
	this.grade_dorm = grade_dorm;
}
public String getGrade_absent() {
	return grade_absent;
}
public void setGrade_absent(String grade_absent) {
	this.grade_absent = grade_absent;
}
public String getGrade_weiji() {
	return grade_weiji;
}
public void setGrade_weiji(String grade_weiji) {
	this.grade_weiji = grade_weiji;
}
public String getGrade_weisheng() {
	return grade_weisheng;
}
public void setGrade_weisheng(String grade_weisheng) {
	this.grade_weisheng = grade_weisheng;
}
public String getGrade_time() {
	return grade_time;
}
public void setGrade_time(String grade_time) {
	this.grade_time = grade_time;
}
public String getGrade_grade1() {
	return grade_grade1;
}
public void setGrade_grade1(String grade_grade1) {
	this.grade_grade1 = grade_grade1;
}

@Override
public String toString() {
	return "grade [grade_id=" + grade_id + ", grade_dorm=" + grade_dorm
			+ ", grade_absent=" + grade_absent + ", grade_weiji=" + grade_weiji
			+ ", grade_weisheng=" + grade_weisheng + ", grade_time="
			+ grade_time + ", grade_grade1=" + grade_grade1 + "]";
}

	
}
