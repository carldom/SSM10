package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.beans.Student;
import com.ssm.dao.StudentDao;
import com.ssm.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;
	
	public List<Student> queryStudents() {
		List<Student> list = studentDao.queryStudents();
			
		return list;
	}

}
