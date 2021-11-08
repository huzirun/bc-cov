package com.example.demo.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.Permission;
import com.example.demo.entity.RolePermission;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface PermissionMapper extends BaseMapper<Permission> {

    @Select("select * from role_permission where role_id = #{roleId}")
    List<RolePermission> getRolePermissionByRoleId(Integer roleId);

}
