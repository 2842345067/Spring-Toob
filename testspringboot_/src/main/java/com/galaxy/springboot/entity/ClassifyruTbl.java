package com.galaxy.springboot.entity;

import java.util.List;

public class ClassifyruTbl {
    private Integer rid;

    private String classifyru;
    
    private List<ClassifyruErTbl> classifyruErTbl;


	@Override
	public String toString() {
		return "ClassifyruTbl [rid=" + rid + ", classifyru=" + classifyru + ", classifyruErTbl=" + classifyruErTbl
				+ "]";
	}

	public List<ClassifyruErTbl> getClassifyruErTbl() {
		return classifyruErTbl;
	}

	public void setClassifyruErTbl(List<ClassifyruErTbl> classifyruErTbl) {
		this.classifyruErTbl = classifyruErTbl;
	}

	public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getClassifyru() {
        return classifyru;
    }

    public void setClassifyru(String classifyru) {
        this.classifyru = classifyru == null ? null : classifyru.trim();
    }
}