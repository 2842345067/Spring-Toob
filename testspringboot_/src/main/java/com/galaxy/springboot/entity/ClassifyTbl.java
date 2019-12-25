package com.galaxy.springboot.entity;

import java.util.List;

public class ClassifyTbl {
    private Integer cid;

    private String classify;
    
    private List<ClassifyErTbl> classifyErTbl;

    @Override
	public String toString() {
		return "ClassifyTbl [cid=" + cid + ", classify=" + classify + ", classifyErTbl=" + classifyErTbl + "]";
	}

	public List<ClassifyErTbl> getClassifyErTbl() {
		return classifyErTbl;
	}

	public void setClassifyErTbl(List<ClassifyErTbl> classifyErTbl) {
		this.classifyErTbl = classifyErTbl;
	}

	public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify == null ? null : classify.trim();
    }
}