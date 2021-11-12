package com.example.demo.controller;

import com.example.demo.common.Result;
import com.example.demo.entity.Permission;
import com.example.demo.entity.RolePermission;
import com.example.demo.entity.UserRole;
import com.example.demo.mapper.PermissionMapper;
import com.example.demo.mapper.RoleMapper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/permission")
public class PermissionController extends BaseController {
    @Resource
    RoleMapper roleMapper;
    @Resource
    PermissionMapper permissionMapper;


    @GetMapping("/{userId}")
    public Result<Set<Permission>> all(@PathVariable("userId") Integer userId) {
        HashSet<Permission> permissionSet = new HashSet<>();
        List<UserRole> userRoles = roleMapper.getUserRoleByUserId(userId);
        for (UserRole userRole : userRoles) {
            // 2.根据roleId从role_permission表查询出所有的permissionId
            List<RolePermission> rolePermissions = permissionMapper.getRolePermissionByRoleId(userRole.getRoleId());
            for (RolePermission rolePermission : rolePermissions) {
                Integer permissionId = rolePermission.getPermissionId();
                // 3. 根据permissionId查询permission信息
                Permission permission = permissionMapper.selectById(permissionId);
                permissionSet.add(permission);
            }
        }
        return Result.success(permissionSet);
    }
}
