-- ! 중요
-- 그룹 함수 : DATA 집계 함수들(총액, 평균, 최고, 최저액)
-- 사용법 : SUM(컬럼명), AVG(컬럼명), MAX(컬럼명), MIN(컬럼명), COUNT(컬럼명)
-- 예제 1) 사원들의 급여 총액, 평균액, 최고액, 최소액 출력하기
SELECT SUM(SALARY) AS 총액
      ,ROUND(AVG(SALARY)) AS 평균 
      ,MAX(SALARY) AS 최고액
      ,MIN(SALARY) AS 최소액
FROM EMPLOYEE;

-- 예제 1) 최근에 입사한 사원과 가장 오래전에 입사한 사원의 입사일 출력하기
SELECT MIN(HIREDATE), MAX(HIREDATE) FROM EMPLOYEE;

-- 예제 2) 사원들의 상여금 총액 출력하기
-- COMMISSION 컬럼에는 NULL 있음 : 하지만 집계함수는 NULL 자동으로 제외시켜줌
SELECT SUM(COMMISSION) AS 총액 FROM EMPLOYEE;

-- 예제 3) 사원들의 총인원을 출력
SELECT COUNT(*) AS 사원수
FROM EMPLOYEE;

-- 예제 4) 상여금 받는 사원 수 출력
SELECT COUNT(COMMISSION) AS "상여금 받는 사원" FROM EMPLOYEE;

-- 예제 5) NOT NULL인 데이터 만 계산
SELECT COUNT(COMMISSION) AS 사워수
FROM EMPLOYEE WHERE COMMISSION IS NOT NULL;

-- 예제 6) 직위의 종류가 몇개인지 출력
-- DISTINCT : 중복 제거 키워드
-- SELECT COUNT(DISTINCT JOB) FROM EMPLOYEE;
-- 컬렴 별칭
-- 테이블 별칭 : 테이블 별칭
SELECT COUNT(DISTINCT EMP.JOB) AS 직업개수
FROM EMPLOYEE EMP;

-- 전체 함수 특징 : 1) 1건이 결과로 나옴
--                2) 일반컬럼과 같이 사용할 수 없음
SELECT ENAME, MAX(SALARY)
FROM EMPLOYEE; -- 에러 (일반컬럼, MAX같이 사용 못함)

-- 2) 부분(컬럼별) 집계 하기 : GROUP BY (예약어)
-- 사용법) GROUP BY 컬럼명, 컬럼명2, ...
-- 예제 7) 소속 부서별(DNO) 평균 급여를 부서번호와 함께 출력
SELECT DNO,
       TRUNC(AVG (SALARY)) AS 평균급여
FROM EMPLOYEE
GROUP BY DNO; -- 부서번호 컬럼별 집계 (부서번호 컬럼은 출력할 수 있음)

-- 주의점) 1) 그룹함수와 일반 컬럼은 같이 사용할 수 없음 (단, 컬럼별 집계에서 그 컬럼별은 그룹함수와 같이 사용할 수 있음)

-- 예제 8) 부서번호별(DNO), 직위별(JOB) 데이터 건수(COUNT) 및 급여 총액 구하기
SELECT DNO, JOB,
       COUNT(*),
       SUM(SALARY)
FROM EMPLOYEE
GROUP BY DNO, JOB;

-- GROUP BY 사용시 조건 추가 : HAVING 키워드 (그룹함수에만 사용)
-- 예제 9) 부서번호별 최고급여가 3000이상인 부서의 번호와 최고금액 구하기
SELECT DNO,
       MAX(SALARY)
FROM EMPLOYEE
GROUP BY DNO
HAVING MAX(SALARY) >= 3000;

-- 연습 1) 사원테이블에서 job이 1) MANAGER인 값을 제외하고 급여 총액이 5000이상인 직급별 총액 구하기
SELECT JOB, SUM(SALARY)
FROM EMPLOYEE
WHERE JOB NOT LIKE '%MANAGER%'
GROUP BY JOB
HAVING SUM(SALARY) >= 5000;

-- 