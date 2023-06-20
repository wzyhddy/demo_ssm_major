package com.ssm.service;

import com.ssm.pojo.Major;

import java.util.List;

/**
 * @Author: 201164229王志银
 * @Description: 专业的业务接口
 * @DateTime: 2023/4/15 18:16
 **/
public interface MajorService {
    // 定义功能方法:
    int addMajor(Major major);

    List<Major> getMajorListWithCollege();

    int deleteById(int id);

    List<Major> search(String cname, String mname, int creditFrom, int creditTo);

    Major detail(int id);

    List<Major> getPage(int index, int pageSize);

    int counts();

    Major getMajorById(int id);


    int updateMajor(int id, String name, int credit, String introduction, int lifeyear, int cid);
}
