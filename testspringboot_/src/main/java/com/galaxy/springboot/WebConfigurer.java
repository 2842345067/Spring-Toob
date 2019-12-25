package com.galaxy.springboot;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfigurer implements WebMvcConfigurer{

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		WebMvcConfigurer.super.addViewControllers(registry);
		//registry.addViewController("/").setViewName("forward:/hello2");
		//registry.addViewController("/").setViewName("index2");
		registry.addViewController("/").setViewName("login");
		//最高权限
		registry.setOrder(Ordered.HIGHEST_PRECEDENCE);
	}
}
