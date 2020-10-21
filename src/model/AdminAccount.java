package model;

import java.io.Serializable;

public class AdminAccount implements Serializable {
	private int actionNo;
	private int dealNo;
	private String accountNo;
	private String isDeposit;
	private String isWithdraw;
	private String depositDate;
	private String withdrawDate;
	private int balance;
	
	public AdminAccount() {}

	public AdminAccount(int actionNo, int dealNo, String accountNo, String isDeposit, String isWithdraw,
			String depositDate, String withdrawDate, int balance) {
		super();
		this.actionNo = actionNo;
		this.dealNo = dealNo;
		this.accountNo = accountNo;
		this.isDeposit = isDeposit;
		this.isWithdraw = isWithdraw;
		this.depositDate = depositDate;
		this.withdrawDate = withdrawDate;
		this.balance = balance;
	}

	public int getActionNo() {
		return actionNo;
	}

	public void setActionNo(int actionNo) {
		this.actionNo = actionNo;
	}

	public int getDealNo() {
		return dealNo;
	}

	public void setDealNo(int dealNo) {
		this.dealNo = dealNo;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getIsDeposit() {
		return isDeposit;
	}

	public void setIsDeposit(String isDeposit) {
		this.isDeposit = isDeposit;
	}

	public String getIsWithdraw() {
		return isWithdraw;
	}

	public void setIsWithdraw(String isWithdraw) {
		this.isWithdraw = isWithdraw;
	}

	public String getDepositDate() {
		return depositDate;
	}

	public void setDepositDate(String depositDate) {
		this.depositDate = depositDate;
	}

	public String getWithdrawDate() {
		return withdrawDate;
	}

	public void setWithdrawDate(String withdrawDate) {
		this.withdrawDate = withdrawDate;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "AdminAccount [actionNo=" + actionNo + ", dealNo=" + dealNo + ", accountNo=" + accountNo + ", isDeposit="
				+ isDeposit + ", isWithdraw=" + isWithdraw + ", depositDate=" + depositDate + ", withdrawDate="
				+ withdrawDate + ", balance=" + balance + "]";
	}
	
}
