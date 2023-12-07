-- ! 자료형 변환 함수 ***
-- DB 자료형 : 문자열(VARCHAR2(가변문자열), CHAR(고정문자열))
--            숫자(NUMBER, 실수, 정수)
--            날짜(DATE)
-- 1) TO_CHAR : 날짜 -> 문자열로 바꾸는 함수
-- 사원 : EMPLOYEE
-- 날짜컬럼(DATE) : HIREDATE(입사일)
-- 사용법) TO_CHAR(컬럼명, 날짜포멧)
-- 날짜포멧 : YYYY(년도(4자리)), YY(년도(2자리))    [YEAR]
--           MM(월(2자리))                       [MONTH]
--           DD(일(2자리))                       [DAY]
--           DAY(요일)                           
--           HH(1~12까지의 시간)                  [HOUR]
--           HH24(1~24까지의 시간)                [HOUR]
--           MI(분(2자리))                       [MINUTES]
--           SS(초(2자리))                       [SECONDS]

SELECT ENAME, HIREDATE
        ,TO_CHAR(HIREDATE, 'YY-MM') AS 단축날짜
        ,TO_CHAR(HIREDATE, 'YYYY-MM-DD HH24:MI:SS') AS 날짜
FROM EMPLOYEE;

-- 연습 1) 현재 날짜와 시간을 표현하세요(날짜 -> 문자열로 변환)
-- 단 출력포맷 예) 2011/05/01, 15:07:43 으로 출력
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD, HH24:MI:SS') AS "현재 날짜" FROM DUAL;

-- 2) TO_CHAR : 숫자를 -> 문자로 변환
-- 사용법) TO_CHAR(숫자컬럼, '숫자포맷')
-- 예제2) 급여를 출력하면서 통화기호를 (W, $등) 포함해서 출력
-- 숫자포맷 : L - 각 나라별 통화 기호를 자동으로 붙여줌(W,$ 등)
--           9 - 3자리를 잡고 자리수가 모자라도 따로 0을 채워주지 않음
--           0 - 3자리를 잡고 자리수가 모자라면 따로 0을 채움
--           , - 각 통화의 중간에 쉼표(,)를 자동으로 추가해줌
SELECT ENAME,SALARY
            ,TO_CHAR(SALARY, '$999,999') -- 앞에 0이 안붙음
            ,TO_CHAR(SALARY, 'L000,000') -- 자리수만큼 0이 붙음
FROM EMPLOYEE;

-- 3) TO_DATE(문자[숫자], 날짜포맷) : 문자[숫자]) -> 날짜형으로 바꿔주는 함수
SELECT ENAME, HIREDATE FROM EMPLOYEE;
-- WHERE HIREDATE = '19810220'; -- 자동 자료형 변환(내부적으로 문자 -> 날짜형으로 바뀜)
-- HIREDATE 컬럼 : 날짜형
SELECT ENAME, HIREDATE FROM EMPLOYEE
WHERE HIREDATE = TO_DATE('19810220', 'YYYYMMDD');

-- 4) TO_NUMBER(문자, 숫자포맷) : 문자 -> 숫자로 변환하는 함수
-- 예제 4) 숫자 형태의 문자(통화) 빼기
SELECT TO_NUMBER('100,000','999,999') - TO_NUMBER('50,000','999,999') 
FROM DUAL;

-- 일반 함수들
-- 1) NVL : NULL -> 숫자[문자]로 변경하는 함수
-- 상여금 컬럼 : COMMISSION (NULL 포함됨)
-- NULL은 산술연산이 안됨
SELECT ENAME, SALARY,1 COMMISSION,
NVL(COMMISSION, 0),
SALARY*12+NVL(COMMISSION, 0)
FROM EMPLOYEE
ORDER BY JOB;

-- 2) DECODE 함수 : SQL에서 조건문을 표시하는 함수
-- DECODE로 부서이름 출력하기
-- 사용법 ) SELECT 컬럼
--        ,DECODE(컬럼, 조건1, 결과1
--                   , 조건2, 결과2
--                   , 기본결과)
SELECT ENAME, DNO
        ,DECODE(DNO, 10, '회계부'
                   , 20, '연구소'
                   , 30, '판매부'
                   , 40, '운영부'
                   ,'디폴트') AS 부서명
FROM EMPLOYEE
ORDER BY DNO;

-- DECODE 업그레이드 사용법) CASE WHEN (결과는 같음)
-- 사용법) CASE WHEN 조건식1 THEN '결과1'
--             WHEN  조건식2 THEN '결과2'
--              ... ELSE '기본결과'
--              END

SELECT ENAME, DNO, 
                CASE WHEN DNO=10 THEN '회계부'
                     WHEN DNO=20 THEN '연구소'
                     WHEN DNO=30 THEN '판매부'
                     WHEN DNO=40 THEN '운영부'
                     ELSE '디폴트'
                END AS 부서명
FROM EMPLOYEE ORDER BY DNO;
                    