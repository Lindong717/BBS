package com.example.bbsproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@SpringBootApplication
public class BbsProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(BbsProjectApplication.class, args);
	}

}
