package com.bw.bean;


import lombok.Data;

import java.io.Serializable;
import java.util.List;

public class Group implements Serializable {


    private Integer gid;
    private String gname;
    private List<Member> memberList;

   public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public List<Member> getMemberList() {
        return memberList;
    }

    public void setMemberList(List<Member> memberList) {
        this.memberList = memberList;
    }
}
