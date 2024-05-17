package com.example.bbsproject.controller;

import com.example.bbsproject.entity.Topic;
import com.example.bbsproject.service.TopicService;
import com.example.bbsproject.vo.PostVo;
import com.example.bbsproject.vo.TopicAndUserVo;
import com.github.pagehelper.PageInfo;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/topic")
public class TopicController {
    @Resource
    TopicService topicService;


    @GetMapping("/list/{id}/{title}")
    public String list(@PathVariable("id") Integer id,@PathVariable("title") String title, Model model){
        model.addAttribute("id",id);
        model.addAttribute("title",title);
        return "/List";
    }

    @GetMapping("/add/{id}/{title}")
    public String add(@PathVariable("id") Integer id,@PathVariable("title") String title,Model model){
        model.addAttribute("id",id);
        model.addAttribute("title",title);
        return "/Post";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Integer id,Model model){
        PostVo postVo = topicService.selectByPostId(id);
        model.addAttribute("postVo",postVo);
        return "/Detail";
    }

    @PostMapping("/add")
    public @ResponseBody int add(Topic topic){
        return topicService.insert(topic);
    }

    @GetMapping("/selectId/{id}")
    public @ResponseBody PageInfo<TopicAndUserVo> selectId(
            @PathVariable("id") Integer id,
            @RequestParam(required = false,defaultValue = "1") int page,
            @RequestParam(required = false,defaultValue = "5") int size
    ){
        return topicService.selectId(id, page, size);
    }
}
