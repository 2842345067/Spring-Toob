package com.galaxy.springboot.entity;

public class FileTbl {
    private Integer id;

    private String fileLujing;

    private Integer fileId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFileLujing() {
        return fileLujing;
    }

    public void setFileLujing(String fileLujing) {
        this.fileLujing = fileLujing == null ? null : fileLujing.trim();
    }

    public Integer getFileId() {
        return fileId;
    }

    public void setFileId(Integer fileId) {
        this.fileId = fileId;
    }
}