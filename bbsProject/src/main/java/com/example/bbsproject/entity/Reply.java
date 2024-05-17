package com.example.bbsproject.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
public class Reply implements Serializable {
    private Integer replyId;
    private String title;           //发帖标题
    private String content;         //内容
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date publishTime;       //发帖时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date modifyTime;        //修改时间
    private Integer uid;            //发帖用户Id
    private Integer topicId;        //发帖表Id
}
