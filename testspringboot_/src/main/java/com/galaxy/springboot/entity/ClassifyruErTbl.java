package com.galaxy.springboot.entity;

public class ClassifyruErTbl {
    private Integer id;

    private String classifyruEr;

    private Integer classifyruId;

    @Override
	public String toString() {
		return "ClassifyruErTbl [id=" + id + ", classifyruEr=" + classifyruEr + ", classifyruId=" + classifyruId + "]";
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassifyruEr() {
        return classifyruEr;
    }

    public void setClassifyruEr(String classifyruEr) {
        this.classifyruEr = classifyruEr == null ? null : classifyruEr.trim();
    }

    public Integer getClassifyruId() {
        return classifyruId;
    }

    public void setClassifyruId(Integer classifyruId) {
        this.classifyruId = classifyruId;
    }
}