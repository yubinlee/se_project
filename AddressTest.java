import org.junit.*;
import static org.junit.Assert.*;
public class AddressTest {
@Test
public void whenContains010ValidationTest() {
	Address value = new Address();
	assertTrue(value.whetherIfContains010("01099992222").equals("정상적으로 추가되었습니다."));
	assertTrue(value.whetherIfContains010("01071114655").equals("정상적으로 추가되었습니다."));
}
@Test
public void whenNotContains010VerificationTest() {
	Address value = new Address();
	assertTrue(value.whetherIfContains010("01118881462").equals("잘못된 값입니다."));
	assertTrue(value.whetherIfContains010("전화번호").equals("잘못된 값입니다."));
	assertTrue(value.whetherIfContains010("-^&*^ㅉ*&^").equals("잘못된 값입니다."));
	
}

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
public void whenPasswordMatchValidationTest() {
	Address value = new Address();
	assertTrue(value.whetherIfPasswordMatch("s25jin", "s25jin").equals("정상적으로 추가되었습니다."));
	assertTrue(value.whetherIfPasswordMatch("dochanjin", "dochanjin").equals("정상적으로 추가되었습니다."));
}

public void whenPasswordNotMatchVerificationTest() {
	Address value = new Address();
	assertTrue(value.whetherIfPasswordMatch("شجرة المعر", "s分數2ر5分數jin").equals("비밀번호 확인이 잘못되었습니다."));
	assertTrue(value.whetherIfPasswordMatch("s25jin", "-1-32-2-3/3").equals("비밀번호 확인이 잘못되었습니다."));
	assertTrue(value.whetherIfPasswordMatch("dochanji", "dochanjin").equals("비밀번호 확인이 잘못되었습니다."));
	
}
}
