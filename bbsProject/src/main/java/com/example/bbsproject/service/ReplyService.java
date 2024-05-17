package com.example.bbsproject.service;

import com.example.bbsproject.entity.Reply;
import com.example.bbsproject.mapper.ReplyMapper;
import com.example.bbsproject.vo.ReplyAndUserVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

@Service
public class ReplyService {
    @Resource
    ReplyMapper replyMapper;

    public PageInfo<ReplyAndUserVo> selectId(Integer id,int page,int size){
        PageHelper.startPage(page,size);
        return new PageInfo<>(replyMapper.selectId(id));
    }

    public int delete(Integer id){
        return replyMapper.delete(id);
    }

    public int add(Reply reply){
        return replyMapper.add(reply);
    }

    public int update(Reply reply){
        return replyMapper.update(reply);
    }

    public Reply singleSelect(Integer id){
        return replyMapper.singleSelect(id);
    }
}
