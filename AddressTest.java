import org.junit.*;
import static org.junit.Assert.*;
public class AddressTest {
@Test
public void whenPasswordProperLengthValidationTest() {
	Address value = new Address();
	assertTrue(value.whetherIfPasswordProperLength("s25jinch555").equals("정상적으로 추가되었습니다."));
	assertTrue(value.whetherIfPasswordProperLength("gr22nt2@").equals("정상적으로 추가되었습니다."));	
}

@Test
public void whenPasswordNotProperLengthVerificationTest() {
	Address value = new Address();
	assertTrue(value.whetherIfPasswordProperLength("1462").equals("6~12자 내로 입력해주세요."));
	assertTrue(value.whetherIfPasswordProperLength("1234567891012").equals("6~12자 내로 입력해주세요."));
	assertTrue(value.whetherIfPasswordProperLength("ناموويكي شجرة المعرف الت تنمونها ").equals("6~12자 내로 입력해주세요."));
	assertTrue(value.whetherIfPasswordProperLength("ن字儒·𡨸儒·𡦂儒 𡦂儒𡦂儒").equals("6~12자 내로 입력해주세요."));
	
	
}

@Test
public void whenPasswordMatchValidationTest() {
	Address value = new Address();
	assertTrue(value.whetherIfPasswordMatch("s25jin", "s25jin").equals("정상적으로 추가되었습니다."));
	assertTrue(value.whetherIfPasswordMatch("dochanjin", "dochanjin").equals("정상적으로 추가되었습니다."));
}

@Test
public void whenPasswordNotMatchVerificationTest() {
	Address value = new Address();
	assertTrue(value.whetherIfPasswordMatch("شجرة المعر", "s分數2ر5分數jin").equals("비밀번호 확인이 잘못되었습니다."));
	assertTrue(value.whetherIfPasswordMatch("s25jin", "-1-32-2-3/3").equals("비밀번호 확인이 잘못되었습니다."));
	assertTrue(value.whetherIfPasswordMatch("dochanji", "dochanjin").equals("비밀번호 확인이 잘못되었습니다."));
	
}
}
