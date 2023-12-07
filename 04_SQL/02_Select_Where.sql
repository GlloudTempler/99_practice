-- 파일명 : 02_SELECT_WHERE.SQL
-- 데이터를 조건을 붙여 조회하기
-- 예제 1) 월급(salary)이 1500이상인 사원(EMPLOYEE) 조회하기
-- 사용법) SELECT 컬럼명, 컬럼명2... FROM 테이블명
-- WHERE 조건절(컬럼명 > 값);
-- 비교연산자 : <,>,>=,<=, =(같다), <>(같지 않다)
SELECT ENAME, SALARY FROM EMPLOYEE
WHERE SALARY > 1500;

-- 예제 2) 10번 부서의 소속 사원을 출력하세요
-- 사원 테이블 : EMPLOYEE
-- 부서 번호 : DNO
SELECT * FROM EMPLOYEE
WHERE DNO = 10;

-- 예제 3) 사원명(ENMAE)이 SCOTT 사원 출력
SELECT * FROM EMPLOYEE
WHERE ENAME = 'SCOTT';

-- 예제 4) 입사일(HIREDATE)이 '1981/01/01/' 이전인 사원만 출력하기
SELECT * FROM EMPLOYEE
WHERE HIREDATE < '1981/01/01';

-- 2) 논리 연산자와 함께 조건절 사용하기
-- 논리 연산자 (AND(----성능이 좋음), OR, NOT..)
-- 예제 5) 부서번호(DNO)가 10이고 직급이(JOB) 'MANAGER'인 사원 출력
SELECT * FROM EMPLOYEE
WHERE DNO = 10 AND JOB = 'MANAGER';

-- 연습 1) 급여가 1000과 1500사이의 사원 조회하기
SELECT * FROM EMPLOYEE
WHERE SALARY >= 1000 AND SALARY <= 1500;

-- 예제 6) 부서 번호가 10이거나(OR) 직급이 'MANAGER'인 사원만 출력하기
SELECT * FROM EMPLOYEE
WHERE DNO = 10 OR JOB  = 'MANAGER';

-- 예제 7) 10번 부서에 소속된 사원을 제외하고 나머지 사원 출력
-- NOT 컬럼명  = 값; (값에 반대되는 데이터가 출력됨)
SELECT * FROM EMPLOYEE
WHERE NOT DNO = 10;

-- 결과는 같고 다른 방법
SELECT * FROM EMPLOYEE
WHERE DNO <> 10;

-- 연습 2) 급여가 1000미만이거나 1500 초과인 사원 출력
SELECT * FROM EMPLOYEE
WHERE SALARY < 1000 OR SALARY > 1500;

-- 연습 3) 커미션이 300이거나 500이거나 1400인 사원 출력
SELECT * FROM EMPLOYEE
WHERE COMMISSION = 300 OR  COMMISSION = 500 OR COMMISSION = 1400;

-- 3) BETWEEN 예약어 소개
-- 예제 8) 급여가 1000 - 1500 인 사원 조회
SELECT * FROM EMPLOYEE
WHERE SALARY >= 1000 AND SALARY <=1500;

-- BETWEEN 사용
-- 사용법 : SELECT 컬럼명 FROM 테이블명 BETWEEN 작은값 AND 큰값;
-- 사용처 : 작은값 ~ 큰값 사이의 결과 조회하기 할 때 사용
SELECT * FROM EMPLOYEE
WHERE SALARY BETWEEN 1000 AND 1500;

-- NOT BETWEEN
-- 예제 9) 급여가 1000미만, 1500초과인 사원
SELECT * FROM EMPLOYEE
WHERE SALARY NOT BETWEEN 1000 AND 1500;

-- 연습 3) 1982년에 입사한 사원 조회하기
-- 단 BETWEEN AND 사용
SELECT * FROM EMPLOYEE
WHERE HIREDATE BETWEEN '1982.01.01' AND '1982.12.31';

