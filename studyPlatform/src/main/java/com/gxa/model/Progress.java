package com.gxa.model;
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
	private double progress_bz;//报账进度
	private String progress_finish;
	private String progress_remark;//备注
	private String progress_department;//填报单位
	private String progress_res;//单位法人
	private String progress_informant;//填报人
	public int getProgress_id() {
		return progress_id;
	}
	public String getProgress_finish() {
		return progress_finish;
	}
	public void setProgress_finish(String progress_finish) {
		this.progress_finish = progress_finish;
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
	public int getProgress_ok() {
		return progress_ok;
	}
	public void setProgress_ok(int progress_ok) {
		this.progress_ok = progress_ok;
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
	public double getProgress_bz() {
		return progress_bz;
	}
	public void setProgress_bz(double progress_bz) {
		this.progress_bz = progress_bz;
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
	public String getProgress_res() {
		return progress_res;
	}
	public void setProgress_res(String progress_res) {
		this.progress_res = progress_res;
	}
	public String getProgress_informant() {
		return progress_informant;
	}
	public void setProgress_informant(String progress_informant) {
		this.progress_informant = progress_informant;
	}
}
