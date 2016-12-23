import org.junit.*;
import static org.junit.Assert.*;

public class AddressTest {
	@Test
	public void testValidationAddress() {
		Address address = new Address();
		
		assertTrue(address.addAddress("Tom", "01092993892").equals("성공적으로 추가되었습니다."));
	}

	@Test
	public void testIsEmptyValueVerificationAddress() {
		Address address = new Address();
		
		assertTrue(address.addAddress("", "01092993892").equals("값을 입력하세요."));
		assertTrue(address.addAddress("Tom", "").equals("값을 입력하세요."));
		assertTrue(address.addAddress("", "").equals("값을 입력하세요."));
	}

	@Test
	public void testContainOnlyNumberVerificationAddress() {
		Address address = new Address();
		
		assertTrue(address.addAddress("Tom", "-1234").equals("숫자 만을 입력하여 주십시오."));
		assertTrue(address.addAddress("Tom", "010dffs93892").equals("숫자 만을 입력하여 주십시오."));
		assertTrue(address.addAddress("Tom", "^*&*").equals("숫자 만을 입력하여 주십시오."));
	}
}

