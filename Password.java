public class Password {
	String checkPassword(String pw, String checkpw) {
		int ccount = 0;
		int ncount = 0;
		
		for (int i = 0; i < pw.length(); i++) {
			if (pw.charAt(i) >= 'a' && pw.charAt(i) <= 'z') {
				ccount++;
			}
			if (pw.charAt(i) >= '0' && pw.charAt(i) <= '9') {
				ncount++;
			}
		}

		if (pw.length() >= 6 && pw.length() <= 12) {
			if (ncount != 0 && ccount != 0) {
				if (pw.equals(checkpw)) {
					return "정상적으로 추가되었습니다.";
				} 
				else {
					return "잘못입력하였습니다.";
				}
			} 
			else {
				return "영소문자과 숫자를 혼합해주세요.";
			}
		} 
		else {
			return "6~12자 이내로 입력해주세요.";
		}
	}
}
