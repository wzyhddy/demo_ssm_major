package com.ssm.controller;

import com.ssm.pojo.College;
import com.ssm.pojo.Major;
import com.ssm.service.CollegeService;
import com.ssm.service.MajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @Author: 201164229王志银
 * @Description: 关于专业的控制类
 * @DateTime: 2023/4/15 18:16
 **/
@Controller
public class MajorController {

    @Autowired
    private MajorService majorService;
    @Autowired
    private CollegeService collegeService;


    /**
     * 添加专业的表单 以get的方式在浏览器输入地址栏也可以进入该页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/add_major")
    public String showAddMajorForm(ModelMap model) {
        List<College> colleges = collegeService.getAllColleges();
        model.addAttribute("colleges", colleges);
        System.out.println(colleges);
        return "add_major";
    }

    /**
     * 展示专业详情
     *
     * @param model   模型实体
     * @param pageNow 当前页
     * @return 首页分页显示
     */
    @RequestMapping("/show_major")
    public String showAddMajorAndCollege(ModelMap model, @RequestParam(value = "pageNow", defaultValue = "1") int pageNow) {
        List<Major> majors = majorService.getMajorListWithCollege();
        model.addAttribute("majors", majors);
        return "redirect:/index?pageNow=" + pageNow;
    }

    //    @RequestMapping("/page")
//    public String listPage(Model model, @RequestParam(value = "pageNow",defaultValue = "1") int pageNow) {
//        int pageSize = 10;
//        List<Major> majors = majorService.getPage(pageNow, pageSize);
//        //获取符合条件的记录数
//        int totalCount = majorService.counts();
//        //获取总页数
//        int pageSum = (majorService.counts() + pageSize - 1) / pageSize;
//
//        System.out.println("当前页: "+pageNow);
//        System.out.println("符合条件的记录数: "+totalCount);
//        System.out.println("总页数: "+pageSum);
//        Page page = new Page(pageNow, pageSize, totalCount, pageSum);
//        model.addAttribute("page",page);
//        model.addAttribute("majors",majors);
//        return "index";
//    }

    /**
     * 添加专业 处理前台POST方式提交
     *
     * @param cid     学院的主键id
     * @param model   模型
     * @param major   专业实体
     * @param pageNow 当前页
     * @return 首页分页显示
     */
    @RequestMapping(value = "/add_major", method = RequestMethod.POST)
    public String addMajor(@RequestParam("college.cid") int cid, Model model, Major major, @RequestParam(value = "pageNow", defaultValue = "1") int pageNow) {
        major.setCid(cid);
        int num = majorService.addMajor(major);
        if (num > 0) {
            model.addAttribute("major", major);
            List<Major> majors = majorService.getMajorListWithCollege();
            System.out.println(majors);
            model.addAttribute("majors", majors);
            return "redirect:/index?pageNow=" + pageNow;
        } else {
            return "redirect:/add_major";
        }
    }

    /**
     * 删除专业
     *
     * @param id 专业表的主键mid
     * @return 列表页
     */
    @RequestMapping("/delete")
    public String deleteById(int id) {
        int num = majorService.deleteById(id);
        System.out.println("成功删除" + num + "条记录");
        return "redirect:/show_major";
    }

    /**
     * 进入某专业的详情页
     *
     * @param id    专业的主键mid
     * @param model 模型实体
     * @return major_detail
     */
    @RequestMapping("/detail")
    public String detail(int id, Model model) {
        Major major = majorService.detail(id);
        model.addAttribute("major", major);
        System.out.println(major);
        return "major_detail";
    }


    /**
     * 编辑专业
     * @param id    专业的mid
     * @param model 模型实体
     * @return 修改页
     */
    @RequestMapping("/edit_major")
    public String editMajor(int id, Model model) {
        Major major = majorService.getMajorById(id);
        model.addAttribute("major", major);
        System.out.println(major);
        List<College> colleges = collegeService.getAllColleges();
        model.addAttribute("colleges", colleges);
        return "update";
    }

    /**
     * 处理修改专业的POST请求
     *
     * @param id           专业的id
     * @param name         专业的名字
     * @param credit       学分
     * @param introduction 介绍
     * @param lifeyear     学制
     * @param cid          对应的学院id
     * @param major        专业
     * @return 展示专业的列表页
     */
    @RequestMapping(value = "/update_major", method = RequestMethod.POST)
    public String updateMajor(@RequestParam("id") String id, @RequestParam("mname") String name, @RequestParam("credit") int credit,
                              @RequestParam("introduction") String introduction, @RequestParam("lifeyear") int lifeyear,
                              @RequestParam("college.cid") int cid, Major major) {
        System.out.println("***************" + id);
        System.out.println(name);
        System.out.println(credit);
        System.out.println(cid);
        major.setMid(Integer.parseInt(id));
        major.setMname(name);
        major.setLifeyear(lifeyear);
        major.setIntroduction(introduction);
        major.setCredit(credit);
        System.out.println(major);
        int num = majorService.updateMajor(Integer.parseInt(id), name, credit, introduction, lifeyear, cid);
        System.out.println("------------" + num);
        return "redirect:/show_major";
    }

}
