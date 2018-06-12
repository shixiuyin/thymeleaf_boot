package com.hzit.thymeleaf.mapper;

import com.hzit.thymeleaf.bean.Users;
import org.springframework.stereotype.Repository;



@Repository
public interface UserDao {

	Users findUsers(String username);

}
