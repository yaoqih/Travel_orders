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
    @Insert("insert into employees(id,position,name,email,phone) values(#{id},#{position},#{name},#{email},#{phone})")
    void add(Employee employee);
    // 删
    @Delete("delete from employees where id = #{id}")
    void deleteById(String id);
    // 查
    @Select("select * from employees where name = #{name}")
    Employee findByEmployeeName(String name);

    @Select("select * from employees where id = #{id}")
    Employee findById(String id);

    @Select("select * from employees")
    List<Employee> findAll();
    // 改
    @Update("update employees set position = #{position},name = #{name},email = #{email},phone = #{phone} where id = #{id}")
    void update(Employee employee);
}
