package com.hzit.thymeleaf.service.impl;

import java.util.List;

import com.hzit.thymeleaf.bean.Dept;
import com.hzit.thymeleaf.mapper.DeptDao;
import com.hzit.thymeleaf.service.IDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class DeptServiceImpl implements IDeptService {

	@Autowired
	private DeptDao deptDao;

	@Override
	public List<Dept> findDeptList() {
		List<Dept> list = deptDao.findDeptList();
		return list;
	}

}
