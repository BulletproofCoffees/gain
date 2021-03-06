package com.test.vo;

import java.util.Date;
import java.util.Map;

import org.hibernate.validator.constraints.Email;

 
public class MemberArryVo {
	
	
	
	public String[] mem_no;  /*회원 넘버 */
	
	/* 회원 */

	public String[] mem_name; /* 성명*/
	

	public String[] mem_grade; /* 직위*/
	
	public String[] mem_depart; /* 부서*/
	
	public String[] mem_comp; /* 소속회사*/
	
	public String[] mem_indate; /* 입사일 */
	
	
	/* 회원정보 */	
	public String[] pri_serial;       /* 주민번호*/
	
	public String[] pri_marriage;     /* 결혼*/
		
	public String[] pri_tel,pri_phone;     /* 전화*//* 무선전화*/
	
	@Email(message="이메일 형식이 아닙니다.")
	public String[] pri_email;        /* 이메일*/
	
	public String[] pri_addr;         /* 주소*/
	public String[] pri_gender;       /* 성별*/
	
	
	/*병역*/
	public String[] mil_no;           /*병역넘버*/
	public String[] mil_yn;           /*병역여부*/
	
	public String[] mil_startday;     /*입대일*/
	public String[] mil_endday;       /*제대일*/
	public String[] mil_category;     /*병과*/
	
	/*학력  */
	public String[] sch_no;           /*학력넘버*/
	public String[] sch_grade;        /*학교등급*/
	public String[] sch_name;         /*학교이름*/
	public String[] sch_major;        /*학과명*/
	public String[] sch_startday;     /*입학일*/
	public String[] sch_endday;       /*졸업일*/
	public String[] sch_status;       /*상태*/
	
	/*교육  */
	public String[] edu_no;           /*교육넘버*/
	public String[] edu_name;         /*교육명*/
	public String[] edu_startday;     /*시작일*/
	public String[] edu_endday;       /*종료일*/
	public String[] edu_school;       /*기관명*/
	
	/*프로잭*/
	public String[] pj_no;             /*프로젝트넘버*/
	public String[] pj_startday;       /*시작일*/
	public String[] pj_endday;         /*종료일*/
	public String[] pj_custom;         /*고객사*/
	public String[] pj_comp;           /*금무회사*/
	public String[] pj_dev_ind;        /*개발분야 산업*/
	public String[] pj_dev_app;        /*개발분야 응용*/
	public String[] pj_part;           /*역할*/
	public String[] pj_device;         /*기종*/
	public String[] pj_os;             /*os*/
	public String[] pj_lang;           /*언어*/
	public String[] pj_db;             /*DBMS*/
	public String[] pj_tool;           /*TOOL*/
	public String[] pj_comm;           /*통신*/  
	public String[] pj_etc;            /*기타*/  
	public String[] pj_name;           /*프로젝트*/
	                                 
	/* 보유기술 */                   
	public String[] ski_no;            /**/
	public String[] ski_name;          /**/
	public String[] ski_grade;         /**/
	                                 /**/
	/* 자격증 */                     
	public String[] cer_no;            /**/
	public String[] cer_name;          /**/
	public String[] cer_day;           /**/
	                                 /**/
	/* 경력 */                       
	public String[] car_no;            /*경력넘버*/
	public String[] car_startday;      /*시작일*/
	public String[] car_endday;        /*종료일*/
	public String[] car_job;           /*담당*/
	public String[] car_pos;           /*직위*/
	public String[] car_name;          /*회사명*/
	
	
	
