package test1;
//2020.06.17 20113 박명재
public class Count2VO {
	int count; //초기화 값이 반드시 필요한 것은 아니다 자동초기화 값을 가진다. 숫자 - > 0 String = null
	
	//싱글톤 패턴 사용 이유
	//static int count - > 변수 한개의 값만 static에 저장 // 한계 : 값은 한개 저장
	//클래스 자체를 static - > 클래스 안에 있는 변수와 메서드 전체를 여러곳에서 공유 하기 위해서
	
	//싱글톤 패턴
	//계속해서 객체를 새로 생성하지 않고
	//한개만 만들어준다. - > 클래스 안에서
	//한개의 객체만 만들어서 공유하기 위해서
	// 객체 생성을 막아서 값이 변경되는 것을 막는다.
	
	//싱글톤 패턴 순서
	/* private 은 다른 클래스에서 접근 불가
	 *  1. 생성자의 접근제어자를 private 해준다 - > 다른 클래스에서 생성자 호출 불가 !
	 *  -> 다른 클래스에서 객체를 생성할 수 없다! new Count2VO();
	 *  
	 *  2. 같은 클래스 안에서 객체 한개를 생성
	 *  */
	
	private Count2VO() {
		System.out.println("객체 생성이 완료되었습니다.");
	}
	
	//객체 생성 클래스 이름 객체이름 = new 생성자
	private static Count2VO instance = new Count2VO();
	
	//클래스 타입으로 메서드를 만들어주고 - >
	//객체가 생성이 불가능하기 때문에 객체를 리턴해주는 메서드 역시 static으로 만들어 줘야한다.
	//static 객체를 사용하지 않고서도 바로 사용할 수 있다 - > 프로그램 생성시 자동 메모리 방에 생성되기 떄문에.
	
	public static Count2VO getInstance() {
		return instance; //전역변수의 객체
	}
	
	public int getCount() {
		return count;
	}
	
	public void setCount() {
		count++;
		System.out.println("count = " + count);
	}
	
	public void reset() {
		count = 0;
		System.out.println("count 리셋 완료");
	}
}
