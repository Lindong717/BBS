package com.example.bbsproject.service;

import com.example.bbsproject.entity.Board;
import com.example.bbsproject.vo.BoardAndTopicAndUserVo;
import jakarta.annotation.Resource;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class BoardServicTest {
    @Resource
    BoardService boardService;

    @Test
    void level1() {
        List<Board> boards = boardService.level1();
        System.out.println(boards.size());
    }

    @Test
    void level2() {
        List<BoardAndTopicAndUserVo> boards = boardService.level2(8);
        System.out.println(boards.size());
    }
}