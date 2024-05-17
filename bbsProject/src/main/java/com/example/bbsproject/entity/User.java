package com.example.bbsproject.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
public class User implements Serializable {
    private Integer id;             //用户id
    private String name;            //用户名
    private String pass;            //密码
    private String head;            //头像
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date regTime;           //注册时间
    private Integer gender;         //性别
}
