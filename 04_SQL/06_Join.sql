-- ! 중요
-- 예제 1) 사원번호가(ENO) 7788인 사원의 부서명은?
SELECT DNO FROM EMPLOYEE
WHERE ENO = 7788;
-- 1) 사원테이블에서 ENO=7788인 사람의 부서번호(DNO)를 알아낸 뒤 부서테이블에서 찾아서 출력
SELECT * FROM DEPARTMENT
WHERE DNO = 20;
-- 결과 : 조회가능성이 저하(SQL문 1번 실행하는 것이 가장 좋음)
--   1) 코딩(SQL) : 해석(시간소요)
--   2) 네트웍을 통해 접속툴 <->  DB서버간 통신(시간 쇼요(

--2) 조인을 사용함 : 위의 2번 조회를 1번 조회로 수정가능
-- 권장 : 4개 이내 연결
-- 예제 1) 사원번호가 7788인 사원의 부서명은 뭘까요
-- 사용법) SELECT 테이블1.컬럼명, 테이블2.컬럼명
--            FROM 테이블1
--                ,테이블2
--            WHERE 테이블1.공통컬럼 = 테이블2.공통컬럼 (EQUAL 조인)
SELECT ENO, DNAME, EMP.DNO, DEP.DNO
FROM EMPLOYEE EMP
    ,DEPARTMENT DEP
WHERE EMP.DNO = DEP.DNO;

SELECT EMP.*, DEP.*
FROM EMPLOYEE EMP
    ,DEPARTMENT DEP
WHERE EMP.DNO = DEP.DNO;

-- 조인 의미
-- 사원 테이블
SELECT * FROM EMPLOYEE
ORDER BY DNO;

-- 부서 테이블
SELECT * FROM DEPARTMENT
ORDER BY DNO;

-- 예제 1) 사원번호가 7499 또는 7900인 사원들에 소속된 부서정보를 모두 출력하세요
-- 부서정보 : 부서번호, 부서명, 부서위치
-- 힌트) 조인 및 조건 사용

SELECT EMP.*, DEP.*
FROM EMPLOYEE EMP
    ,DEPARTMENT DEP
WHERE EMP.DNO = DEP.DNO
AND ENO IN(7499, 7900);

-- 연습 1) 조인하고 아래 조건 추가
--      1-1) 사원번호가 7500 ~ 7700 사이에 있는 사원들의 소속된 부서정보를 출력하되
--      1-2) 부서이름이 SALES인 부서만 출력
-- 대상 : EMPLOYEE , DEPARTMENT
SELECT EMP.ENO, DEP.*
FROM EMPLOYEE EMP,
     DEPARTMENT DEP
WHERE EMP.DNO = DEP.DNO
AND DEP.DNAME = 'SALES'
AND EMP.ENO BETWEEN 7500 AND 7700;

-- 특수한 조인
-- 1) 범위 조인 : BETWEEN A AND B (A - B사이의 값)
-- 단점 : 성능 대폭 하락 [최후의 수단]
-- 급여 등급 테이블 : SALGRADE 
-- 가장 낮은 등급 : LOSAL칼럼
-- 가장 높은 등급 : HISAL칼럼
SELECT ENAME, SALARY, GRADE
FROM EMPLOYEE EMP
    ,SALGRADE SAL
WHERE EMP.SALARY BETWEEN SAL.LOSAL AND SAL.HISAL;

-- 2) 아우터 조인(OUTER JOIN)** : 
-- 이퀄조인(=) : 두 테이블의 공통컬럼에 NULL값이 있으면 NULL 값을 제외하여 연결
-- MANAGER 컬럼 : 관리자 사원번호
-- 용도 : NULL을 포함한 데이터도 화면에 표시하고 싶을 때 사용
-- 사용법 : =조인을 하되 NULL값이 있는 쪽에 (+) 붙이면됨
SELECT EMP.ENAME
      ,MAN.ENAME AS MANAGER
FROM EMPLOYEE EMP
    ,EMPLOYEE MAN
WHERE EMP.MANAGER =  MAN.MANAGER(+);

-- 3) SQL-99 표기법 : 오라클 DB/MySQL DB 등에서 지원
-- 전세계 SQL(질의어) 표준 : ANSI SQL(표준기구)
-- 예제1) 사원 X 부서 조인 : SQL-99 표기법
-- 오라클 조인
SELECT ENO, DNAME, EMP.DNO, DEP.DNO
FROM EMPLOYEE EMP
    ,DEPARTMENT DEP
WHERE EMP.DNO = DEP.DNO;

-- SQL-99 표기법 : DB상에 100% 호환됨
-- 사용법) SELECT 별칭1.컬럼명, 별칭2.컬럼명
--        FROM 테이블명1 별칭1 JOIN 테이블명2 별칭2 ON (별칭.공통컬럼 = 별칭2.공통컬럼)
SELECT ENO, DNAME, EMP.DNO, DEP.DNO
FROM EMPLOYEE EMP JOIN DEPARTMENT DEP ON(EMP.DNO = DEP.DNO);

-- 래프트 아우터 조인 : 오라클 (더하기가 오른쪽 반대면 라이트 아우터 조인)
SELECT EMP.ENAME
      ,MAN.ENAME AS MANAGER
FROM EMPLOYEE EMP
    ,EMPLOYEE MAN
WHERE EMP.MANAGER =  MAN.MANAGER(+);

-- SQL-99 표기법 : DB상에 100% 호환
SELECT EMP.ENAME
      ,MAN.ENAME AS MANAGER
FROM EMPLOYEE EMP LEFT OUTER JOIN EMPLOYEE MAN ON(EMP.MANAGER =  MAN.MANAGER(+))

