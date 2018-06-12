package com.hzit.thymeleaf.controller;

import java.util.List;

import com.hzit.thymeleaf.bean.Dept;
import com.hzit.thymeleaf.service.IDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/*部门信息表*/

@Controller
public class DeptController {

	@Autowired
	private IDeptService deptService;

	@RequestMapping("/test")
	@ResponseBody
	public Object test() {
		List<Dept> list = deptService.findDeptList();
		return list;
	}

}
