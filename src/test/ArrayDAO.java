package test;

public class ArrayDAO {
	public static ArrayDAO instance = new ArrayDAO();
	//배열의 크기
	private int count = 0;
	//배열
	private int[] arr = {0, 0, 0, 0, 0};

	//싱글톤
	public static ArrayDAO getInstance() {
		return instance;
	}
	
	public ArrayDAO() {
		
	}
	
	public int[] getArray() {
		return arr;
	}
	
	public int getCount() {
		return count;
	}
	
	public void addArray(int data) {
		arr[count] = data;
		count+=1;
	}
	
	public int sameArray(int data) {
		//status가 0이면 중복 없음, 1이면 중복
		int status = 0;
		
		for(int i = 0; i < count; i++) {
			if(arr[i] == data) {
				status = 1;
			}
		}
		
		return status;
	}
	
	public int removeArray(int data) {
		int delIdx = -1;
		
		if(count == 0) {
			System.out.println("[메시지] 더이상 삭제할 값이 없습니다.");
		}
		
		for(int i = 0; i < count; i++) {
			if(arr[i] == data) {
				//삭제할 값의 인덱스를 얻는 곳
				delIdx = i;
			}
		}
		
		if(delIdx == -1) {
			System.out.println("[메시지]해당 값은 존재하지 않습니다.");
		}else {
			for(int i = delIdx; i < count - 1; i++) {
				arr[i] = arr[i + 1];
			}
			count-=1;
		}
		
		return delIdx;
	}
	
	public void insertArray(int idx, int data) {
		for(int i = count; i > idx; i--) {
			arr[i] = arr[i-1];
		}
		
		arr[idx] = data;
		count = count + 1;
	}
	
	public void resetArray() {
		for(int i = 0; i < count; i++) {
			arr[i] = 0;	
		}
		count = 0;
	}
}
