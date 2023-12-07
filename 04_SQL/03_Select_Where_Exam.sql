-- 연습문제
-- 1) 사원테이블에서 JOB 이 'MANAGER'인 사원의 데이터를 뽑아서 ENAME으로 오름차순 정렬
SELECT * FROM EMPLOYEE
WHERE JOB = 'MANAGER'
ORDER BY ENAME;

-- 2) 사원테이블에서 JOB이 'CLERK'인 사원의 데이터를 뽑아서 사원명 내림차순 정렬
SELECT * FROM EMPLOYEE
WHERE JOB = 'CLERK'
ORDER BY ENAME DESC;

-- 3) 덧셈 연산자를 이용하여 모든 사원에 대해서 300의 급여를 인상하고 사원의 이름, 급여, 인상된 급여를 출력하시오.
SELECT ENAME, SALARY, (SALARY+300) AS "인상 급여" FROM EMPLOYEE;

-- 4) 사원의 이름, 급여, 연간 총 수입을 총 수입이 많은 것부터 많은 순으로 출력
--    연간 총 수입은 월급에 12를 곱하고 100의 상여금을 더해서 계산
SELECT ENAME, SALARY, SALARY*12+100 AS "연간 총 수입" FROM EMPLOYEE
ORDER BY "연간 총 수입" DESC;

-- 5) 급여가 2000이 넘는 사원의 이름과 급여를 급여가 많은 순으로 출력
SELECT ENAME, SALARY FROM EMPLOYEE
WHERE SALARY > 2000
ORDER BY SALARY DESC;

-- 6) 사원번호가 7788인 사원의 이름과 부서번호를 출력
SELECT ENAME, DNO FROM EMPLOYEE
WHERE ENO = 7788;

-- 7) 급여가 2000에서 3000 사이에 포함되지 않는 사원의 이름과 급여를 출력하시오
SELECT ENAME, SALARY FROM EMPLOYEE
WHERE SALARY NOT BETWEEN 2000 AND 3000;

-- 8) 1981년 2월 20일 부터 1981년 5월 1일 사이에 입사한 사원의 이름, 담당업무, 입사일을 출력
SELECT ENAME, JOB, HIREDATE FROM EMPLOYEE
WHERE HIREDATE BETWEEN '1981.02.20' AND '1981.05.01';

-- 9) 부서번호가 20및 30에 속한 사원의 이름과 부서번호 출력, 이름 기준으로 내림차순정렬
SELECT ENAME, DNO FROM EMPLOYEE
WHERE DNO IN (20,30)
ORDER BY ENAME DESC;

-- 10) 사원의 급여(SALARY)가 2000에서 3000사이에 포함되고 부서번호가 20또는 30인
-- 사원의 이름, 급여와 부서번호를 출력, 이름 오름차순으로 출력
SELECT ENAME, SALARY, DNO FROM EMPLOYEE
WHERE SALARY BETWEEN 2000 AND 3000
AND DNO IN (20,30)
ORDER BY ENAME;

-- 11) 1981년도에 입사한 사원의 이름과 입사일 출력
-- 단, LIKE연산자와 와일드카드를 사용
SELECT ENAME, HIREDATE FROM EMPLOYEE
WHERE HIREDATE LIKE '1981%';

-- 12) 관리자가 없는 사원의 이름과 담당 업무를 출력
SELECT ENAME, JOB FROM EMPLOYEE
WHERE MANAGER IS NULL;

-- 문제 13) COMMISSION(상여금)을 받을 수 있는 자격이 되는 (COMMISSION NULL 이 아닌사람)
--         사원의 이름(ENAME), 급여(SALARY), 상여금(COMMISSION)을 출력하되
--         급여 및 커미션을 기준으로 내림차순 정렬하여 출력하세요
-- 사원테이블 : EMPLOYEE
SELECT ENAME, SALARY, COMMISSION FROM EMPLOYEE
WHERE COMMISSION IS NOT NULL
ORDER BY SALARY DESC, COMMISSION DESC;

