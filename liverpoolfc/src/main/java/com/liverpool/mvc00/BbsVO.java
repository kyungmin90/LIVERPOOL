package com.liverpool.mvc00;

public class BbsVO {
	private int BNO;
	private String BTITLE;
	private String BCONTENT;
	private String BWRITER;
	private String BDATE;
	private String searchInput;
	
	
	public String getSearchInput() {
		return searchInput;
	}
	public void setSearchInput(String searchInput) {
		this.searchInput = searchInput;
	}
	public int getBNO() {
		return BNO;
	}
	public void setBNO(int bNO) {
		BNO = bNO;
	}
	public String getBTITLE() {
		return BTITLE;
	}
	public void setBTITLE(String bTITLE) {
		BTITLE = bTITLE;
	}
	public String getBCONTENT() {
		return BCONTENT;
	}
	public void setBCONTENT(String bCONTENT) {
		BCONTENT = bCONTENT;
	}
	public String getBWRITER() {
		return BWRITER;
	}
	public void setBWRITER(String bWRITER) {
		BWRITER = bWRITER;
	}
	public String getBDATE() {
		return BDATE;
	}
	public void setBDATE(String bDATE) {
		BDATE = bDATE;
	}
	
	
	
	
	
}
