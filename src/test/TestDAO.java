package test;

import java.util.ArrayList;
import java.util.Random;

public class TestDAO {
	public static TestDAO instance = new TestDAO();
	
	public static TestDAO getInstance() {
		return instance;
	}
	
	public ArrayList<TestVO> list = new ArrayList<TestVO>();
	Random ran = new Random();
	
	private TestDAO() {
		setJumsu();
	}
	
	public void setJumsu() {
		list.clear();
		
		TestVO vo = new TestVO();
		int comNum = ran.nextInt(71) + 30;
		vo.setComNum(comNum);
		int excelNum = ran.nextInt(71) + 30;
		vo.setExcelNum(excelNum);
		
		list.add(vo);
	}
	
	public int checkResult(int comNum, int excelNum) {
		int status = 1;
		int sum = comNum + excelNum;
		double average = sum / 2;
		
		if(comNum < 40 || excelNum < 40 || average < 60) {
			status = -1;
		}
		
		return status;
	}

}
