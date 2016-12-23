
public class Address {
	String addAddress(String formName, String formPhone) {
		if ("".equals(formName) || "".equals(formPhone))
			return "값을 입력하세요.";
		else if (!isNumber(formPhone))
			return "숫자 만을 입력하여 주십시오.";
		else 
			return "성공적으로 추가되었습니다.";
	}

	public boolean isNumber(String str) {
		boolean result = false;

		try {
			int number = Integer.parseInt(str);
			if (number > 0) 
				result = true;
		} catch (Exception e) {
			;
		}
		return result;
	}
}