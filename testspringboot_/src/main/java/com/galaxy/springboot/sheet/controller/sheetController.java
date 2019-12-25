package com.galaxy.springboot.sheet.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.galaxy.springboot.entity.ClassifyTbl;
import com.galaxy.springboot.entity.ClassifyruTbl;
import com.galaxy.springboot.entity.Takenotes;
import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.sheet.service.SheetService;

import ch.qos.logback.core.net.SyslogOutputStream;

@Controller
@RequestMapping("/shee")
public class sheetController {

	@Autowired
	private SheetService sheetService;

	// 跳转记录管理首页
	@RequestMapping("/sheet")
	private String sheet(int uid, Model model,HttpSession session) {
		List<TbUser> tbuser = sheetService.selectLe(uid);
		List<TbUser> tbuser1 = sheetService.select(uid);
		int tbuseroverall = sheetService.selectoverall(uid);
		TbUser user = sheetService.login(uid);
		model.addAttribute("tbuser", tbuser);
		model.addAttribute("tbuser1", tbuser1);
		model.addAttribute("tbuseroverall", tbuseroverall);
		session.setAttribute("user", user);	
		return "/sheet/sheet";
	}

	// 跳转新建首页
	@RequestMapping("/sheetinsert")
	private String sheetinsert(int uid, Model model) {
		 List<ClassifyTbl> classifyTbl=sheetService.selcttbl();
		 List<ClassifyruTbl> classifyruTbl=sheetService.selctrutbl();
		List<TbUser> tbuser = sheetService.selectLe(uid);
		List<TbUser> tbuser1 = sheetService.select(uid);
		//总条数
		int tbuseroverall=sheetService.selectoverall(uid);
		 model.addAttribute("classifyTbl", classifyTbl);
		 model.addAttribute("classifyruTbl", classifyruTbl);
		model.addAttribute("tbuser", tbuser);
		model.addAttribute("tbuser1", tbuser1);
		 model.addAttribute("tbuseroverall", tbuseroverall);
		
		return "/sheet/sheetinsert";
	}
	
	// 跳转修改首页
	@RequestMapping("/sheetupdate")
	private String sheetupdate(int uid, Model model) {
		
		 List<ClassifyTbl> classifyTbl=sheetService.selcttbl();
		 List<ClassifyruTbl> classifyruTbl=sheetService.selctrutbl();
		List<TbUser> tbuser = sheetService.selectLe(uid);
		List<TbUser> tbuser1 = sheetService.select(uid);
		//总条数
		int tbuseroverall=sheetService.selectoverall(uid);
		
		 model.addAttribute("classifyTbl", classifyTbl);
		 model.addAttribute("classifyruTbl", classifyruTbl);
		model.addAttribute("tbuser", tbuser);
		model.addAttribute("tbuser1", tbuser1);
		 model.addAttribute("tbuseroverall", tbuseroverall);
		return "/sheet/sheetupdate";
	}
	
	
	// 跳转模糊记录管理首页
	@RequestMapping("/sheetlist")
	private String sheetlist(int uid,String like,Model model,HttpSession session) {
		//System.out.println(uid+" "+like+" 时间 "+date);
		List<TbUser> tbuser1 = sheetService.select(uid);
		int tbuseroverall = sheetService.selectoverall(uid);
		List<TbUser> list=sheetService.list(like,uid);
		TbUser user = sheetService.login(uid);
		model.addAttribute("tbuser1", tbuser1);
		model.addAttribute("tbuseroverall", tbuseroverall);
		model.addAttribute("list", list);
		session.setAttribute("user", user);	
		return "/sheet/sheetlist";
	}
	
	
	
	
	
	
	
	
	// 查询二级类别
	@RequestMapping("/classifyTbl")
	@ResponseBody
	private List<ClassifyTbl> classifyTbl(int cid) {
		//根据id查询对应数据
		 List<ClassifyTbl> classifyTbl=sheetService.selcttbler(cid);
		 System.out.println(classifyTbl);
		return classifyTbl;
	}
	
	// 查询支入二级类别
	@RequestMapping("/classifyruTbl")
	@ResponseBody
	private List<ClassifyruTbl> classifyruTbl(int rid) {
		//根据id查询对应数据
		 List<ClassifyruTbl> classifyruTbl=sheetService.selctrutbler(rid);
		return classifyruTbl;
	}
	
	
	
	// 跳转修改首页用的id
	@RequestMapping("/updateid")
	@ResponseBody
	private Takenotes updateid(int id,HttpSession session) {
		//根据id查询对应数据
		Takenotes iduser=sheetService.selectid(id);
		System.out.println(iduser);
		String[] strarray=iduser.getClassbie().split(">");
	    //ClassifyruTbl classfy =  sheetService.selectClassFyByName(strarray[0].trim());
	    //System.out.println("=="+classfy.getClassifyru());
		session.setAttribute("zhiru", strarray[0].trim());
		session.setAttribute("zhichu", strarray[1].trim());
		//session.setAttribute("zhichuid", classfy.getRid());
		session.setAttribute("iduser", iduser);
		return iduser;
	}


	// 新增
	@RequestMapping("/insert")
	@ResponseBody
	public int insert(Takenotes takenotes) throws ParseException {
//		 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");//设置日期格式
//         System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
		Date a=new Date();
		takenotes.setTime(new Date());
		return sheetService.insert(takenotes);
	}
	// 修改
	@RequestMapping("/update")
	@ResponseBody
	public int update(Takenotes takenotes) throws ParseException {
		 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");//设置日期格式
         System.out.println(df.format(new Date()));// new Date()为获取当前系统时间

		takenotes.setTime(df.parse(df.format(new Date())));
		return sheetService.update(takenotes);
	}
	// 删除
	@RequestMapping("/delete")
	@ResponseBody
	public int  delete(String id) {

		return sheetService.delete(id);
	}
	
	
	
}
