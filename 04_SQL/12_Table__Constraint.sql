-- 12_Table__Constraint.sql
-- 테이블 제약조건 : 테이블에 입력될 값을 제한하는 것
-- 제약조건은 컬럼별로 각각 지정할 수 있음
-- 1) UIQUE 제약조건 : 유일한 값만 입력될 수 있음(데이터 중복 금지), NULL값은 허용
-- 예제 1) CUSTOMER 테이블을 정의하고 ID 컬럼에 UNIQUE 제약조건을 지정
-- (ID      VARCHAR2(20) -> UNIQUE 제약조건 지정
--  PWD     VARCHAR2(20)
--  NAME    VARCHAR2(20)
--  PHONE   VARCHAR2(30)
--  ADDRESS VARCHAR2(1000))

CREATE TABLE CUSTOMER(
                      ID      VARCHAR2(20) UNIQUE,
                      PWD     VARCHAR2(20) NOT NULL,
                      NAME    VARCHAR2(20) NOT NULL,
                      PHONE   VARCHAR2(30),
                      ADDRESS VARCHAR2(1000));

-- 2) 기본키 제약조건 : PRIMARY KEY(PK)
-- 기본키의 특징 : 유일한 값만 입력(중복방지) + NOT NULL + (참고 : INDEX 자동생성)
-- 특징) 주로 테이블 설계시 1개의 테이블당 거의 1개는 기본키가 존재함
-- 기본키 제약조건에 이름을 부여 가능 : CONSTRAINT 제약조건이름 제약조건
-- 제약조건이름 붙이기 약속(명명법) : PK_테이블명_컬럼명, UK_테이블명_컬럼명...
-- 사용법) CREATE TABLE 테이블명(
--                              컬럼명 자료형(크기),
--                              CONSTRAINT 제약조건이름 PRIMARY KEY(컬럼명));

CREATE TABLE CUSTOMER2(
                      ID      VARCHAR2(20) ,
                      PWD     VARCHAR2(20) NOT NULL,
                      NAME    VARCHAR2(20) NOT NULL,
                      PHONE   VARCHAR2(30),
                      ADDRESS VARCHAR2(1000),
                      CONSTRAINT PK_CUSTOMER_ID PRIMARY KEY(ID)
                      );

SELECT * FROM CUSTOMER2;
-- INSERT 테스트 : 기본키(유일성+ NOTNULL 지정됨)
INSERT INTO CUSTOMER2
VALUES(NULL, NULL, NULL, '010-1234-5678', 'SEOUL');

-- 3) 왜리키(참조키) 제약조건 : FOREIGN KEY(FK) 
-- ! 무결성 제약조건 : 기본키*** / 외래키(참조키)**
-- 무결성 : 데이터에 결점이 없음
-- 기본키 : 회원의 ID (중복되면 안됨 + NULL입력도 불가)
-- 참조키 : 부서테이블의 부서번호(DNO : 10 ~ 40), 사원테이블 부서번호(DNO : 10 ~ 30, 50)
--         부서테이블의 부서번호 값만 사원테이블의 부서번호에 INSERT할 수 있음(참조 무결성)
-- 예제 3) EMP_SECOND 테이블을 만들고, 
--         ENO NUMBER(4) (기본키)
--         ENAME VARCHAR2(10), 
--         JOB VARCHAR2(9)
--         DNO NUMBER(2) (참조키)
-- 지정하세요
-- 사용법 
-- CREATE TABLE 테이블명(
--                      컬럼명1 자료형1 CONSTRAINT PK_테이블명_컬럼명1 PRIMARY KEY,
--                      컬럼명2 자료형2 CONSTRAINT FK_테이블명_컬럼명2 REFERENCES 참조테이블
--                        );


CREATE TABLE EMP_SECOND(
                        ENO NUMBER(4) CONSTRAINT PK_EMP_SECOND_ENO PRIMARY KEY,
                        ENAME VARCHAR2(10), 
                        JOB VARCHAR2(9),
                        DNO NUMBER(2) CONSTRAINT FK_EMP_SECOND_DNO REFERENCES DEPARTMENT
                        );

DROP TABLE EMP_SECOND; -- 실습테이블 삭제

-- 4) CHECK 제약조건(참고) : CK
-- 컬럼에서 허용가능한 데이터의 범위나 조건을 정의할 수 있음
-- 예제 4) EMP_SECOND 테이블에 CHECK 제약조건을 지정하세요 (SALARY > 0 값만 INSERT가능)
-- 사용법 )
-- CREATE TABLE 테이블명(
--                      컬럼명1 자료형1 CONSTRAINT PK_테이블명_컬럼명1 PRIMARY KEY,
--                      컬럼명2 자료형2 CONSTRAINT FK_테이블명_컬럼명2 CHECK(조건)
--                        );

CREATE TABLE EMP_SECOND(
    ENO NUMBER(4) CONSTRAINT PK_EMP_SECOND_ENO PRIMARY KEY
    ,ENAME VARCHAR2(10)
    ,SALARY NUMBER(7,2) CONSTRAINT CK_EMP_SECOND_SALARY CHECK(SALARY > 0)
);
-- 테스트
INSERT INTO EMP_SECOND VALUES(8000, '윤정화', -200); -- 에러 발생

