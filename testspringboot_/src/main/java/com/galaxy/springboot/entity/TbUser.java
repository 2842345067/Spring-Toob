package com.galaxy.springboot.entity;

import java.util.List;

public class TbUser {
    private Integer uid;

    private String username;

    private String password;

    private String postbox;

    private String phone;

    private String information;

    private String area;
    
    private List<Takenotes> takenotes;

    public List<Takenotes> getTakenotes() {
		return takenotes;
	}

	public void setTakenotes(List<Takenotes> takenotes) {
		this.takenotes = takenotes;
	}

	public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    @Override
	public String toString() {
		return "TbUser [uid=" + uid + ", username=" + username + ", password=" + password + ", postbox=" + postbox
				+ ", phone=" + phone + ", information=" + information + ", area=" + area + "]";
	}

	public String getPostbox() {
        return postbox;
    }

    public void setPostbox(String postbox) {
        this.postbox = postbox == null ? null : postbox.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information == null ? null : information.trim();
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }
}