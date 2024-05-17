package com.example.bbsproject.mapper;

import com.example.bbsproject.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {
    @Insert("INSERT INTO `tbl_user`(`name`,`pass`,`head`,`regTime`,`gender`)\n" +
            "VALUES(#{name},#{pass},#{head},NOW(),#{gender})")
    int add(User user);

    @Select("SELECT * FROM `tbl_user` WHERE `name` = #{name} AND `pass` = #{pass}")
    User login(@Param("name") String name,@Param("pass") String pass);
}
