package com.example.bbsproject.controller;

import com.example.bbsproject.entity.Reply;
import com.example.bbsproject.service.ReplyService;
import com.example.bbsproject.vo.ReplyAndUserVo;
import com.github.pagehelper.PageInfo;
import jakarta.annotation.Resource;
import org.apache.ibatis.annotations.Delete;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/reply")
public class ReplyController {
    @Resource
    ReplyService replyService;

    @GetMapping("/add/{id}/{title}/{detailId}/{detailTitle}")
    public String register(
            @PathVariable("id") Integer id,
            @PathVariable("title") String title,
            @PathVariable("detailId") Integer detailId,
            @PathVariable("detailTitle") String detailTitle,
            Model model
    ){
        model.addAttribute("id",detailId);
        model.addAttribute("title",title);
        model.addAttribute("detailId",id);
        model.addAttribute("detailTitle",detailTitle);
        return "/Post";
    }

    @GetMapping("/list/{id}")
    public @ResponseBody PageInfo<ReplyAndUserVo> selectId(
            @PathVariable("id") Integer id,
            @RequestParam(required = false,defaultValue = "1") int page,
            @RequestParam(required = false,defaultValue = "5") int size
    ){
        PageInfo<ReplyAndUserVo> replyAndUserVoPageInfo = replyService.selectId(id, page, size);
        return replyAndUserVoPageInfo;
    }

    @DeleteMapping("/delete/{id}")
    public @ResponseBody int delete(@PathVariable("id") Integer id){
        return replyService.delete(id);
    }

    @PostMapping("/add")
    public @ResponseBody int add(Reply reply){
        return replyService.add(reply);
    }

    @GetMapping("/update/{id}/{boardId}/{boardName}/{topicId}/{title}")
    public String update(
            @PathVariable("id") Integer id,
            @PathVariable("boardId") Integer boardId,
            @PathVariable("boardName") String boardName,
            @PathVariable("topicId") Integer topicId,
            @PathVariable("title") String title,
            Model model
    ){
        model.addAttribute("id",id);
        model.addAttribute("boardId",boardId);
        model.addAttribute("boardName",boardName);
        model.addAttribute("topicId",topicId);
        model.addAttribute("title",title);
        return "/Update";
    }

    @PutMapping("/update")
    public @ResponseBody int update(Reply reply){
        return replyService.update(reply);
    }

    @GetMapping("/singleSelect/{id}")
    public @ResponseBody Reply singleSelect(@PathVariable("id") Integer id){
        return replyService.singleSelect(id);
    }
}
