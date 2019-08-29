package com.stu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stu.service.StuService;
import com.stu.vo.Student;

@Controller
public class StuController {
	@Autowired
	public StuService stuService;
	@RequestMapping("/Allstudent")
	public ModelAndView getAllStudents() {
		List<Student>list=stuService.getAllStudents();
		ModelAndView  model=new ModelAndView();
		model.addObject("lists", list);
		model.setViewName("list");
		return model;
		
	}

}
