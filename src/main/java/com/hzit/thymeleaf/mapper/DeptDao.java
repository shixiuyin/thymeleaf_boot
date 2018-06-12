package com.hzit.thymeleaf.mapper;

import java.util.List;

import com.hzit.thymeleaf.bean.Dept;
import org.springframework.stereotype.Repository;


@Repository
public interface DeptDao {

	 List<Dept> findDeptList();

}
