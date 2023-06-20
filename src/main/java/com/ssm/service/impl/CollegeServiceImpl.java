package com.ssm.service.impl;

import com.ssm.dao.CollegeDao;
import com.ssm.pojo.College;
import com.ssm.service.CollegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: 201164229王志银
 * @Description: 学院的实现方法
 * @DateTime: 2023/4/15 18:16
 **/
@Service
public class CollegeServiceImpl implements CollegeService {
    @Autowired
    private CollegeDao cd;
    @Override
    public int addCollege(College college) {
        return cd.addCollege(college);
    }
    @Override
    public List<String> getCollegeName() {
        return cd.getCollegeName();
    }
    @Override
    public List<College> queryAllColleges() {
        return cd.queryAllColleges();
    }

    @Override
    public int getCollegeIdByName(String name) {
        return cd.getCollegeIdByName(name);
    }

    @Override
    public List<College> getAllColleges() {
        return cd.getAllColleges();
    }
}
