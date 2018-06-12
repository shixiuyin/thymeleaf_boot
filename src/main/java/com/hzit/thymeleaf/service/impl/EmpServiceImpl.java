package com.hzit.thymeleaf.service.impl;

import java.util.List;
import java.util.Map;

import com.hzit.thymeleaf.bean.Emp;
import com.hzit.thymeleaf.mapper.EmpDao;
import com.hzit.thymeleaf.service.IEmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class EmpServiceImpl implements IEmpService {

	@Autowired
	private EmpDao empDao;

	@Override
	public List<Emp> findEmpList() {
		// TODO Auto-generated method stub
		return empDao.findEmpList();
	}

	@Override
	public Emp findEmpById(Integer empno) {
		// TODO Auto-generated method stub
		return empDao.findEmpById(empno);
	}

	@Override
	public Integer saveEmp(Emp emp) {
		// TODO Auto-generated method stub
		return empDao.saveEmp(emp);
	}

	@Override
	public Integer updateEmp(Emp emp) {
		// TODO Auto-generated method stub
		return empDao.updateEmp(emp);
	}

	@Override
	public Integer deleteEmpById(Integer empno) {
		// TODO Auto-generated method stub
		return empDao.deleteEmpById(empno);
	}

	@Override
	public Integer deleteEmpByIds(Integer[] empnos) {

		return empDao.deleteEmpByIds(empnos);
	}

	@Override
	public List<Emp> searchEmps(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return empDao.searchEmps(map);
	}

	

}
