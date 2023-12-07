-- 17_System_Role_Exam.sql
-- 사용자 계정/권한 연습문제
-- 1) KBS라는 사용자 생성 암호는 pass
CREATE USER KBS IDENTIFIED BY pass;

-- 2) 기본적인 권한 부여를 하지 않으면 데이터베이스에 로그인이 불가능하므로,
--    CONNECT, RESOURCE 롤과 CREATE VIEW 를 KBS 사용자에게 부여하세요.
GRANT CONNECT, RESOURCE, CREATE VIEW TO KBS;

-- 3) 유저 삭제하기
DROP USER KBS;
