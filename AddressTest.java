import org.junit.*;
import static org.junit.Assert.*;

public class AddressTest {
@Test
public void whenNotEmptyValueValidationTest() {
	Address value = new Address();
	assertTrue(value.whetherIfEmpty("홍길동", "01092993892").equals("정상적으로 추가되었습니다."));
	assertTrue(value.whetherIfEmpty("김영희", "01029392233").equals("정상적으로 추가되었습니다."));	
	}

@Test
public void whenEmptyValueVerificationTest() {
	Address value = new Address();
	assertTrue(value.whetherIfEmpty("", "01092993892").equals("값을 입력하세요."));
	assertTrue(value.whetherIfEmpty("김영희", "").equals("값을 입력하세요."));	
	assertTrue(value.whetherIfEmpty("", "").equals("값을 입력하세요."));	
	}

@Test
public void whenOnlyNumberValueValidationTest() {
	Address value = new Address();
	assertTrue(value.whetherItOnlyContainsNumber("01092993892").equals("정상적으로 추가되었습니다."));
	assertTrue(value.whetherItOnlyContainsNumber("01029392233").equals("정상적으로 추가되었습니다."));	
	}

@Test
public void whenNotOnlyNumberValueVerificationTest() {
	Address value = new Address();
	assertTrue(value.whetherItOnlyContainsNumber("010dffs93892").equals("숫자만을 입력해주십시오."));
	assertTrue(value.whetherItOnlyContainsNumber("^*&*").equals("숫자만을 입력해주십시오."));	
	assertTrue(value.whetherItOnlyContainsNumber("abcd").equals("숫자만을 입력해주십시오."));	
	}
}
