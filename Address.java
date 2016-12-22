
public class Address {
	
	String whenNotContains010(String formPhone) {
		if (!formPhone.contains("010"))
			return "잘못된 값입니다.";
		else
			return "정상적으로 추가되었습니다.";
		
	}
	
	String whenNotProperLength(String formPass) {
		if (formPass.length() < 6 || formPass.length() > 12)
			return "6~12자 내로 입력해주세요.";
		else
			return "정상적으로 추가되었습니다.";
		
	}
	
	String whenPasswordNotMatch(String formPass, String formPassCheck) {
		if (!formPass.equals(formPassCheck))
			return "비밀번호 확인이 잘못되었습니다.";
		else
			return "정상적으로 추가되었습니다.";
	}

}
