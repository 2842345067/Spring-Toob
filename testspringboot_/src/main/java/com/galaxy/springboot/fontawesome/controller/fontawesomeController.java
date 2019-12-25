package com.galaxy.springboot.fontawesome.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.fontawesome.service.FontawesomeService;

@Controller
@RequestMapping("/font")
public class fontawesomeController {
	
	@Autowired
	private FontawesomeService fontawesomeService;
		
	/**
     * 获取过去第几天的日期
     *
     * @param past
     * @return
     */
    public static String getPastDate(int past,Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.DATE, calendar.get(Calendar.DATE) - past);
        Date today = calendar.getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String result = sdf.format(today);
        return result;
    }

	//图示
		@RequestMapping("/fontawesome")
		private String dashboard(int uid, Model model) {	
			List<TbUser> tbuser=fontawesomeService.list(uid);
			List<TbUser> tbuser1=fontawesomeService.select(uid);
			Integer zhiru=fontawesomeService.Expenditureint(uid);
			Integer zhichu=fontawesomeService.Payint(uid);
			if(zhiru==null) {
				zhiru=0;
			}
			if(zhichu==null){
				zhichu=0;
			}
			Integer zong=zhiru-zhichu;
			 model.addAttribute("tbuser", tbuser);
			 model.addAttribute("tbuser1", tbuser1);
			 model.addAttribute("zong", zong);
			 model.addAttribute("zhiru", zhiru);
			 model.addAttribute("zhichu", zhichu);
			 Date date = new Date();
			 
			 String str  = getPastDate(7,date);
			 System.out.println("str="+str);
			return "fontawesome";
		}

		
}