package com.example.bbsproject.service;

import com.example.bbsproject.entity.Board;
import com.example.bbsproject.mapper.BoardMapper;
import com.example.bbsproject.vo.BoardAndTopicAndUserVo;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {
    @Resource
    BoardMapper boardMapper;

    public List<Board> level1(){
        return boardMapper.level1();
    }

    public List<BoardAndTopicAndUserVo> level2(Integer parentId){
        return boardMapper.level2(parentId);
    }
}
