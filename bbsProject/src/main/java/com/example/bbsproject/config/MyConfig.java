package com.example.bbsproject.config;

import com.example.bbsproject.interceptor.LoginInterceptor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Slf4j
@Configuration
public class MyConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/topic/add/{id}/{title}")
                .addPathPatterns("/reply/add/{id}/{title}/{detailId}/{detailTitle}")
                .addPathPatterns("/topic/detail/{id}");
    }
}
