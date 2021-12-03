package com.example.demo.entity;

import lombok.Data;

@Data
@Builder
@TableName("user_role")
public class UserRole {
    private Integer userId;
    private Integer roleId;
}