-- 4) IN 예약어
-- 예제 10) 상여금(COMMISSION) 300이거나 500이거나 1400인 사원 조회하기
-- 사원 : EMPLOYEE
SELECT * FROM EMPLOYEE
WHERE COMMISSION = 300 OR COMMISSION = 500 OR COMMISSION = 1400;

-- IN사용
-- 사용처 : OR로 연결된 데이터를 간단하게 사용가능.
SELECT * FROM EMPLOYEE
WHERE COMMISSION IN (300,500,1400);

-- NOT IN 사용
-- 예제 11) 상여금(COMMISSION) 300, 500, 1400 이 아닌 사원 조사
SELECT * FROM EMPLOYEE
WHERE COMMISSION NOT IN (300,500,1400);

-- 5) LIKE 검색 ************
-- 정의 : 일부 키워드(영문자, 한글)만 사용해서 비슷한 것들만 조회
-- 예제 12) 이름이 'F'로 시작하는 사원 조회하기
-- 사용법 : SELECT 칼럼 FROM 테이블명 WHERE 칼럼명 LIKE '%키워드%';
-- %를 제외한 문자들
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE 'F%';

-- 연습 4) 이름에 'M'이 포함되어 있는 사원 조회하기
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%M%';

-- 연습 5) 이름이 'N'으로 끝나는 사원 조회하기
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%N';

-- 예제 13) 이름의 두 번째 글자가 'A'인 사원 조회하기
-- LIKE 기호 : %(키워드를 제외한 어떤 문자열을 의미)
--          : _ (키워드를 제외한 어떤 1문자 의미)
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '_A%';

-- 연습 6) 이름의 3번째 글자가 'A' 인 사원 조회
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '__A%';

-- 예제 14) IN, BETWEEN 의 반대를 나타낼때 NOT 앞에 붙여서 사용
-- LIKE의 반대를 나타낼 때 똑같이 사용 가능 : NOT LIKE
-- 이름에 'A'가 포함되지 않는 사원을 조회하세요
-- 사원 : EMPLOYEE
-- 사원명 컬럼 : ENAME
SELECT * FROM EMPLOYEE
WHERE ENAME NOT LIKE '%A%';

-- 6) NUILL 검색(조회)
-- 예제 15) 상여금(COMMISSION) 이 NULL인 사원 조회
-- NULL 조회시 : WHERE 컬럼명 IS NULL;
SELECT * FROM EMPLOYEE
WHERE COMMISSION IS NULL; -- = NULL 은 오류

-- IN, BETWEEN, LIKE 의 반대는 앞에 NOT
-- IS NOT NULL 있음
SELECT * FROM EMPLOYEE
WHERE COMMISSION IS NOT NULL;

-- 7) ORDER BY : 정렬 기능
-- 정렬기능 사용시 성능 대폭 저하
-- 예제 16) 사원테이블을 오른차순으로 정렬, 월급기준
-- 오름차순(ASCENDING)
SELECT * FROM EMPLOYEE
ORDER BY SALARY ASC; -- ASC(오름차순, 생략가능)

-- 사원테이블을(EMPLOYEE) 내림차순으로 정렬, 월급기준
-- 내림차순(DESCENDING)
SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC; -- DESC(내림차순, 생략불가)

-- 연습 7) 사원테이블에서 사원명으로 오름차순 정렬 조회
SELECT * FROM EMPLOYEE
ORDER BY ENAME;

-- 연습 8) 사원테이블에서 입사일로 내림차순 정렬 조회
SELECT * FROM EMPLOYEE
ORDER BY HIREDATE DESC;
-- 연습 9) 사원테이블에서 급여는 내림차순으로 정렬, 사원명은 오름차순 조회
SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC, ENAME ASC;
-- ORDER BY 컬럼명 DESC(ASC), 컬럼명2 ASC(DESC)...;  -> 컬럼명 정렬 후 중복된 데이터에 대해서 컬럼명2로 정렬