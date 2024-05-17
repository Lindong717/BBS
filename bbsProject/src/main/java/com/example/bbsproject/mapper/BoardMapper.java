package com.example.bbsproject.mapper;

import com.example.bbsproject.entity.Board;
import com.example.bbsproject.vo.BoardAndTopicAndUserVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface BoardMapper {
    @Select("SELECT *,'0' as 'body','0' as 'postId' FROM `tbl_board` WHERE `parentId` = '0'")
    List<Board> level1();

    @Select("SELECT a.`boardId`, a.`boardName`,\n" +
            "    (SELECT COUNT(1) FROM `tbl_topic` AS b WHERE b.`boardId` = a.`boardId`) AS `body`,\n" +
            "    v.`title`,v.`publishTime`,us.`name`,v.`topicId`\n" +
            "FROM `tbl_board` AS a\n" +
            "LEFT JOIN `tbl_topic` AS v ON v.`topicId` = (SELECT `topicId` FROM `tbl_topic` AS c WHERE c.`boardId` = a.`boardId` ORDER BY `publishTime` DESC LIMIT 0,1)\n" +
            "LEFT JOIN `tbl_user` AS us ON v.`uid` = us.`id`\n" +
            "WHERE a.`parentId` = #{id}")
    List<BoardAndTopicAndUserVo> level2(@Param("id") Integer id);
}
