-- 개발자 계정 : scott
-- (개발 시 관리자 계정은 사용하지 않음)
-- sql 주석 (ctrl+/)
-- 계정명 : SCOTT
-- 패스워드 : !Ds1234567890
-- 유저가 사용할 기본 공간 : USERS 공간
--유저가 사용할 임시 공간 : TEMP

--1) 계정 생성 명령어
-- (패스워드 특수기호): "특수기호"
-- 없으면 ""빼고 그냥 문자열
-- 사용법 : CREATE USER 계정명 IDENTIFIED BY "비밀번호"
--DEFAULT TABLESPACE USERS
--TEMPORARY TABLESPACE TEMP;


CREATE USER SCOTT IDENTIFIED BY "!Ds1234567890"
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

--2) 권한 부여
-- CONNECT: 접속권한
-- RESOURCE : 테이블 등을 사용할 권한
-- CREATE VIEW : VIEW를 만들 권한
-- UNLIMTED TABLESPACE : 테이블 생성시 사용할 물리 공간을 무한으로 사용하는 권한
-- 사용법) GRANT 권한명, 권한명2... to 계정명
GRANT CONNECT, RESOURCE, CREATE VIEW TO SCOTT;
GRANT UNLIMITED TABLESPACE TO SCOTT;

