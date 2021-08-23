package com.example.demo.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.entity.User;

public interface UserMapper extends BaseMapper<User> {
    // 一对多查询
    Page<User> findPage(Page<User> page);
}
