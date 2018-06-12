package com.hzit.thymeleaf.service;


import com.hzit.thymeleaf.bean.Users;

public interface IUserService {

	Users login(String username, String pwd);

}
