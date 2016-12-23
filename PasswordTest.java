import org.junit.*;
import static org.junit.Assert.*;

public class PasswordTest {
	@Test
	public void testValidationPassword() {
		Password pw = new Password();

		assertTrue(pw.checkPassword("abc1026", "abc1026").equals("정상적으로 추가되었습니다."));
		assertTrue(pw.checkPassword("abc1026", "abc1025").equals("잘못입력하였습니다."));
		assertTrue(pw.checkPassword("ABC1026", "ABC1026").equals("영소문자과 숫자를 혼합해주세요."));
		assertTrue(pw.checkPassword("abcdef", "abcdef").equals("영소문자과 숫자를 혼합해주세요."));
		assertTrue(pw.checkPassword("123456", "123456").equals("영소문자과 숫자를 혼합해주세요."));
	}

	@Test
	public void testVerificationPassword() {
		Password pw = new Password();
		
		assertTrue(pw.checkPassword("abc1026", "").equals("잘못입력하였습니다."));
		assertTrue(pw.checkPassword("aaaabbbbccccdddd1111222233334444", 
				"aaaabbbbccccdddd1111222233334444").equals("6~12자 이내로 입력해주세요."));
	}
}

