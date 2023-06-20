package com.ssm.service;

import com.ssm.pojo.College;

import java.util.List;
/**
 * @Author: 201164229王志银
 * @Description: 学院的业务接口
 * @DateTime: 2023/4/15 18:16
 **/
public interface CollegeService {
    //定义功能方法:
    int addCollege(College college);
    List<String> getCollegeName();

    List<College> queryAllColleges();

    int getCollegeIdByName(String name);


    List<College> getAllColleges();
}
