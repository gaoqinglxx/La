package com.gxa.controller.pratice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gxa.model.pratice.Student;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	/*@Autowired
	private StudentService studentService;*/
	
	@RequestMapping("/addStudent")
	@ResponseBody
	public Student addStudent(Student s){
		System.out.println("s==="+s);
		return s;
	}
}
