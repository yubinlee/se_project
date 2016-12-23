import org.junit.*;
import static org.junit.Assert.*;

public class ScheduleTest {
	@Test
	public void testValidationDate() {
		Schedule schedule = new Schedule();
		
		assertTrue(schedule.addDate(2016, 2, 29) == "정상적으로 추가되었습니다.");
		assertTrue(schedule.addDate(2015, 2, 29) == "다시 입력하여 주십시오.");
		assertTrue(schedule.addDate(2016, 12, 31) == "정상적으로 추가되었습니다.");
		assertTrue(schedule.addDate(2016, 11, 31) == "다시 입력하여 주십시오.");
	}

	@Test
	public void testVerificationDate() {
		Schedule schedule = new Schedule();
		
		assertTrue(schedule.addDate(-1, -1, -1) == "다시 입력하여 주십시오.");
		assertTrue(schedule.addDate('a', 'a', 'a') == "다시 입력하여 주십시오.");
		assertTrue(schedule.addDate(0, 0, 0) == "다시 입력하여 주십시오.");
	}
}
