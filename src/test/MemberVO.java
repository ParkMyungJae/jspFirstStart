package test;

public class MemberVO {
	private String dbId;
	private int dbPw;
	private String name;
	
	private MemberVO() {
		dbId = "hong";
		dbPw = 1111;
		name = "HongGilDong";
	}
	
	private static MemberVO instance = new MemberVO();
	
	public static MemberVO getInstance() {
		return instance;
	}

	public String getDbId() {
		return dbId;
	}

	public int getDbPw() {
		return dbPw;
	}


	public String getName() {
		return name;
	}	
	
}
