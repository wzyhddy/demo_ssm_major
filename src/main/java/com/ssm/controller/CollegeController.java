package com.ssm.controller;

import com.ssm.pojo.College;
import com.ssm.pojo.Major;
import com.ssm.pojo.Page;
import com.ssm.service.CollegeService;
import com.ssm.service.MajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * @Author: 201164229王志银
 * @Description: 关于学院的控制类
 * @DateTime: 2023/4/15 18:16
 **/
@Controller
//@RequestMapping("/college")
public class CollegeController {
    @Autowired
    private MajorService majorService;
    @Autowired
    private CollegeService cs;

    /**
     * 学院信息的添加/录入
     *
     * @param model
     * @param college
     * @param cfile
     * @param pageNow
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/addCollege", method = RequestMethod.POST)
    public String addCollege(Model model,
                             College college,
                             MultipartFile cfile, @RequestParam(value = "pageNow", defaultValue = "1") int pageNow) throws IOException {
        //获取上传文件的文件名:
        String fileName = cfile.getOriginalFilename();
        //获取上传文件的文件路径:(服务器)
//        String path = "C:\\Users\\Administrator\\Desktop\\demo_ssm_major\\target\\demo_ssm_major\\upload";
        String path = "C:\\Users\\27837\\IdeaProjects\\demo_ssm_major\\target\\demo_ssm_major\\upload";
        //创建上传的文件:
        File file = new File(path, fileName);
        //判断此文件服务器中是否存在:
        if (!file.exists()) {//文件不存在:
            //上传文件:
            cfile.transferTo(file);
        }
        //把文件名字保存到对象当中:
        college.setCpic(fileName);
        //调用学员信息录入业务:
        int num = cs.addCollege(college);
        //判断录入信息是否成功:
        if (num > 0) {//录入成功
            //   model.addAttribute("college", college);
            List<Major> majors = majorService.getMajorListWithCollege();
            System.out.println(majors);
            model.addAttribute("majors", majors);
            return "redirect:/index?pageNow=" + pageNow;
        } else {//录入失败:重定向回录入页面:
            return "redirect:/add_college.jsp";
        }
    }

    /**
     * 首页的分页数据展示
     *
     * @param pageNow 当前页
     * @param model
     * @return
     */
    @RequestMapping("index")
    public String index(@RequestParam(value = "pageNow", defaultValue = "1") int pageNow, Model model) {
        int pageSize = 10;
        //计算起始索引
        int startIndex = (pageNow - 1) * pageSize;
        /**
         * 获取分页数据 将startIndex加入Service层参数里
         */
        List<Major> majors = majorService.getPage(startIndex, pageSize);
        System.out.println(majors);
        //获取符合条件的记录数
        int totalCount = majorService.counts();
        //获取总页数
        int pageSum = (majorService.counts() + pageSize - 1) / pageSize;

        System.out.println("当前页: " + pageNow);
        System.out.println("符合条件的记录数: " + totalCount);
        System.out.println("总页数: " + pageSum);
        /**
         * 创建分页对象
         */
        Page page = new Page(pageNow, pageSize, totalCount, pageSum);
        //将数据添加到模型中
        model.addAttribute("page", page);
        model.addAttribute("majors", majors);
        return "index"; //返回首页
    }

    /**
     * 模糊查询
     *
     * @param cname      学院名字
     * @param mname      专业名字
     * @param creditFrom 学分范围起点
     * @param creditTo   学分范围终点
     * @param model
     * @param pageNow
     * @return
     */
    @RequestMapping("/search")
    public String search(@RequestParam(value = "cname", required = false) String cname, @RequestParam(value = "mname", required = false) String mname,
                         @RequestParam(value = "credit_from", defaultValue = "0") int creditFrom, @RequestParam(value = "credit_to", defaultValue = "1000") int creditTo, Model model,
                         @RequestParam(value = "pageNow", defaultValue = "1") int pageNow) {
        List<Major> majors = majorService.search(cname, mname, creditFrom, creditTo);
        model.addAttribute("majors", majors);
        System.out.println(majors);
        return "show_major";
    }

    /**
     * 搜索的详情页
     *
     * @param model
     * @param pageNow
     * @return
     */
    @RequestMapping("/search_detail")
    public String searchDetail(Model model, @RequestParam(value = "pageNow", defaultValue = "1") int pageNow) {
        int pageSize = 10;
        //计算起始索引
        int startIndex = (pageNow - 1) * pageSize;
        List<Major> majors = majorService.getPage(startIndex, pageSize);
        //获取符合条件的记录数
        int totalCount = majorService.counts();
        //获取总页数
        int pageSum = (majorService.counts() + pageSize - 1) / pageSize;

        System.out.println("当前页: " + pageNow);
        System.out.println("符合条件的记录数: " + totalCount);
        System.out.println("总页数: " + pageSum);
        Page page = new Page(pageNow, pageSize, totalCount, pageSum);
        model.addAttribute("page", page);
        model.addAttribute("majors", majors);
        return "show_major";
    }

    @RequestMapping("/page")
    public String listPage(Model model, @RequestParam(value = "pageNow", defaultValue = "1") int pageNow) {
        int pageSize = 10;
        int startIndex = (pageNow - 1) * pageSize;
        List<Major> majors = majorService.getPage(startIndex, pageSize);
        //获取符合条件的记录数
        int totalCount = majorService.counts();
        //获取总页数
        int pageSum = (majorService.counts() + pageSize - 1) / pageSize;

        System.out.println("当前页: " + pageNow);
        System.out.println("符合条件的记录数: " + totalCount);
        System.out.println("总页数: " + pageSum);
        Page page = new Page(pageNow, pageSize, totalCount, pageSum);
        model.addAttribute("page", page);
        model.addAttribute("majors", majors);
        return "index";
    }

}
