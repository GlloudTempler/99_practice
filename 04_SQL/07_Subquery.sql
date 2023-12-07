-- 07_Subquery.sql
-- 서브쿼리 : 단일행 서브쿼리(1건만 나옴)
-- 예제 1) SCOTT 사원보다 급여를 많이 받는 사원을 찾기 위한 SQL문을 작성
-- 해결 : 1-1) 사원테이블에서 SCOTT 사원의 급여를 찾은 후에
--        1-2) 그 급여를 비교해서 많이 받는 사원을 추가로 찾아야함
-- 1번
SELECT SALARY
FROM EMPLOYEE
WHERE ENAME = 'SCOTT';

-- 2번
SELECT ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY > 3000;

-- 문제점 ) 성능 저하 : 여러번 쿼리로 인해
-- 사용법 )  SELECT 컬럼명 FROM 테이블명
--          WHERE 비교컬럼 > (SELECT 비교컬럼 FROM 테이블명)
SELECT ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY > (SELECT SALARY
                FROM EMPLOYEE
                WHERE ENAME = 'SCOTT');
