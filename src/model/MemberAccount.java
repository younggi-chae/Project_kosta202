package model;

import java.io.Serializable;

public class MemberAccount implements Serializable {
	private String accountNo;
	private String id;
	private String bankName;
	
	public MemberAccount() {}

	public MemberAccount(String accountNo, String id, String bankName) {
		super();
		this.accountNo = accountNo;
		this.id = id;
		this.bankName = bankName;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	@Override
	public String toString() {
		return "MemberAccount [accountNo=" + accountNo + ", id=" + id + ", bankName=" + bankName + "]";
	}

}
