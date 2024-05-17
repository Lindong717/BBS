package com.example.bbsproject.mapper;

import com.example.bbsproject.entity.Reply;
import com.example.bbsproject.vo.ReplyAndUserVo;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ReplyMapper {
    @Select("select `replyId`,`name`,`head`,`regTime`,`title`,`content`,`publishTime`,`modifyTime`,`id` from `tbl_reply` as a\n" +
            "join `tbl_user` as b on a.`uid` = b.`id`\n" +
            "where `topicId` = #{id}")
    List<ReplyAndUserVo> selectId(@Param("id") Integer id);

    @Delete("delete from `tbl_reply` where `replyId` = #{id}")
    int delete(@Param("id") Integer id);

    @Insert("INSERT INTO `tbl_reply`(`title`,`content`,`publishTime`,`modifyTime`,`uid`,`topicId`)\n" +
            "VALUES(#{title},#{content},NOW(),NOW(),#{uid},#{topicId})")
    int add(Reply reply);

    @Update("UPDATE `tbl_reply` SET `title` = #{title},`content` = #{content},`modifyTime` = now() WHERE `replyId` = #{replyId}")
    int update(Reply reply);

    @Select("select * from `tbl_reply` where `replyId` = #{id}")
    Reply singleSelect(@Param("id") Integer id);
}
