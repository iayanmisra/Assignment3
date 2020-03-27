package com.cognizant.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cognizant.model.Student;
import com.cognizant.service.StudentServiceImpl;

@Controller
public class StudentController 
{
	@Autowired
	private StudentServiceImpl studentService;

	public void setStudentService(StudentServiceImpl studentService) {
		this.studentService = studentService;
	}
	
	@RequestMapping(value="insert",method = RequestMethod.GET)
	public String insertPage()
	{
		return "insert";
	}
	
	@RequestMapping(value = "insert",method = RequestMethod.POST)
	public String insert(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		Student s=new Student(id,name);
		System.out.println(s);
		request.setAttribute("msg", studentService.insert(s));
		return "insert";
	}
	
	@RequestMapping(value="update",method = RequestMethod.GET)
	public String updatePage()
	{
		return "update";
	}
	
	@RequestMapping(value = "update",method = RequestMethod.POST)
	public String update(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		Student s=new Student(id,name);
		System.out.println(s);
		request.setAttribute("msg", studentService.update(s));
		return "update";
	}
	@RequestMapping(value="delete",method = RequestMethod.GET)
	public String deletePage()
	{
		return "delete";
	}
	
	@RequestMapping(value = "delete",method = RequestMethod.POST)
	public String delete(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		Student s=new Student(id,null);
		System.out.println(s);
		request.setAttribute("msg",studentService.delete(s) );
		return "delete";
	}
	
	@RequestMapping(value = "getAll", method = RequestMethod.GET)
	public String getAll(HttpServletRequest request) {
		List<Student> list = studentService.getAll();
		System.out.println(list);
		request.setAttribute("list",list);
		return "getAll";
	}
}
