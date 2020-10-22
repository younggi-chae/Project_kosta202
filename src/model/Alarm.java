package model;

import java.io.Serializable;

public class Alarm implements Serializable {
	private int alarmNo;
	private String buyId;
	private int buyNo;
	private String sellId;
	private int sellNo;
	
	public Alarm() {}

	public Alarm(int alarmNo, String buyId, int buyNo, String sellId, int sellNo) {
		super();
		this.alarmNo = alarmNo;
		this.buyId = buyId;
		this.buyNo = buyNo;
		this.sellId = sellId;
		this.sellNo = sellNo;
	}

	public int getAlarmNo() {
		return alarmNo;
	}

	public void setAlarmNo(int alarmNo) {
		this.alarmNo = alarmNo;
	}

	public String getBuyId() {
		return buyId;
	}

	public void setBuyId(String buyId) {
		this.buyId = buyId;
	}

	public int getBuyNo() {
		return buyNo;
	}

	public void setBuyNo(int buyNo) {
		this.buyNo = buyNo;
	}

	public String getSellId() {
		return sellId;
	}

	public void setSellId(String sellId) {
		this.sellId = sellId;
	}

	public int getSellNo() {
		return sellNo;
	}

	public void setSellNo(int sellNo) {
		this.sellNo = sellNo;
	}

	@Override
	public String toString() {
		return "Alarm [alarmNo=" + alarmNo + ", buyId=" + buyId + ", buyNo=" + buyNo + ", sellId=" + sellId
				+ ", sellNo=" + sellNo + "]";
	}
	
}
