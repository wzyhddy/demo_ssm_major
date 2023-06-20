package com.ssm.dao;

import com.ssm.pojo.Major;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: 201164229王志银
 * @Description: 专业接口DAO
 * @DateTime: 2023/4/15 18:16
 **/
public interface MajorDao {
    int addMajor(Major major);

    List<Major> getMajorListWithCollege();

    int deleteById(int id);

    List<Major> search(@Param("cname") String cname ,@Param("mname") String mname,
                       @Param("creditFrom") int creditFrom,
                       @Param("creditTo") int creditTo);

    Major detail(int id);

    List<Major> getPage(@Param("index") int index,@Param("pageSize") int pageSize);

    int counts();

    Major getMajorById(@Param("mid") int id);

    int updateMajor(@Param("mid") int id, @Param("mname") String name, @Param("credit") int credit, @Param("introduction") String introduction, @Param("lifeyear") int lifeyear, @Param("cid") int cid);

}
