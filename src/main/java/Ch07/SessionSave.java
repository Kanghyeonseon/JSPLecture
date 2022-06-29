package Ch07;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

// 세션을 저장하는 용도의 java파일
public class SessionSave {
	// 꺼낼 때 사용하는 키는 String. HttpSession클래스가 Session의 참조변수를 만들 수 있는(위치정보를 꺼낼 수 있게하는) 클래스이다.
	// 로그인 처리 시 userid와 session 주소를 저장하기 위한 컬렉션. 이걸 빈의 형태로 쓸 것이다. 세션객체의 위치정보를 담을 용도이다.
	public Map<String,HttpSession> slist = new HashMap();
	
	
	// 이 함수가 실행되면 세션에대한 정보를 받아온다. 
	// id를 key로, 받은 session을 value로 넣는다.
	public void AddSession(String id, HttpSession session) {
		slist.put(id, session);
		System.out.println("id : " + id + "\nsession : " + session);
	}

	// 총 세션 정보를 전달하기 위한 함수
	// 해쉬맵에 저장된 slist정보가 리턴된다.
	public Map<String, HttpSession> GetSession() {
		return slist;
	}
}
