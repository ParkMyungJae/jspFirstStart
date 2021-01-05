package test;

import java.util.ArrayList;
import java.util.Random;

//DB database : 데이터
public class GuguDAO {
	//싱글톤 패턴
	public static GuguDAO instance = new GuguDAO();
	public ArrayList<GuguDTO> guguList = new ArrayList<GuguDTO>();
	Random ran =  new Random();
	//final 변수 == 상수 // 값이 변하지 않는 고정된 수 <-> 변수 : 값이 변하는 수
	static final int COUNT = 5;
	public GuguDAO() {
		setGame();
	}
	
	public void setGame() {
		for(int i = 0; i < COUNT; i++) {
			GuguDTO dto = new GuguDTO();
			
			int rx = ran.nextInt(8) + 2;
			dto.setX(rx);
			int ry = ran.nextInt(9) + 1;
			dto.setY(ry);
			
			int answer = rx * ry;
			dto.setAnswer(answer);
			
			guguList.add(dto);
		}
	}
}
