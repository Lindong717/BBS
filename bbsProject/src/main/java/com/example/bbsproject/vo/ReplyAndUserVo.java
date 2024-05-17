package com.example.bbsproject.vo;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
public class ReplyAndUserVo implements Serializable {
    private Integer id;
    private Integer replyId;
    private String name;
    private String head;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date regTime;
    private String title;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date publishTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date modifyTime;
}
