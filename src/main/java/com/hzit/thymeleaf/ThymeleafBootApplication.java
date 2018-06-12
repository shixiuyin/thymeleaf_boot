package com.hzit.thymeleaf;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@MapperScan("com.hzit.thymeleaf.mapper")
public class ThymeleafBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(ThymeleafBootApplication.class, args);
	}
}
