package test;

import java.util.ArrayList;

public class UserDAO {
	public ArrayList<UserVO> getAllList = new ArrayList<UserVO>();
	
	public static UserDAO instance = new UserDAO();
	
	UserVO vo = new UserVO();

	public static UserDAO getInstance() {
		return instance;
	}
	
	public int getMaxNo() {
		return getAllList.size();
	}

	public int CheckLogin(String name, int grade) {		
		int status = 0;
		
		if(getMaxNo() != 0) {
			for(int i = 0; i < getMaxNo(); i++) {
				int userGrade = getAllList.get(i).getGrade();
				
				if(grade == userGrade) {
					status = 0;
				}else {
					status = 1;
				}
			}
		}else {
			status = 1;
		}
		
		return status;
	}

	public void addUser(String name, int grade) {	
		vo = new UserVO();
		vo.setNo(getMaxNo() + 1);
		vo.setName(name);
		vo.setGrade(grade);
		vo.setJumsu(0);	
		
		getAllList.add(vo);
	}

	public String getAName() {
		UserVO vo = new UserVO();
		return vo.getName();
	}

	public void checkResult(int num1, int num2, int num3, int grade) {
		int score = 0;
		
		for(int i = 0; i < getMaxNo(); i++) {
			if(getAllList.get(i).getGrade() == grade) {//2 2 3
				if(num1 == 2) {
					score+=10;
				}
				
				if(num2 == 2) {
					score+=10;
				}
				
				if(num3 == 3) {
					score+=10;
				}
				
				getAllList.get(i).setJumsu(score);
			}
		}
		
	}

	public int getAUser() {
		return vo.getGrade();
	}
}
