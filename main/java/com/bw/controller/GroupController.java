package com.bw.controller;

import com.bw.bean.Group;
import com.bw.service.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller

public class GroupController {

    @Autowired
    private GroupService groupService;

    @RequestMapping("/selectAll")
    public String selectGroups(Model model){

         List<Group> groupList =  groupService.selectAll();

        model.addAttribute("groups",groupList);
        return "index";
    }

}
