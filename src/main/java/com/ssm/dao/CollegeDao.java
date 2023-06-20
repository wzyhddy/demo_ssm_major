package com.ssm.dao;

import com.ssm.pojo.College;
import com.ssm.pojo.Major;

import java.util.List;

/**
 * @Author: 201164229王志银
 * @Description: 学院接口DAO
 * @DateTime: 2023/4/15 18:16
 **/
public interface CollegeDao {
     //定义功能方法:
     int addCollege(College college);
     int getCollegeIdByName(String name);

     List<College> queryAllColleges();

     List<Major> getMajorByCollegeId();

     List<String> getCollegeName();

     List<College> getAllColleges();
}