-- 테이블 삭제
DROP TABLE EMP_SECOND;

-- 5) DEFAULT 제약조건 : NULL값이 될대 기본적으로 다른 값으로 생성하는 제약조건
CREATE TABLE EMP_SECOND(
    ENO NUMBER(4) CONSTRAINT PK_EMP_SECOND_ENO PRIMARY KEY
    ,ENAME VARCHAR2(10)
    ,SALARY NUMBER(7,2) DEFAULT 1000
);

-- 테스트
INSERT INTO EMP_SECOND(ENO, ENAME) VALUES(8000, '윤정화');
SELECT * FROM EMP_SECOND;

-- 기타사항 : 제약조건
-- 테이블 복사 : CREATE TABLE ~ AS SELECT ~
-- 제약조건 복사 안됨(제약조건 추가 생성작업: 기본키/참조키)

-- 참고) 시스템용 테이블 또는 뷰(VIEW) : DB 관리용 테이블
-- 용도) 현재 생성된 테이블의 정보, 제약조건, 크기 등을 확인하는 용도
-- 테이블 정보(제약조건) : USER_CONSTRAINTS
-- 원본테이블 제약조건 확인
SELECT TABLE_NAME, CONSTRAINT_NAME
FROM USER_CONSTRAINTS
WHERE TABLE_NAME IN ('EMPLOYEE', 'DEPARTMENT')
ORDER BY TABLE_NAME;

-- 복사테이블 제약조건 확인
SELECT TABLE_NAME, CONSTRAINT_NAME
FROM USER_CONSTRAINTS
WHERE TABLE_NAME IN ('EMP_COPY', 'DEPT_COPY')
ORDER BY TABLE_NAME;

DROP TABLE DEPT_COPY;
DROP TABLE EMP_COPY;

CREATE TABLE DEPT_COPY
AS
SELECT * FROM DEPARTMENT;

CREATE TABLE EMP_COPY
AS
SELECT * FROM EMPLOYEE;

-- 6) 테이블 생성 후 제약조건 추가/변경/제거하기
-- 예제 1) 사원복사본 테이블에(EMP_COPY) 기본키(PRIMARY KEY) 추가하기
-- ENO : 사원번호 (기본키)
ALTER TABLE EMP_COPY
ADD CONSTRAINT PK_EMP_COPY_ENO PRIMARY KEY(ENO);

-- 예제 2) 부서복사본(DEPT_COPY)테이블에 기본키(PK) 추가하기
-- 기본키 : DNO(부서번호), (테이블의 데이터 중에서 유일한 값을 가져야 되는 것)
ALTER TABLE DEPT_COPY
ADD CONSTRAINT PK_DEPT_COPY_DNO PRIMARY KEY(DNO);

-- 예제 3) 테이블 생성 후 외래키 추가 (참조키:FK)
-- 자식테이블에 추가 (부서(부모):DEPY_COPY, 사원(자식)EMP_COPY)
ALTER TABLE EMP_COPY
ADD CONSTRAINT FK_EMP_COPY_DNO
FOREIGN KEY(DNO) REFERENCES DEPT_COPY(DNO);

-- 예제 4) 테이블 생성 후에 제약조건 삭제하기
-- 부모테이블의 기본키(부서:부서번호) <-> 자식 테이블의 참조키(사원:부서번호)
-- 부모테이블의 기본키 삭제하기 : 강제 삭제하기 옵션(CASCADE)
-- CASCADE : 자식테이블에 있는 외래키(참조키)도 같이 삭제됨
ALTER TABLE DEPT_COPY
DROP PRIMARY KEY CASCADE;

-- 예제 5) 제약조건 변경하기
-- EMP_COPY : ENAME (NULL허용) -> ENAME (NOT NULL 제약조건으로 변경)
-- 사용법) 
-- ALTER TABLE 테이블명
-- MODIFY 칼럼명 CONSTRAINT 제약조건 이름 NOT NULL;

ALTER TABLE EMP_COPY
MODIFY ENAME CONSTRAINT NN_EMP_COPY_ENAME NOT NULL;

-- 제약조건 이름으로 삭제하기 : 
-- 사용법)
-- ALTER TABLE 테이블명
-- DROP CONSTRAINT 제약조건이름;

ALTER TABLE EMP_COPY
DROP CONSTRAINT NN_EMP_COPY_ENAME;

-- 참고사항 : 1) 실무에서 참조문결성(참조키) 관련 논란
--              1-1 DB에서 참조키를 지정해서 해결
--                (INSERT/UPDATE 시 부모테이블에 해당 데이터가 있는지 확인
--                -> 있으면 INSERT/UPDATE
--                -> 없으면 오류 발생;
--                단점 : DB 성능 저하, 최악의 경우 다른 테이블의 성능저하도 유발

--              1-2 자바코딩에서 참조키로 로직으로 만들어서 해결
--                 if(부모테이블에 해당 데이터 있는지 확인) {INSERT 실행}

