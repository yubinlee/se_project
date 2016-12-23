# seproject

웹 애플리케이션 배포 파일: dbsample.war
데이터베이스 백업 파일: Dump20161223.sql

데이터베이스 서버 관련)

MySQL workbench를 이용해서 localhost에 데이터베이스 서버를 만들었습니다.

1. 데이터베이스 서버는 localhost에 testdb라는 이름으로 만들어주세요.
 jdbc:mysql://localhost:3306/testdb

2. login name은 “newuser" password는 “sbdbwj"로 지정해 주세요.

3. schema privilege는 모두 허용해주세요.

아래의 내용은 백업 파일에도 포함되어있습니다.

4. account table
column / datatype / 그 외
id / VARCHAR(45)
pw / VARCHAR(45)
no / INT(11) / primary key, not null, auto increment

5. address table
column / datatype / 그 외
name / VARCHAR(45)
phone / VARCHAR(45)
no / INT(11) / primary key, not null, auto increment

6. schedule table
column / datatype / 그 외
year / INT(11)
month / INT(11)
day / INT(11)
memo / VARCHAR(200)
num / INT(11) / primary key, not null, auto increment

주의사항)

한글 말고 영문자로만 입력해주세요.
INT TYPE 으로 선언 되었으므로 정수 아닌 수는 입력하지 말아주세요.
VARCHAR TYPE으로 선언 되었으므로 공백은 입력하지 말아주세요.
year, month, day는 11자 내외, id, pw, name, phone 은 45자 내외, memo는 200자 내외로 선언 되었으므로 글자 수 제한을 지켜주세요.

Test program : Address.java, AddressTest.java Password.java PasswordTest.java Schedule.java ScheduleTest.java 를 JUnit으로 짰습니다.
