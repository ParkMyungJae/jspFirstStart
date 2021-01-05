package test1;
//2020.06.17 20113 박명재

public class CountVO {
//전역변수 위치 : 매서드 영역 밖 클래스 영역 안 자동초기화 값 가진다.
//전역변수 파란색임.
static int count; //전역변수 / 멤버변수 public private protected default
//static int count2; //정적메모리에 저장하는 키워드
//메모리 종류
//stack - > 메서드
//heap - > new를 모든 것 // 객체나 배열
//static - > static이 붙은 모든 것 // 프로그램 시작할때 매모리에 생성

public CountVO() {
	System.out.println("객체를 만들었습니다.");
}

//생성자 언제 쓰일까? - > 객체를 생성해줄때 생성자가 반드시 필요하다.
//생성자 만들어주는 이유? - > 초기값을 넣어주기 위해서

//생성자 메서드 차이 // 생성자는 메서드의 한 종류
//생성자는 무조건 클래스이름 만들고 으로 그리고 리턴 타입이 존재하지 않는다

//메서드 리턴타입
//리턴타입 있는 것과 메서드 이름 앞에 void가 아니라 타입이 있는게 그 타입을 리턴한다.
//리턴타입이 없는거
//메서드 호출
//클래스도 사용자 지정 타입 - > 리턴타입에 당연히 올 수 있다.
//public CountVO getVO () { return도 당연히 클래스 타입으로 리턴 해줘야함 }

public int getCount() {
	//int count = 0; // 지역변수 메서드 영역 안에 있다 폰트 색이 갈색임.
	//만약에 전역변수의 이름과 지역변수의 이름이 같을때
	//우선순위가 메서드 영역에 있는 지역 변수가 우선순위다.
	System.out.println("getCount 호출");
	return count;
}

public void addCount() {
	count++; //count = count + 1;
	System.out.println("count 증가 완료 count = " + count);
}

public void reset() {
	count = 0;
	System.out.println("count 리셋 완료");
}

}
