package test;

public class TestVO {
	private String name = "rose";
	private int regNum = 123456;
	private int comNum;
	private int excelNum;

	public void setComNum(int comNum) {
		this.comNum = comNum;
	}
	
	public void setExcelNum(int excelNum) {
		this.excelNum = excelNum;
	}	

	public String getName() {
		return name;
	}
	
	public int getRegNum() {
		return regNum;
	}

	public int getComNum() {
		return comNum;
	}
	
	public int getExcelNum() {
		return excelNum;
	}

	@Override
	public String toString() {
		return "TestVO [name=" + name + ", regNum=" + regNum + ", comNum=" + comNum + ", excelNum=" + excelNum + "]";
	}

}