-- 문제 14) 이름(ENAME)의 세번째 문자가 R인 사원의 이름을 표시하세요.
-- 사원테이블 : EMPLOYEE
SELECT ENAME FROM EMPLOYEE
WHERE ENAME LIKE '__R%';

-- 문제 15) 이름에(ENAME) A와(1번조건) E를(2번조건) 모두 포함하고 있는 
--         사원의 이름을 표시하세요.
-- 사원 테이블 : EMPLOYEE
SELECT ENAME FROM EMPLOYEE
WHERE ENAME LIKE '%A%'
AND ENAME LIKE '%E%';

-- 문제 16) 담당업무(JOB컬럼)가 사무원(CLERK) 또는 영업사원(SALESMAN)이면서(1번)
--     급여가 $1600, $950 또는 $1300이 아닌 (2번)
--     사원의 이름(ENAME), 담당업무(JOB), 급여(SALARY)를 출력하세요
-- 힌트) ~ 아닌 : 1) ~ 인 것을 구하고, 2) NOT : NOT IN()
-- 사원 테이블 : EMPLOYEE
SELECT ENAME, JOB, SALARY FROM EMPLOYEE
WHERE JOB IN('CLERK','SALESMAN')
AND SALARY NOT IN (1600, 950, 1300);

-- 문제 17) COMMISSION(상여금)이 $500 이상인 
--     사원의 이름(ENAME)과 급여(SALARY) 및 COMMISSION(상여금)을 출력하세요
-- 사원 테이블 : EMPLOYEE
-- 참고) COMMISSION 컬럼 : 데이터 형태 (NULL ,숫자)
--    부등호 비교연산자 로 비교시 : NULL 데이터는 제외하고, 비교를 함
--   NULL 산술연산 = NULL
SELECT ENAME, SALARY, COMMISSION FROM EMPLOYEE
WHERE COMMISSION IS NOT NULL
AND COMMISSION >= 500;

-- 문제 18) 사원테이블에서(EMPLOYEE) 사원 이름이(ENAME) S 로 끝나는 사원 데이터를 
-- 모두 출력하는 SQL 문을 작성해 보세요
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%S';

 -- 문제 19) 사원 테이블을(EMPLOYEE) 사용하여 30번 부서에서(DNO) 근무하고 있는 사원 중에 
-- 직책이(JOB) SALESMAN 인 사원의 사원번호(ENO), 이름(ENAME), 직책(JOB), 
-- 급여(SALARY), 부서번호를(DNO) 출력하는 SQL 문을 작성해 보세요.
SELECT ENO, ENAME, JOB, SALARY, DNO FROM EMPLOYEE
WHERE DNO = 30 AND JOB = 'SALESMAN';

-- 문제 20) 사원 테이블을(EMPLOYEE) 사용하여 20번, 30번 부서에(DNO) 근무하고 있는 사원 중
-- 급여가(SALARY) 2000 초과인 사원을 조회하세요
SELECT * FROM EMPLOYEE
WHERE DNO IN (20, 30) AND SALARY > 2000;

-- 문제 21) 사원이름에(ENAME) E 가 포함되어 있는 30번 부서의(DNO) 사원 중 급여가(SALARY)
-- 1000 ~ 2000 사이가 아닌 사원이름(ENAME), 사원번호(ENO), 급여(SALARY), 부서번호를(DNO) 출력하는
-- SQL 문을 작성해 보세요
SELECT ENAME, ENO, SALARY, DNO FROM EMPLOYEE
WHERE ENAME LIKE '%E%'
AND DNO = 30
AND SALARY NOT BETWEEN 1000 AND 2000;

-- 문제 22) 상여금이(COMMISSION) 없고 매니저가(MANAGER) 있고 직책이(JOB) MANAGER , CLERK 인 사원 중에서
-- 사원이름의 두번째 글자가 L 이 아닌 사원의 정보를 출력하는 SQL문을 작성하세요
SELECT * FROM EMPLOYEE
WHERE COMMISSION IS NULL AND MANAGER IS NOT NULL
AND JOB IN('MANAGER', 'CLERK') AND ENAME NOT LIKE '__L%';