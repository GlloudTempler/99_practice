-- 11_Table_Alter.sql
-- 테이블 구조 (설계)_ 변경하기 : DBA(Datbase Administrator : DB관리자)
-- 실습 테이블 : DEPT20 (구조만 복사)
CREATE TABLE DEPT20
AS
SELECT * FROM DEPARTMENT
WHERE 1=2;

-- 결과 보기
SELECT * FROM DEPT20;
-- 예제 1) 부서 테이블에 날짜 자료형을 가지는 BIRTH 컬럼 추가
-- 테이블에 새로운 컬럼 추가하기
-- 사용법) ALTER TABLE 테이블명 ADD(컬럼명 자료형);
ALTER TABLE DEPT20 ADD(BIRTH DATE);

-- 예제 2) 부서테이블에(DEPT20) 부서명(DNAME)의 크기를 변경하기(기존 -> 수정)
-- 테이블에 컬럼 변경(크기변경, 자료형 변경 등)
-- 사용법) ALTER TABLE 테이블명 MODIFY(수정) 컬럼명 자료형(크기)
ALTER TABLE DEPT20 MODIFY DNAME VARCHAR2(30);
-- 테이블 구조 보기 명령어 : DESC 테이블명
DESC DEPT20;

-- 예제 3) 부서테이블(DEPT20) BIRTH 컬럼 삭제하기
-- 사용법) ALTER TABLE 테이블명 DROP COLUMN 컬럼명;
ALTER TABLE DEPT20 DROP COLUMN BIRTH;
DESC DEPT20;

-- 예제 4) 테이블 이름 변경하기 : DEPT20 -> DEPT30
RENAME DEPT20 TO DEPT30;
DESC DEPT30;