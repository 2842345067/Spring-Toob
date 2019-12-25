package com.galaxy.springboot.entity;

public class ClassifyErTbl {
    private Integer id;

    private String classifyEr;

    private Integer classifyId;

    @Override
	public String toString() {
		return "ClassifyErTbl [id=" + id + ", classifyEr=" + classifyEr + ", classifyId=" + classifyId + "]";
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassifyEr() {
        return classifyEr;
    }

    public void setClassifyEr(String classifyEr) {
        this.classifyEr = classifyEr == null ? null : classifyEr.trim();
    }

    public Integer getClassifyId() {
        return classifyId;
    }

    public void setClassifyId(Integer classifyId) {
        this.classifyId = classifyId;
    }
}