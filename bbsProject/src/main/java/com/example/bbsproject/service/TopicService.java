package com.example.bbsproject.service;

import com.example.bbsproject.entity.Topic;
import com.example.bbsproject.mapper.TopicMapper;
import com.example.bbsproject.vo.PostVo;
import com.example.bbsproject.vo.TopicAndUserVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

@Service
public class TopicService {
    @Resource
    TopicMapper topicMapper;

    public PageInfo<TopicAndUserVo> selectId(Integer topicId,int page,int size){
        PageHelper.startPage(page,size);
        return new PageInfo<>(topicMapper.selectId(topicId));
    }

    public int insert(Topic topic){
        return topicMapper.insert(topic);
    }

    public PostVo selectByPostId(Integer postId){
        return topicMapper.selectByPostId(postId);
    }
}
