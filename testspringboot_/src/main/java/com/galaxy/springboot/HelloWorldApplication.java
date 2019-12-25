package com.galaxy.springboot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 创建一个测试的实例
 * @SpringBootApplication
 * @RestController =>@Controller+@ResponseBody=> 表明该类是一个Controller类，这个类会被springIOC容器接管，所有的方法均会返回json
 * 需要新的注解
 * 
 * @author Lenovo
 *
 */

@SpringBootApplication
public class HelloWorldApplication {
	          
	
	public static void main(String[] args) {
		SpringApplication.run(HelloWorldApplication.class, args);
	}
}