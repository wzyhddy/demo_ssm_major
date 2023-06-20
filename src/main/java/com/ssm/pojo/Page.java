package com.ssm.pojo;

import lombok.Data;

/**
 * @Author: 201164229王志银
 * @Description: Page对象
 * @DateTime: 2023/4/15 18:16
 **/
@Data
public class Page {
    /**
     * 当前页
     */
    int pageNow;

    /**
     * 每页显示的记录数
     */
    int pageSize;
    /**
     * 符合条件的记录总数 totalCount
     */

    int totalCount;

    /**
     * 总页数
     */
    int pageSum;

    public Page(int pageNow, int pageSize, int totalCount, int pageSum) {
        this.pageNow = pageNow;
        this.pageSize = pageSize;
        this.totalCount = totalCount;
        this.pageSum = pageSum;
    }
}
