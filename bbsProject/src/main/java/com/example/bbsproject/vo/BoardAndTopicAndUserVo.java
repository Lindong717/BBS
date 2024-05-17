package com.example.bbsproject.vo;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
public class BoardAndTopicAndUserVo implements Serializable {
    private Integer boardId;
    private Integer topicId;
    private String boardName;
    private long body;
    private String title;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date publishTime;
    private String name;
}
