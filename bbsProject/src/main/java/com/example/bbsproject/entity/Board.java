package com.example.bbsproject.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Board implements Serializable {
    private Integer boardId;        //板块Id
    private String boardName;       //板块名称
    private Integer parentId;       //父板块Id

    
}
