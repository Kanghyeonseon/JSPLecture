package Ch09;

public class Criteria {
	private String type;	// 검색 타입
	private int end;		// 끝번호
	public Criteria () {
		end=100;
		// end의 기본값은 100으로 설정.
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	@Override
	public String toString() {
		return "Criteria [type=" + type + ", end=" + end + "]";
	}
	
}
