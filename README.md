# demo_ssm_major
## SpringMVC学院专业发布系统 使用SSM框架+maven+Ajax技术实现学院专业发布系统
## 环境要求: JDK7及以上版本 Intellij IDEA + Tomcat 7.0(8.0) +　MySql 5 + Jquery-1.8.3
### 主要功能包括
- 学院信息录入
- 专业信息列表显示
- 专业信息录入
- 专业信息删除
- 专业信息修改
- 显示专业详细信息
![](https://raw.githubusercontent.com/wzyhddy/image/main/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-06-20%20144336.png)
![](https://raw.githubusercontent.com/wzyhddy/image/main/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-06-20%20155238.png)
![](https://raw.githubusercontent.com/wzyhddy/image/main/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-06-20%20155302.png)
![](https://raw.githubusercontent.com/wzyhddy/image/main/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-06-20%20155249.png)
![](https://raw.githubusercontent.com/wzyhddy/image/main/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-06-20%20155238.png)
![](https://raw.githubusercontent.com/wzyhddy/image/main/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-06-20%20144931.png)
![](https://raw.githubusercontent.com/wzyhddy/image/main/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-06-20%20145004.png)
![](https://raw.githubusercontent.com/wzyhddy/image/main/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-06-20%20145018.png)
![](https://raw.githubusercontent.com/wzyhddy/image/main/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-06-20%20145031.png)

```sql

create table college
(
    cid        int auto_increment comment '学院编号'
        primary key,
    cname      varchar(50)  not null comment '学院名称',
    caddess    varchar(50)  null comment '学院地址',
    createtime date         not null comment '创办时间',
    cpic       varchar(100) not null comment '学院院徽'
);

create table major
(
    mid          int auto_increment comment '专业编号'
        primary key,
    mname        varchar(50)  not null comment '专业名称',
    credit       int          not null comment '学分',
    LifeYear     int          not null comment '学制',
    introduction varchar(200) not null comment '专业介绍',
    cid          int          null,
    constraint major_ibfk_1
        foreign key (cid) references college (cid)
);

create index cid
    on major (cid);
    
```

