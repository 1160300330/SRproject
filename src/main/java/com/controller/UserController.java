package com.controller;

import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.regex.Pattern;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/login")
    public String UserLogin() {
        return "pages-login";
    }

    @RequestMapping("/user")
    public String UserPage() {
        return "user/userPage";
    }

    @RequestMapping("/checkUser")
//    @ResponseBody
//    public String checkUser(String username,String password) {
//        User user = userService.queryUserById(username);
//        if(user!=null){
//            if(password.equals(user.getPassword())){
//                System.out.println("登录成功"+username+password+user.getPassword());
//            }
//            return "success";
//        }
//        System.out.println(username);
//        return "failed";
//    }
    public String checkUser(String userid,String password, Model model) {
        String id = userid;
        User user = userService.queryUserById(id);
        if(user!=null){
            if(password.equals(user.getPassword())){
                model.addAttribute("userid",userid);
                System.out.println("登录成功"+id+password+user.getPassword());
            }
            return "success";
        }
        System.out.println(id);
        return "failed";
    }
    @RequestMapping("/updateCount")
    public String updateCount(@RequestParam("id") String id,@RequestParam("money") String money,Model model){
        System.out.println("成功");
        //String id = (String)model.asMap().get("userid");
        Pattern pattern = Pattern.compile("[+-]?\\d+(.\\d+)?");
        if (pattern.matcher(money).matches()){
            double moneyval = Double.parseDouble(money);
            if(userService.updateCountById(id,moneyval)){
                System.out.println("成功");
            }
            else{
                System.out.println("请重新登陆");
            }
        }
        else{
            System.out.println("不合法的金额");
        }
        return "register";
    }
    @RequestMapping("/register")
    public String register(@RequestParam("id") String id,@RequestParam("password") String password,@RequestParam("name") String name){
        User user = new User(id,password,name,0);
        if(id!=""){
            if(userService.createUser(user)){
                System.out.println("创建账户成功");
            }
            else{
                System.out.println("账户已存在");
            }
        }
        else{
            System.out.println("用户名不能为空");
        }
        return "pages-login";
    }
}
