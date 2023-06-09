package com.qianfeng.dao;


import com.qianfeng.domain.Activity;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IActivityDao {

    @Select("select * from activities")
    List<Activity> findAll();

    @Insert("insert into activities(id,activityName,activityDesc,startDate,endDate,status) values(#{id},#{activityName},#{activityDesc},#{startDate},#{endDate},#{status})")
    void add(Activity activity);

    @Select("select * from activities where id = #{id}")
    Activity findById(String id);
}
