package com.galaxy.springboot.blank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.galaxy.springboot.blank.service.BlankService;
import com.galaxy.springboot.entity.TbUser;

@Controller
@RequestMapping("/blan")
public class blankController {
	
	@Autowired
	private BlankService blankController;
	
	//跳转记录详情页
	@RequestMapping("/blank")
	private String blank(int uid, Model mode) {
		List<TbUser> tbuser=blankController.list(uid);
		List<TbUser> tbuser1=blankController.select(uid);
		Integer zhiru=blankController.Expenditureint(uid);
		Integer zhichu=blankController.Payint(uid);
		if(zhiru==null) {
			zhiru=0;
		}
		if(zhichu==null){
			zhichu=0;
		}
		Integer zong=zhiru-zhichu;
		mode.addAttribute("tbuser", tbuser);
		mode.addAttribute("tbuser1", tbuser1);
		mode.addAttribute("zong", zong);
		return "/blank/blank";
		}
	//跳转支入页
	@RequestMapping("/blankexpenditure")
	private String blankexpenditure(int uid, Model mode) {
		List<TbUser> selectLeExpenditureer=blankController.selectLeExpenditurejilu(uid);
		List<TbUser> tbuser=blankController.list(uid);
		List<TbUser> tbuser1=blankController.select(uid);
		Integer zhiru=blankController.Expenditureint(uid);
		if(zhiru==null) {
			zhiru=0;
		}
		mode.addAttribute("tbuser", tbuser);
		mode.addAttribute("tbuser1", tbuser1);
		mode.addAttribute("selectLeExpenditureer", selectLeExpenditureer);
		mode.addAttribute("zhiru", zhiru);
		return "/blank/blankexpenditure";
		}
	//跳转支出页
	@RequestMapping("/blankpay")
	private String blankpay(int uid, Model mode) {
		List<TbUser> selectLePayer=blankController.selectLePayjilu(uid);
		List<TbUser> tbuser=blankController.list(uid);
		List<TbUser> tbuser1=blankController.select(uid);
		Integer zhichu=blankController.Payint(uid);
		if(zhichu==null){
			zhichu=0;
		}
		mode.addAttribute("tbuser", tbuser);
		mode.addAttribute("tbuser1", tbuser1);
		mode.addAttribute("selectLePayer", selectLePayer);
		mode.addAttribute("zhichu", zhichu);
		return "/blank/blankpay";
		}
	
}
