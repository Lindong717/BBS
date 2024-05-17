package com.example.bbsproject.vo;

import lombok.Data;

import java.io.Serializable;

@Data
public class TopicAndUserVo implements Serializable {
    private Integer topicId;
    private String title;
    private String name;
    private long reply;
}
