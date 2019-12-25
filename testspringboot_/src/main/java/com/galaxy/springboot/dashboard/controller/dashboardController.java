package com.galaxy.springboot.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.galaxy.springboot.dashboard.service.DashboardService;
import com.galaxy.springboot.entity.Takenotes;
import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.user.service.TbUserService;

@Controller
@RequestMapping("/dash")
public class dashboardController {
	
	@Autowired
	private DashboardService dashboardService;
		
	//跳转记账首页
		@RequestMapping("/dashboard")
		private String dashboard(int uid, Model model) {	
			List<TbUser> tbuser=dashboardService.list(uid);
			List<TbUser> tbuser1=dashboardService.select(uid);
			//总条数
			int tbuseroverall=dashboardService.selectoverall(uid);
			Integer zhiru=dashboardService.Expenditureint(uid);
			Integer zhichu=dashboardService.Payint(uid);
			if(zhiru==null) {
				zhiru=0;
			}
			if(zhichu==null){
				zhichu=0;
			}
			Integer zong=zhiru-zhichu;
			 model.addAttribute("tbuseroverall", tbuseroverall);
			 model.addAttribute("tbuser", tbuser);
			 model.addAttribute("tbuser1", tbuser1);
			 model.addAttribute("zong", zong);
			 model.addAttribute("zhiru", zhiru);
			 model.addAttribute("zhichu", zhichu);
			return "dashboard";
		}

		
}
