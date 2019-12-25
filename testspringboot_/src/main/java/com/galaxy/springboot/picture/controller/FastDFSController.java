package com.galaxy.springboot.picture.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * @ClassName FastDFSController
 * @Description FastDFS 文件上传下载删除
 * @Author coco
 * @Data 2018/11/16 10:25
 * @Version 1.0
 **/
 
@RestController
@RequestMapping("/fdfs")
public class FastDFSController {
	
	@Autowired
    private FastDFSClientWrapper dfsClient;

    @PostMapping("/files-anon/fdfsupload")
    public String fdfsupload(@RequestParam("file") MultipartFile file) throws Exception {
    	System.out.println("2"+file);
    	//可以判断传递过来的参数
        String imgUrl = dfsClient.uploadFile(file);
        System.out.println(imgUrl);
        return imgUrl;
    }
    }