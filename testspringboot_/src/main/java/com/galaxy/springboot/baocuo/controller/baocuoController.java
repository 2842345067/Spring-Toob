package com.galaxy.springboot.baocuo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.galaxy.springboot.baocuo.service.BaocuoService;
import com.galaxy.springboot.entity.TbUser;


@Controller
@RequestMapping("/404")
public class baocuoController {
	
	@Autowired
	private BaocuoService baocuoService;
	
	
//跳转404界面
	@RequestMapping("/404")
	private String baocuo(int uid, Model model) {	
		List<TbUser> tbuser=baocuoService.list(uid);
		List<TbUser> tbuser1=baocuoService.select(uid);
		model.addAttribute("tbuser", tbuser);
		model.addAttribute("tbuser1", tbuser1);
		return "404";
		}

}
