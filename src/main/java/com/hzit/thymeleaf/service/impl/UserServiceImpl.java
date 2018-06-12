package com.hzit.thymeleaf.service.impl;

import com.hzit.thymeleaf.bean.Users;
import com.hzit.thymeleaf.mapper.UserDao;
import com.hzit.thymeleaf.service.IUserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements IUserService {

	// 使用日志
	Logger logger = Logger.getLogger(UserServiceImpl.class);

	@Autowired
	private UserDao userDao;

	/**
	 * 处理登录的业务
	 */
	@Override
	public Users login(String username, String pwd) {

		Users users = userDao.findUsers(username);
		if (users != null) {

			if (pwd.equals(users.getUserPwd())) {
				logger.info("登录成功....");
				return users;
			} else {
				logger.info("用户名密码不匹配....");
				return null;
			}

		} else {
			// logger.debug("");
			logger.info("用户名不存在....");
			// logger.warn("");
			// logger.error("");
			return null;
		}

	}

}
