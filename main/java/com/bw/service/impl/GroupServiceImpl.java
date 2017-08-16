package com.bw.service.impl;

import com.bw.bean.Group;
import com.bw.dao.GroupMapper;
import com.bw.service.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GroupServiceImpl implements GroupService{

    @Autowired
    private GroupMapper groupMapper;


    @Cacheable("groups")
    @Override
    public List<Group> selectAll() {
        System.out.println("===走数据库了===");
        return groupMapper.selectGroups();
    }
}
