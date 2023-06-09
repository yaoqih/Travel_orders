package com.qianfeng.dao;

import com.qianfeng.domain.Employee;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IEmployeeDao {
    // 增
    @Insert("insert into employee(id,position,name,email,phone) values(#{id},#{position},#{name},#{email},#{phone})")
    void add(Employee employee);
    // 删
    @Delete("delete from employee where id = #{id}")
    void deleteById(String id);
    // 查
    @Select("select * from employee where name = #{name}")
    Employee findByEmployeeName(String name);

    @Select("select * from employee where id = #{id}")
    Employee findById(String id);

    @Select("select * from employee")
    List<Employee> findAll();
    // 改
    @Update("update employee set id = #{id},position = #{position},name = #{name},email = #{email},phone = #{phone}")
    void update(Employee employee);
}
