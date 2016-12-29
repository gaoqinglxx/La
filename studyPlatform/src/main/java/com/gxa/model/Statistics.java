package com.gxa.model;

public class Statistics {
	private Integer stat_id;//效益表id
	private Integer pro_id;//项目id
	private Double stat_assi_money;//补助资金
	private Double stat_real_money;//到账资金
	private int stat_amount;//受益户数
	
	public Statistics(){};
	
	public Statistics(Integer stat_id, Integer pro_id, Double stat_assi_money, Double stat_real_money,
			int stat_amount) {
		super();
		this.stat_id = stat_id;
		this.pro_id = pro_id;
		this.stat_assi_money = stat_assi_money;
		this.stat_real_money = stat_real_money;
		this.stat_amount = stat_amount;
	}

	public Integer getStat_id() {
		return stat_id;
	}
	public void setStat_id(Integer stat_id) {
		this.stat_id = stat_id;
	}
	public Integer getPro_id() {
		return pro_id;
	}
	public void setPro_id(Integer pro_id) {
		this.pro_id = pro_id;
	}
	public Double getStat_assi_money() {
		return stat_assi_money;
	}
	public void setStat_assi_money(Double stat_assi_money) {
		this.stat_assi_money = stat_assi_money;
	}
	public Double getStat_real_money() {
		return stat_real_money;
	}
	public void setStat_real_money(Double stat_real_money) {
		this.stat_real_money = stat_real_money;
	}
	public int getStat_amount() {
		return stat_amount;
	}
	public void setStat_amount(int stat_amount) {
		this.stat_amount = stat_amount;
	}

	@Override
	public String toString() {
		return "Statistics [stat_id=" + stat_id + ", pro_id=" + pro_id + ", stat_assi_money=" + stat_assi_money
				+ ", stat_real_money=" + stat_real_money + ", stat_amount=" + stat_amount + "]";
	}
	
	
}

