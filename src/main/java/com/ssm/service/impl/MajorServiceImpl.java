package com.ssm.service.impl;

import com.ssm.dao.MajorDao;
import com.ssm.pojo.Major;
import com.ssm.service.MajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
/**
 * @Author: 201164229王志银
 * @Description: 专业的实现方法
 * @DateTime: 2023/4/15 18:16
 **/
@Service
public class MajorServiceImpl implements MajorService {
    @Autowired
    private MajorDao majorDao;
    @Override
    public int addMajor(Major major) {
        return majorDao.addMajor(major);
    }

    @Override
    public List<Major> getMajorListWithCollege() {
        return majorDao.getMajorListWithCollege();
    }

    @Override
    public int deleteById(int id) {
        return majorDao.deleteById(id);
    }

    @Override
    public List<Major> search(String cname , String mname, int creditFrom, int creditTo) {
        return majorDao.search(cname, mname, creditFrom, creditTo);
    }

    @Override
    public Major detail(int id) {
        return majorDao.detail(id);
    }

    @Override
    public List<Major> getPage(int index, int pageSize) {
        return majorDao.getPage(index, pageSize);
    }

    @Override
    public int counts() {
        return majorDao.counts();
    }

    @Override
    public Major getMajorById(int id) {
        return majorDao.getMajorById(id);
    }

    public int updateMajor(int id, String name, int credit, String introduction, int lifeyear, int cid) {
        return majorDao.updateMajor(id, name, credit, introduction, lifeyear, cid);
    }

}
