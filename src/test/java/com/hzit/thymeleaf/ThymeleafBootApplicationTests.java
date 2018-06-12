package com.hzit.thymeleaf;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hzit.thymeleaf.bean.Dept;
import com.hzit.thymeleaf.bean.Emp;
import com.hzit.thymeleaf.service.IDeptService;
import com.hzit.thymeleaf.service.IEmpService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ThymeleafBootApplicationTests {

	@Autowired
	private IDeptService eptService;

	@Autowired
	private IEmpService empService;

	@Test
	public void contextLoads() {
		PageHelper.startPage(1, 2);
		List<Dept> deptList = eptService.findDeptList();

		PageInfo pageInfo = new PageInfo(deptList);
		System.out.println(pageInfo.getPages());

		List list = pageInfo.getList();
		for (Object delt : list	) {
			System.out.println(pageInfo.getNavigateLastPage()+"-----"+delt);
		}

	//	System.out.println(deptList);
	}

	@Test
	public void testEmp() {
		List<Emp> empList = empService.findEmpList();
		System.out.println(empList);


	}

}
