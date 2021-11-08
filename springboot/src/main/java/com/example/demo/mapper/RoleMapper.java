package com.example.demo.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.Role;
import com.example.demo.entity.UserRole;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface RoleMapper extends BaseMapper<Role> {

    @Select("select * from user_role where user_id = #{userId}")
    List<UserRole> getUserRoleByUserId(Integer userId);


}
