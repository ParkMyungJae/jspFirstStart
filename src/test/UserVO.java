package test;

public class UserVO {
	 private int no;
	 private String name;
	 private int grade;
	 private int jumsu;
	 
	public void UserVO(int no, String name, int grade, int jumsu) {
		this.no = no;
		this.name = name;
		this.grade = grade;
		this.jumsu = jumsu;
	}
	 
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getJumsu() {
		return jumsu;
	}
	public void setJumsu(int jumsu) {
		this.jumsu = jumsu;
	}
	
	@Override
	public String toString() {
		return "UserDAO [no = " + no + ", name = " + name + ", grade = " + grade + ", jumsu = " + jumsu + "]";
	}
}
