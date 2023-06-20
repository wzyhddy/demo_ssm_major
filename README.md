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
<img width="664" alt="image" src="https://github.com/wzyhddy/demo_ssm_major/assets/93774961/0a4a0180-5730-4743-8adb-43d9f4bebc39">
<img width="1232" alt="image" src="https://github.com/wzyhddy/demo_ssm_major/assets/93774961/de847895-1073-48fe-9d1c-0d50dd97ead5">
<img width="1223" alt="image" src="https://github.com/wzyhddy/demo_ssm_major/assets/93774961/2634ea88-d211-47b5-b8e0-90a30e558eb5">
<img width="1233" alt="image" src="https://github.com/wzyhddy/demo_ssm_major/assets/93774961/ad94ce6d-653b-441d-a2a7-82e16161b98a">
<img width="578" alt="image" src="https://github.com/wzyhddy/demo_ssm_major/assets/93774961/3ae47549-8197-4f37-9159-6c88c8a865c6">
<img width="1052" alt="image" src="https://github.com/wzyhddy/demo_ssm_major/assets/93774961/2c69b66d-8a14-41e2-b45f-afcacf10ccea">
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

