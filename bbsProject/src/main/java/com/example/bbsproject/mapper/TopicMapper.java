package com.example.bbsproject.mapper;

import com.example.bbsproject.entity.Topic;
import com.example.bbsproject.vo.PostVo;
import com.example.bbsproject.vo.TopicAndUserVo;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface TopicMapper {
    @Select("SELECT a.`topicId`,a.`title`,b.`name`,(select count(1) from `tbl_reply` where `topicId` = a.`topicId`) as `reply` FROM `tbl_topic` as a\n" +
            "join `tbl_user` as b on a.`uid` = b.`id`\n" +
            "WHERE `boardId` = #{id}")
    List<TopicAndUserVo> selectId(@Param("id") Integer id);

    @Insert("INSERT INTO `tbl_topic`(`title`,`content`,`publishTime`,`modifyTime`,`uid`,`boardId`)\n" +
            "VALUES(#{title},#{content},NOW(),NOW(),#{uid},#{boardId})")
    int insert(Topic topic);

    @Select("select `topicId`,`head`,`name`,`regTime`,`title`,`content`,`publishTime`,`modifyTime`,a.`boardId`,`boardName` from `tbl_topic` as a\n" +
            "join `tbl_user` as b on a.`uid` = b.`id`\n" +
            "join `tbl_board` as c on a.`boardId` = c.`boardId`\n" +
            "where `topicId` = #{id}")
    PostVo selectByPostId(@Param("id") Integer id);
}
