package com.hzit.thymeleaf.mapper;

import com.hzit.thymeleaf.bean.Emp;

import java.util.List;
import java.util.Map;


public interface EmpDao {

	public List<Emp> findEmpList();

	public Emp findEmpById(Integer empno);

	public Integer saveEmp(Emp emp);

	public Integer updateEmp(Emp emp);

	public Integer deleteEmpById(Integer empno);

	/**
	 * 根据id批量删除
	 * 
	 * @param empnos
	 * @return
	 */
	public Integer deleteEmpByIds(Integer[] empnos);

	public List<Emp> searchEmps(Map<String, Object> map);

}
