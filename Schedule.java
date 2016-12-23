
public class Schedule {
	String addDate(int year, int month, int day) {
		if (isDate(year, month, day)) {
			if (month == 2) {
				if (isLeapYear(year)) {
					if (day > 29 || day < 1) 
						return "다시 입력하여 주십시오.";
				} 
				else {
					if (day > 28 || day < 1) 
						return "다시 입력하여 주십시오.";
				}
				return "정상적으로 추가되었습니다.";
			}
			else if (checkMonth(month) == "30Month") {
				if (day > 30 || day < 1) 
					return "다시 입력하여 주십시오.";
				return "정상적으로 추가되었습니다.";
			} 
			else if (checkMonth(month) == "31Month") {
				if (day < 1 || day > 31) 
					return "다시 입력하여 주십시오.";
				return "정상적으로 추가되었습니다.";
			}
			else 
				return "다시 입력하여 주십시오.";
		} 
		else 
			return "다시 입력하여 주십시오.";
	}
	
	public boolean isDate(int year, int month, int day) {
		boolean result = false;
		if (year >= 1 && month >= 1 && month <= 12 && day >= 1 || day <= 31) 
			result = true;
		return result;
	}
	
	public boolean isLeapYear(int year) {
		if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) 
			return true;
		else 
			return false;
	}
	
	public String checkMonth(int month) {
		if (month == 4 || month == 6 || month == 9 || month == 11) 
			return "30Month";
		else if (month == 1 || month == 3 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) 
			return "31Month";
		else 
			return "Not Month";
	}
}
