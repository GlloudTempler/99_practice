-- 07_Subquery_Exam.sql
-- 서브쿼리(자식쿼리) 연습문제

-- 1) 사원번호가 7788인 사원과 담당업무가 같은 사원을 사원이름, 담당업무 표시
SELECT ENAME, JOB
FROM EMPLOYEE
WHERE JOB = (SELECT JOB
             FROM EMPLOYEE
             WHERE ENO = 7788);

-- 2) 사원번호가 7499인 사원보다 급여가 많은 사원을 사원이름 담당업무 표시
SELECT ENAME, JOB
FROM EMPLOYEE
WHERE SALARY > (SELECT SALARY
                FROM EMPLOYEE
                WHERE ENO = 7499);

-- 3) 최소급여를 받는 사원의 이름, 담당 업무, 급여 표시
SELECT ENAME, JOB, SALARY
FROM EMPLOYEE
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEE);

--4) 평균 급여가 가장 적은 사원의 담당 업무를 찾아 직급과 평균 급여를 표시하세요
SELECT JOB, ROUND(AVG(SALARY), 1)
FROM EMPLOYEE
GROUP BY JOB
HAVING ROUND(AVG(SALARY),1) = (SELECT MIN(ROUND(AVG(SALARY),1))
                               FROM EMPLOYEE
                               GROUP BY JOB);

SELECT MIN(ROUND(AVG(SALARY) ,1))
FROM EMPLOYEE
GROUP BY JOB;

-- 5) (각 부서의 최소(MIN) 급여(SALARY))를 받는 
--   사원의 이름(ENAME), 급여(SALARY), 부서번호(DNO)를 표시하세요.
SELECT ENAME, SALARY, DNO
FROM EMPLOYEE
WHERE SALARY IN (SELECT MIN(SALARY)
                FROM EMPLOYEE
                GROUP BY JOB);

-- 6) 매니저가(MANAGER) 없는 사원의 이름을(ENAME) 표시하세요.
SELECT ENAME
FROM EMPLOYEE
WHERE ENO = (SELECT ENO FROM EMPLOYEE WHERE MANAGER IS NULL);

-- 7) 매니저가 있는 사원의 이름을 표시하세요
-- 단, 서브쿼리를 이용하세요
SELECT ENAME
FROM EMPLOYEE
WHERE ENO IN (SELECT ENO FROM EMPLOYEE WHERE MANAGER IS NOT NULL);

-- 8) BLAKE와 동일한 부서에 속한 사원의 이름과 입사일을 표시하는 질의를 작성하세요
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE DNO = (SELECT DNO
             FROM EMPLOYEE
             WHERE ENAME = 'BLAKE')
AND ENAME <> 'BLAKE';
             
-- 9) 급여가 평균급여보다 많은 사원들의 사원번호와 이름을 표시하되 결과를 급여에 대해서 오름차순으로 정렬
SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY > (SELECT AVG(SALARY)
                FROM EMPLOYEE)
ORDER BY SALARY;

-- 10) (이름에(ENAME) K가 포함된 사원)과 같은 부서에서(DNO) 일하는 사원의 
--   사원번호와(ENO) 이름을(ENAME) 표시하는 
-- 질의를 작성하세요.
-- 사원테이블 : EMPLOYEE
SELECT ENO, ENAME
FROM EMPLOYEE
WHERE DNO IN (SELECT DNO
              FROM EMPLOYEE
              WHERE ENAME LIKE '%K%');


-- 11) (부서 위치가(LOC) DALLAS인) 사원의 이름과(ENAME) 
--    부서번호(DNO) 및 담당 업무를(JOB) 표시하세요.
-- 단, 서브쿼리를 이용하세요
-- 힌트 : 서브쿼리
SELECT ENAME, DNO, JOB
FROM EMPLOYEE
WHERE DNO = (SELECT DNO
             FROM DEPARTMENT
             WHERE LOC = 'DALLAS');

-- 12) (KING에게) 보고하는 사원의 이름과(ENAME) 급여를(SALARY) 표시하세요.
-- 힌트 : 보고하는 사원의 매니저가(MANAGER) KING 임(7839)
-- 사원테이블 : EMPLOYEE
SELECT ENAME, SALARY
FROM EMPLOYEE
WHERE MANAGER = (SELECT ENO
                 FROM EMPLOYEE
                 WHERE ENAME = 'KING');
                 
-- 13) RESEARCH 부서의 사원에 대한 부서번호, 사원이름 및 담당업무 표시
SELECT DNO, ENAME
FROM EMPLOYEE
WHERE DNO = (SELECT DNO
             FROM DEPARTMENT
             WHERE DNAME = 'RESEARCH');

-- 14) 평균 급여보다 많은 급여를 받고 이름에 M이 포함된 사원가 같은 부서에서 근무하는
--     사원의 사원번호, 이름, 급여를 표시
SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE)
AND DNO IN (SELECT DNO FROM EMPLOYEE WHERE ENAME LIKE '%M%');

-- 15) 평균 급여가 가장 적은 업무를 찾고
--     출력은 담당업무, 평균급여 출력
SELECT ROUND(AVG(SALARY),1) AS 평균급여, JOB
FROM EMPLOYEE
GROUP BY JOB
HAVING ROUND(AVG(SALARY),1) = (SELECT MIN(ROUND(AVG(SALARY),1))
                              FROM EMPLOYEE
                              GROUP BY JOB); 

-- 16) 전체 사원중 ALLEN과 같은 직위인 사원들의
--     직위, 사원번호, 사원명, 급여, 부서번호, 부서명 출력하는 SQL
SELECT EMP.JOB, EMP.ENO, EMP.ENAME, EMP.SALARY, DEP.DNO, DEP.DNAME
FROM EMPLOYEE EMP,
     DEPARTMENT DEP
WHERE EMP.DNO = DEP.DNO
AND JOB = (SELECT JOB
           FROM EMPLOYEE
           WHERE ENAME = 'ALLEN');

-- 17) 10번 부서에 근무하는 사원중 30번 부서에는 존재하지 않는 직책을 가진 사원들의
--     사원번호, 사원명, 직위, 부서번호, 부서명, 부서위치 출력
SELECT EMP.ENO, EMP.ENAME, EMP.JOB, DEP.DNO, DEP.DNAME, DEP.LOC
FROM EMPLOYEE EMP,
     DEPARTMENT DEP
WHERE EMP.DNO = DEP.DNO
AND EMP.DNO = 10
AND JOB NOT IN (SELECT JOB
            FROM EMPLOYEE
            WHERE DNO = 30);