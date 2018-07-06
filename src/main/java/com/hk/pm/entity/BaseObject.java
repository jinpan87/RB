package com.hk.pm.entity;

import java.io.Serializable;

public class BaseObject implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long pId;
	private long cId;
	private long rId;
	private String pName;
	private String pCode;
	private int pType;
	private String pManager;
	private String cCode;
	private String cName;
	private float cTotalAmount;
	private float rUnreturnMoney;
	private String pSname;
	private String pScode;
	private float rBackAmount;
	private int rCount;
	private String rBackDay;
	private String pGrew;
	private String pSummary;
	private String pOverCause;
	private int pState;
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpCode() {
		return pCode;
	}
	public void setpCode(String pCode) {
		this.pCode = pCode;
	}
	public int getpType() {
		return pType;
	}
	public void setpType(int pType) {
		this.pType = pType;
	}
	public String getpManager() {
		return pManager;
	}
	public void setpManager(String pManager) {
		this.pManager = pManager;
	}
	public String getcCode() {
		return cCode;
	}
	public void setcCode(String cCode) {
		this.cCode = cCode;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public float getcTotalAmount() {
		return cTotalAmount;
	}
	public void setcTotalAmount(float cTotalAmount) {
		this.cTotalAmount = cTotalAmount;
	}
	public float getrUnreturnMoney() {
		return rUnreturnMoney;
	}
	public void setrUnreturnMoney(float rUnreturnMoney) {
		this.rUnreturnMoney = rUnreturnMoney;
	}
	public String getpSname() {
		return pSname;
	}
	public void setpSname(String pSname) {
		this.pSname = pSname;
	}
	public String getpScode() {
		return pScode;
	}
	public void setpScode(String pScode) {
		this.pScode = pScode;
	}
	public float getrBackAmount() {
		return rBackAmount;
	}
	public void setrBackAmount(float rBackAmount) {
		this.rBackAmount = rBackAmount;
	}
	public int getrCount() {
		return rCount;
	}
	public void setrCount(int rCount) {
		this.rCount = rCount;
	}
	public String getrBackDay() {
		return rBackDay;
	}
	public void setrBackDay(String rBackDay) {
		this.rBackDay = rBackDay;
	}
	public String getpGrew() {
		return pGrew;
	}
	public void setpGrew(String pGrew) {
		this.pGrew = pGrew;
	}
	public String getpSummary() {
		return pSummary;
	}
	public void setpSummary(String pSummary) {
		this.pSummary = pSummary;
	}
	public int getpState() {
		return pState;
	}
	public void setpState(int pState) {
		this.pState = pState;
	}
	public String getpOverCause() {
		return pOverCause;
	}
	public void setpOverCause(String pOverCause) {
		this.pOverCause = pOverCause;
	}
	public long getpId() {
		return pId;
	}
	public void setpId(long pId) {
		this.pId = pId;
	}
	public long getcId() {
		return cId;
	}
	public void setcId(long cId) {
		this.cId = cId;
	}
	public long getrId() {
		return rId;
	}
	public void setrId(long rId) {
		this.rId = rId;
	}
	
	
}
