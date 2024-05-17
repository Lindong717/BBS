package com.example.bbsproject.vo;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
public class PostVo implements Serializable {
    private Integer topicId;
    private String head;
    private String name;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date regTime;
    private String title;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date publishTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date modifyTime;
    private Integer boardId;
    private String boardName;
}
