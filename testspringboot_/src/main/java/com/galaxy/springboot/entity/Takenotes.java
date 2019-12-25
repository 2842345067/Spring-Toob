package com.galaxy.springboot.entity;

import java.util.Date;


public class Takenotes {
    private Integer id;
    
    private String classbie;

	private String detail;

    private String status;
    
    private Date time;

    private Double money;

    private Integer userId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    
    public String getClassbie() {
		return classbie;
	}

	public void setClassbie(String classbie) {
		this.classbie = classbie;
	}

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Double getMoney() {
        return money;
    }



	public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

	@Override
	public String toString() {
		return "Takenotes [id=" + id + ", classbie=" + classbie + ", detail=" + detail + ", status=" + status
				+ ", time=" + time + ", money=" + money + ", userId=" + userId + "]";
	}
    

}