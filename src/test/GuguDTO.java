package test;
// DB database : 데이타
// jsp -> DB 연동하는 방법
//DAO - data access object : 실제로 DB에 접근하는 역할 : 값 
//데이터베이스에서 값을 변동하는 기능구현 하는 클래스가 DAO
//DTO - data transfer object : 데이터 전송을 위한
//데이터베이스에서 데이터 값들의 변수 //
//(VO) - value object : 데이터 그 자체의 의미
//DTO 객체를 DAO에서 사용해서 값을 넣어주고(setter) 가져오기

//JSP에서 사용할 것이기 때문에 public class로 클래스 만들기
public class GuguDTO {
	private int x; // 2-9의 랜덤 값
	private int y; // 1-9의 랜덤 값
	private int answer; //x*y의 값
	
	//get
	public int getX() {
		return x;
	}
	
	public int getY() {
		return y;
	}
	
	public int getAnswer() {
		return answer;
	}
	
	public void setX(int x) {
		this.x = x;
	}
	
	public void setY(int y) {
		this.y = y;
	}
	
	public void setAnswer(int answer) {
		this.answer = answer;
	}
}
