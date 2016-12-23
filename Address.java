public class Address {
	String whetherIfEmpty(String formName, String formPhone) {
		if ("".equals(formName) || "".equals(formPhone))
			return "값을 입력하세요.";
		else
			return "정상적으로 추가되었습니다.";		
	}

	String whetherItOnlyContainsNumber(String formPhone) {
		if(!isNumber(formPhone))
			return "숫자만을 입력해주십시오.";
		else
			return "정상적으로 추가되었습니다.";		
	}	
	 public static boolean isNumber(String str){
	        boolean result = false; 
	         
	         
	        try{
	            Integer.parseInt(str) ;
	            result = true ;
	        }catch(Exception e){}
	         
	         
	        return result ;
	    }
}