	/*
	 * public void setMemberVo(Map<Object, String[]> map) { this.mem_no =
	 * map.get("mem_no"); this.mem_name = map.get("mem_name"); this.mem_grade =
	 * map.get("mem_grade"); this.mem_depart = map.get("mem_depart"); this.mem_comp
	 * = map.get("mem_comp"); this.mem_indate = map.get("mem_indate");
	 * this.pri_serial = map.get("pri_serial"); this.pri_marriage =
	 * map.get("pri_marriage"); this.pri_tel = map.get("pri_tel"); this.pri_phone =
	 * map.get("pri_phone"); this.mil_no = map.get("mil_no"); this.mil_yn =
	 * map.get("mil_yn"); this.mil_startday = map.get("mil_startday");
	 * this.mil_endday = map.get("mil_endday"); this.mil_category =
	 * map.get("mil_category");
	 * 
	 * this.pj_no = map.get("pj_no"); this.pj_startday = map.get("pj_startday");
	 * this.pj_endday = map.get("pj_endday"); this.pj_custom = map.get("pj_custom");
	 * this.pj_comp = map.get("pj_comp"); this.pj_dev_ind = map.get("pj_dev_ind");
	 * this.pj_dev_app = map.get("pj_dev_app"); this.pj_part = map.get("pj_part");
	 * this.pj_device = map.get("pj_device"); this.pj_os = map.get("pj_os");
	 * this.pj_lang = map.get("pj_lang"); this.pj_db = map.get("pj_db");
	 * this.pj_tool = map.get("pj_tool"); this.pj_comm = map.get("pj_comm");
	 * this.pj_etc = map.get("pj_etc"); this.pj_name = map.get("pj_name");
	 * 
	 * this.sch_no = map.get("sch_no"); this.sch_grade = map.get("sch_grade");
	 * this.sch_name = map.get("sch_name"); this.sch_major = map.get("sch_major");
	 * this.sch_startday = map.get("sch_startday"); this.sch_endday =
	 * map.get("sch_endday"); this.sch_status = map.get("sch_status");
	 * 
	 * this.edu_no = map.get("edu_no"); this.edu_name = map.get("edu_name");
	 * this.edu_startday = map.get("edu_startday"); this.edu_endday =
	 * map.get("edu_endday"); this.edu_school = map.get("edu_school");
	 * 
	 * this.ski_no = map.get("ski_no"); this.ski_name = map.get("ski_name");
	 * this.ski_grade = map.get("ski_grade");
	 * 
	 * this.cer_no = map.get("cer_no"); this.cer_name = map.get("cer_name");
	 * this.cer_day = map.get("cer_day");
	 * 
	 * this.car_no = map.get("car_no"); this.car_startday = map.get("car_startday");
	 * this.car_endday = map.get("car_endday"); this.car_job = map.get("car_job");
	 * this.car_pos = map.get("car_pos"); this.car_name = map.get("car_name"); }
	 */
	
	
	
	
	public String[] getMem_no() {
		return mem_no;
	}
	public void setMem_no(String[] mem_no) {
		this.mem_no = mem_no;
	}
	public String[] getMem_name() {
		return mem_name;
	}
	public void setMem_name(String[] mem_name) {
		this.mem_name = mem_name;
	}
	public String[] getMem_grade() {
		return mem_grade;
	}
	public void setMem_grade(String[] mem_grade) {
		this.mem_grade = mem_grade;
	}
	public String[] getMem_depart() {
		return mem_depart;
	}
	public void setMem_depart(String[] mem_depart) {
		this.mem_depart = mem_depart;
	}
	public String[] getMem_comp() {
		return mem_comp;
	}
	public void setMem_comp(String[] mem_comp) {
		this.mem_comp = mem_comp;
	}
	public String[] getMem_indate() {
		return mem_indate;
	}
	public void setMem_indate(String[] mem_indate) {
		this.mem_indate = mem_indate;
	}
	public String[] getPri_serial() {
		return pri_serial;
	}
	public void setPri_serial(String[] pri_serial) {
		this.pri_serial = pri_serial;
	}
	public String[] getPri_marriage() {
		return pri_marriage;
	}
	public void setPri_marriage(String[] pri_marriage) {
		this.pri_marriage = pri_marriage;
	}
	public String[] getPri_tel() {
		return pri_tel;
	}
	public void setPri_tel(String[] pri_tel) {
		this.pri_tel = pri_tel;
	}
	public String[] getPri_phone() {
		return pri_phone;
	}
	public void setPri_phone(String[] pri_phone) {
		this.pri_phone = pri_phone;
	}
	public String[] getPri_email() {
		return pri_email;
	}
	public void setPri_email(String[] pri_email) {
		this.pri_email = pri_email;
	}
	public String[] getPri_addr() {
		return pri_addr;
	}
	public void setPri_addr(String[] pri_addr) {
		this.pri_addr = pri_addr;
	}
	public String[] getPri_gender() {
		return pri_gender;
	}
	public void setPri_gender(String[] pri_gender) {
		this.pri_gender = pri_gender;
	}
	public String[] getMil_no() {
		return mil_no;
	}
	public void setMil_no(String[] mil_no) {
		this.mil_no = mil_no;
	}
	public String[] getMil_yn() {
		return mil_yn;
	}
	public void setMil_yn(String[] mil_yn) {
		this.mil_yn = mil_yn;
	}
	public String[] getMil_startday() {
		return mil_startday;
	}
	public void setMil_startday(String[] mil_startday) {
		this.mil_startday = mil_startday;
	}
	public String[] getMil_endday() {
		return mil_endday;
	}
	public void setMil_endday(String[] mil_endday) {
		this.mil_endday = mil_endday;
	}
	public String[] getMil_category() {
		return mil_category;
	}
	public void setMil_category(String[] mil_category) {
		this.mil_category = mil_category;
	}
	public String[] getSch_no() {
		return sch_no;
	}
	public void setSch_no(String[] sch_no) {
		this.sch_no = sch_no;
	}
	public String[] getSch_grade() {
		return sch_grade;
	}
	public void setSch_grade(String[] sch_grade) {
		this.sch_grade = sch_grade;
	}
	public String[] getSch_name() {
		return sch_name;
	}
	public void setSch_name(String[] sch_name) {
		this.sch_name = sch_name;
	}
	public String[] getSch_major() {
		return sch_major;
	}
	public void setSch_major(String[] sch_major) {
		this.sch_major = sch_major;
	}
	public String[] getSch_startday() {
		return sch_startday;
	}
	public void setSch_startday(String[] sch_startday) {
		this.sch_startday = sch_startday;
	}
	public String[] getSch_endday() {
		return sch_endday;
	}
	public void setSch_endday(String[] sch_endday) {
		this.sch_endday = sch_endday;
	}
	public String[] getSch_status() {
		return sch_status;
	}
	public void setSch_status(String[] sch_status) {
		this.sch_status = sch_status;
	}
	public String[] getEdu_no() {
		return edu_no;
	}
	public void setEdu_no(String[] edu_no) {
		this.edu_no = edu_no;
	}
	public String[] getEdu_name() {
		return edu_name;
	}
	public void setEdu_name(String[] edu_name) {
		this.edu_name = edu_name;
	}
	public String[] getEdu_startday() {
		return edu_startday;
	}
	public void setEdu_startday(String[] edu_startday) {
		this.edu_startday = edu_startday;
	}
	public String[] getEdu_endday() {
		return edu_endday;
	}
	public void setEdu_endday(String[] edu_endday) {
		this.edu_endday = edu_endday;
	}
	public String[] getEdu_school() {
		return edu_school;
	}
	public void setEdu_school(String[] edu_school) {
		this.edu_school = edu_school;
	}
	public String[] getPj_no() {
		return pj_no;
	}
	public void setPj_no(String[] pj_no) {
		this.pj_no = pj_no;
	}
	public String[] getPj_startday() {
		return pj_startday;
	}
	public void setPj_startday(String[] pj_startday) {
		this.pj_startday = pj_startday;
	}
	public String[] getPj_endday() {
		return pj_endday;
	}
	public void setPj_endday(String[] pj_endday) {
		this.pj_endday = pj_endday;
	}
	public String[] getPj_custom() {
		return pj_custom;
	}
	public void setPj_custom(String[] pj_custom) {
		this.pj_custom = pj_custom;
	}
	public String[] getPj_comp() {
		return pj_comp;
	}
	public void setPj_comp(String[] pj_comp) {
		this.pj_comp = pj_comp;
	}
	public String[] getPj_dev_ind() {
		return pj_dev_ind;
	}
	public void setPj_dev_ind(String[] pj_dev_ind) {
		this.pj_dev_ind = pj_dev_ind;
	}
	public String[] getPj_dev_app() {
		return pj_dev_app;
	}
	public void setPj_dev_app(String[] pj_dev_app) {
		this.pj_dev_app = pj_dev_app;
	}
	public String[] getPj_part() {
		return pj_part;
	}
	public void setPj_part(String[] pj_part) {
		this.pj_part = pj_part;
	}
	public String[] getPj_device() {
		return pj_device;
	}
	public void setPj_device(String[] pj_device) {
		this.pj_device = pj_device;
	}
	public String[] getPj_os() {
		return pj_os;
	}
	public void setPj_os(String[] pj_os) {
		this.pj_os = pj_os;
	}
	public String[] getPj_lang() {
		return pj_lang;
	}
	public void setPj_lang(String[] pj_lang) {
		this.pj_lang = pj_lang;
	}
	public String[] getPj_db() {
		return pj_db;
	}
	public void setPj_db(String[] pj_db) {
		this.pj_db = pj_db;
	}
	public String[] getPj_tool() {
		return pj_tool;
	}
	public void setPj_tool(String[] pj_tool) {
		this.pj_tool = pj_tool;
	}
	public String[] getPj_comm() {
		return pj_comm;
	}
	public void setPj_comm(String[] pj_comm) {
		this.pj_comm = pj_comm;
	}
	public String[] getPj_etc() {
		return pj_etc;
	}
	public void setPj_etc(String[] pj_etc) {
		this.pj_etc = pj_etc;
	}
	public String[] getPj_name() {
		return pj_name;
	}
	public void setPj_name(String[] pj_name) {
		this.pj_name = pj_name;
	}
	public String[] getSki_no() {
		return ski_no;
	}
	public void setSki_no(String[] ski_no) {
		this.ski_no = ski_no;
	}
	public String[] getSki_name() {
		return ski_name;
	}
	public void setSki_name(String[] ski_name) {
		this.ski_name = ski_name;
	}
	public String[] getSki_grade() {
		return ski_grade;
	}
	public void setSki_grade(String[] ski_grade) {
		this.ski_grade = ski_grade;
	}
	public String[] getCer_no() {
		return cer_no;
	}
	public void setCer_no(String[] cer_no) {
		this.cer_no = cer_no;
	}
	public String[] getCer_name() {
		return cer_name;
	}
	public void setCer_name(String[] cer_name) {
		this.cer_name = cer_name;
	}
	public String[] getCer_day() {
		return cer_day;
	}
	public void setCer_day(String[] cer_day) {
		this.cer_day = cer_day;
	}
	public String[] getCar_no() {
		return car_no;
	}
	public void setCar_no(String[] car_no) {
		this.car_no = car_no;
	}
	public String[] getCar_startday() {
		return car_startday;
	}
	public void setCar_startday(String[] car_startday) {
		this.car_startday = car_startday;
	}
	public String[] getCar_endday() {
		return car_endday;
	}
	public void setCar_endday(String[] car_endday) {
		this.car_endday = car_endday;
	}
	public String[] getCar_job() {
		return car_job;
	}
	public void setCar_job(String[] car_job) {
		this.car_job = car_job;
	}
	public String[] getCar_pos() {
		return car_pos;
	}
	public void setCar_pos(String[] car_pos) {
		this.car_pos = car_pos;
	}
	public String[] getCar_name() {
		return car_name;
	}
	public void setCar_name(String[] car_name) {
		this.car_name = car_name;
	}

	
	
	

}