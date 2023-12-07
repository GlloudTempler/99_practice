-- 연습문제
-- 연습문제 1) 모든 사원의 급여 최고액, 최저액, 총액 및 평균 급여 출력
-- 컬럼 별칭 : 최고액, 최저액, 총액, 평균 급여
-- 반올림
SELECT 
        MAX(SALARY) AS 최고액,
        MIN(SALARY) AS 최저액,
        SUM(SALARY) AS 총액,
        ROUND(AVG(SALARY)) AS 평균급여
FROM EMPLOYEE;

-- 연습문제 2) 각 담당 업무(직위)(JOB) 유형별로 급여 최고액, 최저액 총액 및 평균액 출력
-- 컬럼 별칭 : 최고액, 최저액, 총액, 평균 급여
-- 반올림
SELECT JOB,
            MAX(SALARY),
            MIN(SALARY),
            SUM(SALARY),
            ROUND(AVG(SALARY))
FROM EMPLOYEE
GROUP BY JOB;

-- 연습문제 3) 담당업무별로 COUNT 함수 이용 사원 수 출력
SELECT JOB, COUNT(*) FROM EMPLOYEE
GROUP BY JOB;

-- 연습문제 4) 관리자 수를 출력
-- MANAGER 컬럼의 데이터 개수
SELECT COUNT(MANAGER) AS MANAGER FROM EMPLOYEE;

-- 연습문제 5) 급여 최고액, 급여 최저액의 차액 출력
SELECT MAX(SALARY) - MIN(SALARY) AS 급여차 FROM EMPLOYEE;

-- 연습문제 6) 직급별 사원의 최저급여 출력
-- 단, 관리자를 알 수 없는 사원 및 최저 급여가 2000 미만인 그룹은 제외
-- 급여에 대한 내림차순으로 정렬

SELECT JOB, MIN(SALARY) FROM EMPLOYEE 
WHERE MANAGER IS NOT NULL
GROUP BY JOB
HAVING MIN(SALARY) >= 2000
ORDER BY MIN(SALARY) DESC;

-- 연습문제 7) 각 부서에 대해(부서번호별로)(DNO) 부서번호(DNO), 사원수(COUNT), 
--       부서 내의 모든 사원의 평균 급여를(ROUND(AVG(),2)) 출력하세요
--      (부서별 사원수, 평균급여 출력)
-- 컬럼별칭을 사용해서 부서번호, 사원수,  평균급여를 출력하세요.
-- 평균급여는 소수점 2째자리에서 반올림하세요

SELECT DNO, COUNT(*),
       ROUND(AVG(SALARY), 2)
FROM EMPLOYEE
GROUP BY DNO;

-- 연습문제 8 사원테이블을(EMPLOYEE) 이용하여 
-- 부서번호(DNO), 평균급여(AVG_SAL), 최고급여(MAX_SAL), 최저급여(MIN_SAL), 사원수를(CNT) 출력하세요
-- 단 평균 급여를 출력할 때 소수점을 제외하고 각 부서번호별로 출력하세요
SELECT DNO,
          ROUND(AVG(SALARY)),
          MAX(SALARY),
          MIN(SALARY),
          COUNT(*)
FROM EMPLOYEE
GROUP BY DNO;

-- 연습문제 9 같은 직책에(JOB) 종사하는 사원이 3명 이상인 직책과 인원수를 출력하세요
SELECT JOB, COUNT(JOB) FROM EMPLOYEE
GROUP BY JOB
HAVING COUNT(JOB) >= 3;

-- 연습문제 10 사원들의(EMPLOYEE) 입사 연도를(HIREDATE) 기준으로(입사연도별로) 
-- 부서별로(DNO) 몇 명이 입사했는지 출력하세요
SELECT TO_CHAR(HIREDATE, 'YYYY') AS 입사연도, DNO, COUNT(DNO) AS 사원수 FROM EMPLOYEE
GROUP BY TO_CHAR(HIREDATE, 'YYYY'), DNO
ORDER BY TO_CHAR(HIREDATE, 'YYYY');

