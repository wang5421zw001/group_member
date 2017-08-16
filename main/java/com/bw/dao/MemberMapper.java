package com.bw.dao;

import com.bw.bean.Member;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface MemberMapper {


    //查询组员及所属小组
    @Select("select mid,mname,gid  from t_member where mid = #{id}")
    @Results(id = "memberMap", value = {
            @Result(column = "mid", property = "mid", id = true),
            @Result(column= "mname", property="mname"),
            @Result(column="gid",property = "group",one=@One(select = "com.bw.dao.GroupMapper.selectGroupById")
            )
    })
    public Member selectMemberById(@Param("id") Integer mid);


    @Select("select mid,mname,gid  from t_member ")
    @ResultMap("memberMap")
    public List<Member> selectMembers();


    //查询组员
    @Select("select mid,mname,gid  from t_member where mid = #{id}")
    @Results(id="simpleMem",value={
            @Result(column = "mid", property = "mid", id = true),
            @Result(column= "mname", property="mname")
    })
    public Member selectMemberSimple(@Param("id") Integer mid);

    //查询组员

    @Select("select mid,mname,gid  from t_member")
    @ResultMap("simpleMem")
    public Member selectMembersSimple();



    @Select("select mid,mname,gid  from t_member where gid = #{id}")
    @ResultMap("simpleMem")
    public List<Member> selectMembersSimpleByGid(@Param("id") Integer gid);





}
