package com.gxa.model.pratice;
/**
 * 项目实施的项目进度表实体类
 * @author mabaoyun
 *
 */
public class Progress {

	private int progress_id;//进度表id
	private int pro_id;//项目申报表id
	private int progress_place_status;//是否到位
	private int progress_ok;//是否启动
	private double progress_assi_money;//补助资金
	private double progress_bf_money;//拨付到账资金
	private int progress_bz;//报账资金
	private String progress_remark;//备注
	private String progress_department;//填报单位
	public int getProgress_id() {
		return progress_id;
	}
	public void setProgress_id(int progress_id) {
		this.progress_id = progress_id;
	}
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public int getProgress_place_status() {
		return progress_place_status;
	}
	public void setProgress_place_status(int progress_place_status) {
		this.progress_place_status = progress_place_status;
	}
	public double getProgress_assi_money() {
		return progress_assi_money;
	}
	public void setProgress_assi_money(double progress_assi_money) {
		this.progress_assi_money = progress_assi_money;
	}
	public double getProgress_bf_money() {
		return progress_bf_money;
	}
	public void setProgress_bf_money(double progress_bf_money) {
		this.progress_bf_money = progress_bf_money;
	}
	public int getProgress_bz() {
		return progress_bz;
	}
	public void setProgress_bz(int progress_bz) {
		this.progress_bz = progress_bz;
	}
	public int getProgress_ok() {
		return progress_ok;
	}
	public void setProgress_ok(int progress_ok) {
		this.progress_ok = progress_ok;
	}
	public String getProgress_remark() {
		return progress_remark;
	}
	public void setProgress_remark(String progress_remark) {
		this.progress_remark = progress_remark;
	}
	public String getProgress_department() {
		return progress_department;
	}
	public void setProgress_department(String progress_department) {
		this.progress_department = progress_department;
	}

}
