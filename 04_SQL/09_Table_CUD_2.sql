-- 09_Table_CUD_2.sql
-- UPDATE(수정)
-- 대상 : DEPT_COPY 실습
SELECT * FROM DEPT_COPY;

-- 예제 1) 10번 부서 이름 수정 : 'ACCOUNTING' -> 'PROGRAMMING'
-- 사용법)
-- UPDATE 테이블명
-- SET
--    대상컬럼명 = 변경할 값
-- WHERE 컬럼명 = 값;(조건)

UPDATE DEPT_COPY
SET
    DNAME = 'PROGRAMMING'
WHERE DNO = 10;

COMMIT;

-- 연습 1) 20번 부서 이름 수정하기 : 'HR' (인력팀)
UPDATE DEPT_COPY
SET
    DNAME = 'HR'
WHERE DNO = 20;
COMMIT;
SELECT * FROM DEPT_COPY;

-- 연습(응용) 2) 컬럼 값을 여러개 수정하기
--  10 번 부서의 부서명을 'PROGRAMMING2', 부서위치를 'SEOUL'로 수정
UPDATE DEPT_COPY
SET
    DNAME = 'PROGRMMING2',
    LOC = 'SEOUL'
WHERE DNO = 10;
COMMIT;
SELECT * FROM DEPT_COPY;

-- 전체 부서에 대해 수정하기
UPDATE DEPT_COPY
SET
    DNAME = 'PROGRMMING2',
    LOC = 'SEOUL';
ROLLBACK;
SELECT * FROM DEPT_COPY;

-- 예제 4) 10번 부서의 지역명을 (20번 부서의 지역명)으로 수정
-- UPDATE에도 서브쿼리 사용가능
-- 1) 20번 부서의 지역명
SELECT LOC FROM DEPT_COPY WHERE DNO = 20; -- DALAS
-- 2) UPDATE
UPDATE DEPT_COPY
SET LOC = (SELECT LOC FROM DEPT_COPY WHERE DNO=20)
WHERE DNO = 10;
SELECT * FROM DEPT_COPY;
COMMIT;

-- 연습 3) 10번 부서의 부서명, 지역명을 30번 부서의 부서명, 지역명으로 변경하기
-- 힌트) 서브쿼리
-- 1) 30번 부서의 부서명, 지역명
SELECT DNAME, LOC FROM DEPT_COPY WHERE DNO = 30;
-- 2) UPDATE
UPDATE DEPT_COPY
SET DNAME = (SELECT DNAME FROM DEPT_COPY WHERE DNO = 30),
    LOC = (SELECT LOC FROM DEPT_COPY WHERE DNO = 30)
WHERE DNO = 10;
SELECT * FROM DEPT_COPY;
COMMIT;

-- DELETE : 삭제(D), 전체삭제, 부분삭제 모두 가능, 취소 가능
-- VS TRUCATE TABLE 테이블; (빠른 전체삭제, 취소 불가)
-- 예제 6) 10번 부서를 삭제하세요
-- 사용법)
-- DELETE (FROM) 테이블명
-- WHERE 컬럼명 = 값;(조건)

DELETE FROM DEPT_COPY
WHERE DNO = 10;
SELECT * FROM DEPT_COPY;
COMMIT;

-- 연습 1) 영업부에(SALES)에 근무하는 사원 삭제하기
DELETE FROM DEPT_COPY
WHERE DNO = (SELECT DNO
             FROM DEPT_COPY
             WHERE DNAME = 'SALES');
ROLLBACK;
SELECT * FROM DEPT_COPY;
COMMIT;

-- 기타 명령어
-- 테이블 설계구조 보기 : DESC 테이블명
DESC DEPT_COPY;
