package com.stu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stu.dao.StuMapper;
import com.stu.vo.Student;
@Service
public class StuServiceImp implements StuService{
	@Autowired
	public StuMapper mapper;
	
	@Override
	public List<Student> getAllStudents() {
		return mapper.getAll();
	}
	
	

}
