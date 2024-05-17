package com.example.bbsproject.controller;

import com.example.bbsproject.entity.Board;
import com.example.bbsproject.service.BoardService;
import com.example.bbsproject.vo.BoardAndTopicAndUserVo;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Resource
    BoardService boardService;

    @GetMapping("/index")
    public String index(){
        return "/index";
    }

    @GetMapping("/level1")
    public @ResponseBody List<Board> level1(){
        return boardService.level1();
    }

    @GetMapping("/level2")
    public @ResponseBody List<BoardAndTopicAndUserVo> level2(Integer id){
        return boardService.level2(id);
    }
}
