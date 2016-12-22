import org.junit.*;
import static org.junit.Assert.*;
public class AddressTest {
@Test
public void whenNotContains010Test() {
	Address a = new Address();
	assertTrue(a.whenNotContains010("01112339399").equals("잘못된 값입니다."));
	assertTrue(a.whenNotContains010("4569").equals("잘못된 값입니다."));
	assertTrue(a.whenNotContains010("전화번호").equals("잘못된 값입니다."));
	assertTrue(a.whenNotContains010("01099992222").equals("정상적으로 추가되었습니다."));
	assertFalse(a.whenNotContains010("01099992222").equals("잘못된 값입니다."));
}

@Test
public void whenNotProperLengthTest() {
	Address a = new Address();
	assertTrue(a.whenNotProperLength("가나다라마").equals("6~12자 내로 입력해주세요."));
	assertTrue(a.whenNotProperLength("가나다라마바사아자차카타파").equals("6~12자 내로 입력해주세요."));
	assertTrue(a.whenNotProperLength("abcde").equals("6~12자 내로 입력해주세요."));
	assertTrue(a.whenNotProperLength("abcdefghijklm").equals("6~12자 내로 입력해주세요."));
	assertTrue(a.whenNotProperLength("123456").equals("정상적으로 추가되었습니다."));
	assertFalse(a.whenNotProperLength("123456").equals("6~12자 내로 입력해주세요."));
	
}

public void whenPasswordNotMatchTest() {
	Address a = new Address();
	assertTrue(a.whenPasswordNotMatch("가나다", "가나다라").equals("비밀번호 확인이 잘못되었습니다."));
	assertTrue(a.whenPasswordNotMatch("acd", "vds").equals("비밀번호 확인이 잘못되었습니다."));
	assertFalse(a.whenPasswordNotMatch("가나다", "가나다").equals("비밀번호 확인이 잘못되었습니다."));
	assertTrue(a.whenPasswordNotMatch("가나다", "가나다").equals("정상적으로 추가되었습니다."));
	assertFalse(a.whenPasswordNotMatch("abcde", "abcde").equals("비밀번호 확인이 잘못되었습니다."));
}
}
