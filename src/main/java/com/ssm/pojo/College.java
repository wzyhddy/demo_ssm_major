package com.ssm.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;
/**
 * @Author: 201164229王志银
 * @Description: 学院的实体类
 * @DateTime: 2023/4/15 18:16
 **/
@Data
public class College {

    /**
     * 学院编号
     */
     private Integer cid;
    /**
     * 学院名称
     */
    private String cname;
    /**
     * 学院地址
     */
     private String caddress;
    /**
     * 学院的创办时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private String createtime;//
    /**
     * 学院的院徽
     */
     private String cpic;
}
