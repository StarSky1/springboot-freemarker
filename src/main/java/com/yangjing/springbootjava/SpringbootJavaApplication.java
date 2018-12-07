package com.yangjing.springbootjava;

import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringbootJavaApplication {

	public static void main(String[] args) {
		SpringApplication springApplication=new SpringApplication(SpringbootJavaApplication.class);
		springApplication.setBannerMode(Banner.Mode.OFF);
		springApplication.run(args);
		//SpringApplication.run(SpringbootJavaApplication.class, args);
	}
}
