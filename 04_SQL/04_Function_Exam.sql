-- 연습문제
-- 1) SUBSTR 함수를 사용하여 사원들의 입사한 년도와 입사한 달만 출력
SELECT ENAME,
            SUBSTR(HIREDATE, 1,2) AS "입사 년도",
            SUBSTR(HIREDATE, 4,2) AS "입사 월"
FROM EMPLOYEE;

SELECT HIREDATE FROM EMPLOYEE;

-- 02) 입사일 연도는 2자리, 월은 (MON)으로 표시하고, 일(DD), 요일은 (DY)로 표기
-- TO_CHAR 함수 사용
SELECT ENAME, TO_CHAR(HIREDATE, 'YY/MON/DD/DY') FROM EMPLOYEE;

-- 03) 올해 며칠이 지났는지 출력하시오
-- 현재 날짜에서 올해 1월1일을 뺀 결과를 출력하고 TO_DATE함수를 사용하여 데이터 형을 일치시켜서 연산
SELECT TRUNC(SYSDATE - TO_DATE('2023/01/01', 'YYYY/MM/DD')) FROM DUAL;

-- 04) 사원들의 매니저 사번을 출력하되 매니저가 없는 사원에 대해서는 NULL값 대신 0을 출력
SELECT ENO, ENAME, NVL(MANAGER, 0) FROM EMPLOYEE;

-- 05) DECODE(CASE WHEN) 함수로 직급에 따라 급여를 인상
-- 직급이 ANALYST면 200, SALESMAN이면 180, MANAGER이면 150, CLERK이면 100인상
-- 출력 : ENO(사원번호), ENAME(사원명), JOB(직급), SALARY(월급),
--       급여인상 
-- 사원테이블 : EMPLOYEE
SELECT ENO, ENAME, JOB, SALARY,
                                CASE WHEN JOB='ANALYST' THEN SALARY + 200
                                     WHEN JOB='SALESMAN' THEN SALARY + 180
                                     WHEN JOB='MANAGER' THEN SALARY + 150
                                     WHEN JOB='CLERK' THEN SALARY + 100
                                END AS "급여 인상"
FROM EMPLOYEE ORDER BY ENO;

-- 6) 사원테이블에서(EMPLOYEE) 사원들의 월 평균 근무일 수는 21.5일입니다. 
-- 하루 근무 시간을 8시간으로 보았을 때 
-- 사원들의 하루 급여와 시급을 계산하여 
-- 사원번호(ENO), 사원명(ENAME), 급여(SALARY), 하루급여, 시급 결과를 출력합니다.
-- 단 하루 급여는 소수점 세 번째 자리에서 버리고, 시급은 두 번째 소수점에서 반올림하세요
-- 공식 : 하루 급여 : 급여(SALARY) / 21.5
--       시급     : 급여 / 21.5 / 8

SELECT ENO, ENAME, SALARY,
       TRUNC(SALARY / 21.5 , 3) AS "하루 급여",
       ROUND(SALARY /21.5 / 8, 2) AS "시급"
FROM EMPLOYEE ORDER BY ENO;

-- 7) 사원테이블에서 사원들은 입사일을 기준으로 3개월이 지난 후 첫 월요일에 정직원이 됩니다.
-- 사원들이 정직원이 되는 날짜를 yyyy-mm-dd형식으로 출력
-- 단 상여금이 없는 사원의 상여금은 N/A로 출력
-- 힌트) ADD_MONTHS(), NEXT_DAY(), TO_CHAR(), NVL()
SELECT ENAME,
       TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '월요일'), 'YYYY-MM-DD') AS "정직원"
       ,NVL(TO_CHAR(COMMISSION), 'N/A') AS COMMISSION
FROM EMPLOYEE ORDER BY ENO;

-- 8) 사원 테이블의 모든 사원을 대상으로 직속 상관의 사원 번호를 다음과 같은 조건을 기준으로 
--    변환해서 CHG_MGR 별칭으로 출력하세요
-- 조건) DECODE, CASE WHEN 사용
-- 1) 직속 상관의 사원 번호가 존재하지 않을 경우    : 0000
-- 2) 직속 상관의 사원 번호 앞 두 자리가 75일 경우 : 5555
-- 3) 직속 상관의 사원 번호 앞 두 자리가 76일 경우 : 6666
-- 4) 직속 상관의 사원 번호 앞 두 자리가 77일 경우 : 7777
-- 5) 직속 상관의 사원 번호 앞 두 자리가 78일 경우 : 8888
-- 6) 그 외 직속 상관 사원 번호의 경우           : 본래 직속 상관의 사원 번호 그대로 출력

SELECT ENAME,
            CASE WHEN MANAGER IS NULL THEN '0000'
                 WHEN SUBSTR(MANAGER, 1,2) ='75' THEN '5555'
                 WHEN SUBSTR(MANAGER, 1,2) ='76' THEN '6666'
                 WHEN SUBSTR(MANAGER, 1,2) ='77' THEN '7777'
                 WHEN SUBSTR(MANAGER, 1,2) ='78' THEN '7778'
                 ELSE TO_CHAR(MANAGER)
            END AS CHG_MGR
FROM EMPLOYEE ORDER BY CHG_MGR;