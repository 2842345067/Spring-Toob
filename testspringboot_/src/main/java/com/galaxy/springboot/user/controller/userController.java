package com.galaxy.springboot.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.user.service.TbUserService;


@Controller
@RequestMapping("/user")
public class userController {

		@Autowired
		private TbUserService tbuserService;
		
		//登录界面
		@RequestMapping("/login")
		@ResponseBody
		public TbUser login(TbUser tbUser,HttpSession session) {
			TbUser user = tbuserService.login(tbUser);
			session.setAttribute("user", user);	
			return user;
		}
		
		//注册成功跳转登录界面
		@RequestMapping("/register")
		private String register() {
			return "login";
			}
		

		//注册成功
		@RequestMapping("/insert")
		@ResponseBody
		public int insert(TbUser tbUser) {

			int insert=tbuserService.insert(tbUser);

			return insert;
		}

		//注册按钮跳注册
		@RequestMapping("/register1")
		private String register1() {
				return "register";
			}
		
		
		//取消跳登录
		@RequestMapping("/login1")
		private String login1() {
				return "login";
			}
		
		
		//查询
		@RequestMapping("/list")
		public List<TbUser> list() {
			List<TbUser> user=tbuserService.list();
			return user;
		}
		//删除
		@RequestMapping("/delete")
		public int delete(int uid) {
			
			int delete=tbuserService.delete(uid);
			return delete;
		}

		//更新
		@RequestMapping("/update")
		public int update(TbUser tbUser) {
			
			int update=tbuserService.update(tbUser);
			return update;
		}


		
		
		
		
		
		
		
		
		
		
		
		
}
