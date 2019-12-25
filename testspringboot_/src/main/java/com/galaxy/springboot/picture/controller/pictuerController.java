package com.galaxy.springboot.picture.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.picture.service.PictuerService;

@Controller
@RequestMapping("/pict")
public class pictuerController {
	
	
	@Autowired
	private PictuerService pictuerService;
	
	//跳转图片
	@RequestMapping("/picture")
	private String picture(int uid, Model model) {	
		List<TbUser> tbuser=pictuerService.list(uid);
		List<TbUser> tbuser1=pictuerService.select(uid);
		model.addAttribute("tbuser", tbuser);
		model.addAttribute("tbuser1", tbuser1);
		return "/picture/picture";
		}

	//跳转上传图片
	@RequestMapping("/pictureupload")
	private String pictureupload(int uid, Model model) {
		List<TbUser> tbuser=pictuerService.list(uid);
		List<TbUser> tbuser1=pictuerService.select(uid);
		model.addAttribute("tbuser", tbuser);
		model.addAttribute("tbuser1", tbuser1);
		return "/picture/pictureupload";
		}
	
}
