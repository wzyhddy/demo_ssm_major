package com.ssm.pojo;

import lombok.Data;

/**
 * @Author: 诉衷情の麻雀
 * @Description: major专业的实体类
 * @DateTime: 2023/4/13 9:54
 **/
@Data
public class Major {
    /**
     * 专业的主键mid
     */
    private Integer mid;
    /**
     * 专业的名字
     */
    private String mname;
    /**
     * 专业的学分
     */
    private Integer credit;
    /**
     * 学制
     */
    private Integer lifeyear;
    /**
     * 专业介绍
     */
    private String introduction;
    /**
     * 外键cid
     */
    private Integer cid;
    private College college;

}