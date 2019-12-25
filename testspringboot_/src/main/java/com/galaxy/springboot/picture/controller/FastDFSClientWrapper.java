package com.galaxy.springboot.picture.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.Charset;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.github.tobato.fastdfs.domain.StorePath;
import com.github.tobato.fastdfs.exception.FdfsUnsupportStorePathException;
import com.github.tobato.fastdfs.service.FastFileStorageClient;

//@Slf4j
@Component
public class FastDFSClientWrapper {

    @Autowired
    private FastFileStorageClient storageClient;

    @Autowired
    private AppConfig appConfig;   // 项目参数配置

    /**
     * 上传文件
     * @param file 文件对象
     * @return 文件访问地址
     * @throws IOException
     */
    public String uploadFile(MultipartFile file) throws IOException {
        StorePath storePath = storageClient.uploadFile(file.getInputStream(),file.getSize(), FilenameUtils.getExtension(file.getOriginalFilename()),null);
        return getResAccessUrlCancelPortNumber(storePath);
    }

    /**
     * 将一段字符串生成一个文件上传
     * @param content 文件内容
     * @param fileExtension
     * @return
     */
    public String uploadFile(String content, String fileExtension) {
        byte[] buff = content.getBytes(Charset.forName("UTF-8"));
        ByteArrayInputStream stream = new ByteArrayInputStream(buff);
        StorePath storePath = storageClient.uploadFile(stream,buff.length, fileExtension,null);
        return getResAccessUrlCancelPortNumber(storePath);
    }

    // 封装图片完整URL地址
    //eg: http://192.168.25.133:22122/group1/M00/00/01/wKgZhV36M4uAaB2eAABBXjFOxTk223.jpg
    private String getResAccessUrl(StorePath storePath) {
        String fileUrl = "http://" + appConfig.getResHost()
                + ":" + appConfig.getStoragePort() + "/" + storePath.getFullPath();
        return fileUrl;
    }
    
    // 封装图片完整URL地址,去掉端口号 
    //eg: http://192.168.25.133/group1/M00/00/01/wKgZhV36M4uAaB2eAABBXjFOxTk223.jpg
    private String getResAccessUrlCancelPortNumber(StorePath storePath) {
        String fileUrl = "http://" + appConfig.getResHost()+ "/" + storePath.getFullPath();
        return fileUrl;
    }

    /**
     * 删除文件
     * @param fileUrl 文件访问地址
     * @return
     */
    public void deleteFile(String fileUrl) {
        if (StringUtils.isEmpty(fileUrl)) {
            return;
        }
        try {
            StorePath storePath = StorePath.praseFromUrl(fileUrl);
            storageClient.deleteFile(storePath.getGroup(), storePath.getPath());
        } catch (FdfsUnsupportStorePathException e) {
            //log.warn(e.getMessage());
            e.printStackTrace();
        }
    }
}