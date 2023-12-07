-- 오라클 내장 함수
-- 1) 문자 함수
-- 사용법) 대문자변환 = UPPER(), 소문자변환 = LOWER(), 첫글자만 대문자 = INITCAP()
-- 원본을 조작하지 않고 출력 시에만 임시로 바뀜
SELECT 'Oracle mania'
        ,UPPER('Oracle mania') AS 대문자
        ,LOWER('Oracle mania') AS 소문자
        ,INITCAP('Oracle mania') AS "첫글자만 대문자"
FROM DUAL;

-- 연습 1) 사원 테이블에서 사원명을 소문자로 출력하고, 직위는 첫글자만 대문자로 출력
SELECT LOWER(ENAME), INITCAP(JOB) FROM EMPLOYEE;

-- 연습 2) SCOTT 사원을 조회해서 사원 번호, 사원명 부서번호 출력
-- 단 SCOTT이 대소문자 구분없이 비교된다고 가정하고 작성.
SELECT ENO, ENAME, DNO FROM EMPLOYEE
WHERE ENAME = Upper('ScoTt');

-- 1-2) 문자 길이를 RETURN 하는 함수
-- LENGTH(문자열) : 한글/영어 상관없이 문자개수를 세어서 RETURN하는 함수
-- 코딩 언어셋 : 영어 표현(1BYTE), 한글 표현(3BYTE) [UTF-8 표현식(국제표준)]
SELECT LENGTH('Oracle mania')
      ,LENGTH('오라클매니아')
FROM DUAL;

-- 1-3) 문자 조작 함수 : 문자열 붙이기
-- 함수 : 
-- 기호 : 
SELECT 'Oracle'
       ,'mania'
       ,CONCAT('Oracle', ' mania')
       ,'Oracle' || ' mania'
FROM DUAL;

-- 1-4) 문자 조작 함수 : 문자열 자르기
-- 사용법) SUBSTR(대상컬럼, 시작위치, 자를개수)
--                      시작위치 음수면 뒤에서부터 셈
-- SQL 인덱스 번호 1부터 시작
SELECT SUBSTR('Oracle mania',4,3)
      ,SUBSTR('Oracle mania',-1,1)
FROM DUAL;

-- 예제 3) 이름이 N으로 끝나는 사원 화면에 출력하기
-- 단 SUBSTR() 함수 이용
SELECT * FROM EMPLOYEE
WHERE SUBSTR(ENAME,-1,1) = 'N';

-- ! SQL 성능이 좋게 작성해야함
-- WHERE 왼편(함수사용) = 오른쪽 값 ==> 성능 대폭 저하

-- 1-5) 문자열에서 대상 문자를 찾아서 인덱스번호를 RETURN하는 함수
-- SQL) 인덱스번호 : 1부터 시작
-- 사용법)
SELECT INSTR('Oracl mania','a')
      ,INSTR('오라클 매니아','라')
FROM DUAL;

-- 1-6) 컬럼에 어떤 문자를 붙이기 함수 : LPAD / RPAD
-- LPAD 함수 : 어떤 문자를 왼쪽에 채우기 함수
-- 사용법 : SELECT LPAD(대상 컬럼, 자리수, 채울 문자)
SELECT LPAD(SALARY, 10, '*')
FROM EMPLOYEE;
-- RPAD 함수  : 오른쪽에 채우기 함수
SELECT RPAD(SALARY, 10, '*')
FROM EMPLOYEE;

-- 1-7) 문자열에서 공백제거 : LTRIM, RTRIM, TRIM*
-- 사용법 : LTRIM(컬럼명):왼쪽 공백제거
-- 사용법 : RTRIM(컬럼명):오른쪽 공백제거
-- 사용법 : TRIM(컬럼명):양쪽 공백제거
SELECT 'ORACLE MANIA'
       ,LTRIM('      ORACLE MANIA      ')
       ,RTRIM('      ORACLE MANIA      ')
       ,TRIM('      ORACLE MANIA      ')
FROM DUAL;