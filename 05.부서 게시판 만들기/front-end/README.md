# 설치 패키지 
# 1) 메뉴 라이브러리 설치
npm i react-router-dom

# 2) 벡엔드 연동 라이브러리 설치 : ajax (업그레이드)
npm i axios

# 3) pre css 컴파일러 : node-sass -> 더이상 안씀 : sass 설치할것
<!-- npm i node-sass -->
npm install sass
# 4) Material Page component 업그레이드 
# 과거 v4 -> v5 변경 설치
npm i @mui/material @emotion/react @emotion/styled

# 4-1) 소스에서 임포트 사용법 : <Pagination />
import Pagination from '@mui/material/Pagination';

# 5) typescript jquery, jqueryui type 넣기
# 5-1) typescript jquery 사용
npm i --save-dev @types/jquery
<!-- jqueryui type 설치 -->
npm i @types/jqueryui

# 6) 공통코드 : 프로젝트 시작 시 코드체계를 정의하고
# 각각의 테이블에서 사용하는 목적으로 씀
# ex) 온라인 쇼핑물 프로젝트 : 
#       - 공통 코드 대상 : 주문 -> 결제 -> 배송 -> 확정
#       - 예시 테이블 : 상품명(아우터) - 상태명(결제) : 컬럼명
#       - 공통 코드 : 주문 == 10001
#       - 공통 코드 : 결제 == 10002
#       - 공통 코드 : 결제 == 10003
#       - 공통 코드 : 결제 == 10004
# - 관리 개선(공통 코드 적용) : 상품명(아우터) - 상태명(10002)

# 7) 공유라이브러리 리덕스-툴킷 설치
npm i react-redux @reduxjs/toolkit

# 8) 폼 유효성 체크 라이브러리 설치
# 8-1) formik
npm i formik

# 9-2) yup
npm i yup
npm i @types/yup

# 로그인 추가 순서
0) App.tsx : /home 라우터  추가
0) index.tsx : <Provider store={store}></Provider> 추가
  - 리덕스 추가 (공유저장소)
1) types - auth 생성
2) store 생성
3) services - auth 생성
4) pages - auth 생성
5) components/common - HeaderCom.tsx : 추가 로직 작성
- 로그인 되면(true) : 회원가입(숨김) - 로그인(숨김 : 로그아웃)
- 로그아웃 되면 : 회원가입(보임) - 로그인(보임 : 로그아웃(숨김))