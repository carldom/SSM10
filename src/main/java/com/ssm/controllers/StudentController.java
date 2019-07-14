package com.ssm.controllers;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.beans.Student;
import com.ssm.service.StudentService;

@Controller
@RequestMapping("stu")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("students")
	@ResponseBody
	public List<Student> getStudents(){
		List<Student> students = studentService.queryStudents();
		if(students==null) {
			students=new ArrayList<Student>();
		}
		
		return students;
	}

}
