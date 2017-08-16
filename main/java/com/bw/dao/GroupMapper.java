package com.bw.dao;

import com.bw.bean.Group;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface GroupMapper {

    @ResultMap("groupMap")
    @Select("select gid,gname from t_group")
    public List<Group> selectGroups();




    @Results(id="groupMap",value={
            @Result(property = "gid", column = "gid"),
            @Result(property = "gname", column = "gname")
    })
    @Select("select gid,gname from t_group where gid = #{gid}")
    public Group selectGroupById(Integer gid);


    @Select("select gid,gname from t_group where gid = #{gid}")
    @Results(id="groupMapWithMem",value={
            @Result(property = "gid", column = "gid"),
            @Result(property = "gname", column = "gname"),
            @Result(property = "memberList",column = "gid",many = @Many(select = "com.bw.dao.MemberMapper.selectMembersSimpleByGid"))

    })
    public Group selectGroupByIdWithMem(Integer gid);

    @Select("select gid,gname from t_group")
    @ResultMap("groupMapWithMem")
    public List<Group>  selectGroupsWithMem();




}
