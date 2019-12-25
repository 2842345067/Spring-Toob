package com.galaxy.springboot.individual.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.individual.service.IndividualService;

@Controller
@RequestMapping("/indi")
public class individualController {
	
	@Autowired
	private IndividualService individualService;

//跳转个人信息
	@RequestMapping("/individual")
	private String individual(int uid, Model model) {
		//所有
		List<TbUser> tbuser=individualService.selectLeftjoin(uid);
		//用户所有
		List<TbUser> tbuser1=individualService.select(uid);
		//总条数
		int tbuseroverall=individualService.selectoverall(uid);
		//支入
		int tbuserExpenditure=individualService.selectLeExpenditure(uid);
		//支出
		int tbuserPay=individualService.selectLePay(uid);

		
		 model.addAttribute("tbuser", tbuser);
		 model.addAttribute("tbuser1", tbuser1);
		 model.addAttribute("tbuseroverall", tbuseroverall);
		 model.addAttribute("tbuserExpenditure", tbuserExpenditure);
		 model.addAttribute("tbuserPay", tbuserPay);
		return "/individual/individual";
		}
	
	
	//更新
		@RequestMapping("/update")
		@ResponseBody
		private int update(TbUser tb) {
			int num=individualService.update(tb);
		return num;
		}

	
	//跳转修改密码界面
		@RequestMapping("/individualupdate")
		private String individualupdate(int uid, Model model) {
			//所有
			List<TbUser> tbuser=individualService.selectLeftjoin(uid);
			//用户所有
			List<TbUser> tbuser1=individualService.select(uid);
			//总条数
			int tbuseroverall=individualService.selectoverall(uid);
			//支入
			int tbuserExpenditure=individualService.selectLeExpenditure(uid);
			//支出
			int tbuserPay=individualService.selectLePay(uid);
			 model.addAttribute("tbuser", tbuser);
			 model.addAttribute("tbuser1", tbuser1);
			 model.addAttribute("tbuseroverall", tbuseroverall);
			 model.addAttribute("tbuserExpenditure", tbuserExpenditure);
			 model.addAttribute("tbuserPay", tbuserPay);
			return "/individual/individualupdate";
			}
	
	
}
