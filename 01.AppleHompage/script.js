//Data SET : 소스 코드 잘 몰라도 결과창 띄워놓고 비교하면서 수정 (백업필)
const dbData = {
    logo : '<i class="fab fa-apple"></i>',  //로고 Fontawesome 홈페이지에 가서 원하는 로고 고르고 소스 복붙.
    mainLink : '#', //로고 클릭시 링크
    mainMenu :{
        name : '쇼핑 및 알아보기',  //메뉴 이름 : 홈페이지 하단의 세부 메뉴 타이틀
        list : [
            {name : 'Mac', link : '#'},         //메뉴 이름, 링크
            {name : 'iPad', link : '#'},        //메뉴 이름, 링크
            {name : 'iPhone', link : '#'},      //메뉴 이름, 링크
            {name : 'Watch', link : '#'},       //메뉴 이름, 링크
            {name : 'Music', link : '#'},       //메뉴 이름, 링크
            {name : '고객지원', link : '#'}       //메뉴 이름, 링크  
        ]
    },
    searchLink : '#',   //돋보기 모양 클릭시 링크
    cartLink : '#',     //장바구니 링크
    infoMessage : '<a href="#">온라인으로 쇼핑</a>하고 무료 배송, 스페셜리스트 지원 등의 혜택을 받으세요.', //메뉴바 하단의 텍스트
    mainProducts : [    //메뉴바 하단의 상품목록 (최소 1개 이상 남겨두고 나머지 삭제 가능)
        {
            name : 'iPhone 12',                             //상품 제목
            info : '스피드 그 이상의 스피드.',                    //상품 설명
            text : '가격은 950,000원부터 (보상 판매 미적용)',       //가격 등의 상세정보
            pageLink : '#',                                 //상품 페이지 이동 링크주소
            orderLink : '#',                                //구입 페이지 이동 링크주소
            fontColor : '#000000',                          //제목, 텍스트 폰트 색상
            linkColor : '#517cd1',                          //더알아보기 구입하기 링크 폰트 색상
            imgLink : 'https://www.apple.com/kr/home/t/images/heroes/iphone-12/iphone_12_us__fo0stbby242m_large_2x.jpg'
        },
        {
            name : 'iPhone 12 Pro',
            info : '도약의 시간.',
            text : '가격은 1,350,000원부터 (보상 판매 미적용)',
            pageLink : '#',
            orderLink : '#',
            fontColor : '#ffffff', 
            linkColor : '#517cd1',
            imgLink : 'https://www.apple.com/v/home/t/images/heroes/iphone-12-pro/iphone_12_pro_us__e5oyysg4k0ya_large_2x.jpg'
        },
        {
            name : 'iPad Air',
            info : '강력하다. 다채롭다. 경이롭다',
            text : '가격은 690,000원부터',
            pageLink : '#',
            orderLink : '#',
            fontColor : '#000000',        
            linkColor : '#517cd1',  
            imgLink : 'https://www.apple.com/v/home/t/images/heroes/ipad-air/hero__dvsxv8smkkgi_large_2x.jpg'
        },
    ],
    subProducts : [
        {
            name : 'watch',
            info : '건강의 미래, 이미 손목 위에.',
            pageLink : '#',
            orderLink : '#',
            fontColor : '#ffffff',        
            linkColor : '#517cd1',       
            imgLink : 'https://www.apple.com/kr/home/t/images/promos/watch-series-6/tile__cauwwcyyn9hy_large_2x.jpg'
        },
        {
            name : 'watch',
            info : 'Black Unity Collection을 소개합니다.',
            pageLink : '#',
            orderLink : '#',
            fontColor : '#ffffff',
            linkColor : '#517cd1',    
            imgLink : 'https://www.apple.com/v/home/t/images/promos/watch-black-unity-collection/promo_watch_black_unity_collection__glt5v0ra46q2_large_2x.jpg'
        },
        {
            name : 'MacBook Pro',
            info : '프로 중의 프로',
            pageLink : '#',
            orderLink : '#',
            fontColor : '#ffffff',
            linkColor : '#517cd1',    
            imgLink : 'https://www.apple.com/v/home/t/images/promos/macbook-pro-13/macbook_pro_13__koscrc0x6wam_large_2x.jpg'
        },
        {
            name : 'MacBook Air',
            info : 'Air의 흐름을 바꾸다.',
            pageLink : '#',
            orderLink : '#',
            fontColor : '#ffffff',
            linkColor : '#517cd1',    
            imgLink : 'https://www.apple.com/v/home/t/images/promos/macbook-air/macbook_air__knzp0i282eyy_large_2x.jpg'
        },
        {
            name : 'Apple 여의도',
            info : '곧 만나요.',
            pageLink : '#',
            orderLink : '#',
            fontColor : '#000000', 
            linkColor : '#517cd1',     
            imgLink : 'https://www.apple.com/kr/home/t/images/promo/promo_large_2x.jpg'
        },
        {
            name : '대학 생활용 Mac',
            info : '또는 iPad 구입하고 AirPods까지 덤으로.',
            pageLink : '#',
            orderLink : '#',
            fontColor : '#000000',
            linkColor : '#517cd1',    
            imgLink : 'https://www.apple.com/kr/home/t/images/promos/back-to-school/tile__cauwwcyyn9hy_large_2x.jpg'
        },
    ],
    //하단 이벤트 문구
    eventText : `
                * 보상 판매 프로그램은 Apple의 파트너이자 독립적으로 운영되는 제3의 업체에 의해 제공됩니다. Apple 및 Apple의 계열사는 고객과 파트너 간 계약의 당사자가 아닙니다. 보상 판매
                금액은 보상 판매되는 스마트폰의 상태 및 모델에 따라 달라집니다. 19세 이상이어야 합니다. 일부 매장에서는 본 프로그램을 이용할 수 없으며, 일부 기기는 보상 판매 대상이 아닙니다.
                Apple은 어떤 기기든 수령을 거부하거나, 그 수량을 제한할 권리를 보유합니다. 새 Apple 기기 구매 시, 현재 소유한 기기의 가치만큼 할인을 받을 수도 있습니다. 추가 약관은
                apple.com/kr/trade-in을 참고하십시오.`,
    //하단 상세 메뉴 (메인메뉴가 가장 좌측에 자동배치)
    subMenu : [
        {
            name : '서비스',                //서브 메뉴 이름
            list : [                      //서브 메뉴 목록 (최소 1개 이상 설정, 나머지 삭제가능 [2개 이상 권장])
                {name : 'Apple Music', link : '#'},
                {name : 'Apple Arcade', link : '#'},
                {name : 'iCloud', link : '#'},
                {name : 'Apple Books', link : '#'},
                {name : 'Apple Store', link : '#'}
            ]
        },
        {
            name : '계정',
            list : [
                {name : 'Apple ID 관리', link : '#'},
                {name : 'Apple Store 계정', link : '#'},
                {name : 'iCloud.com', link : '#'},
            ]
        },
        {
            name : 'Apple Store',
            list : [
                {name : '매장 찾기', link : '#'},
                {name : '온라인에서 쇼핑하기', link : '#'},
                {name : 'Genius Bar', link : '#'},
                {name : 'Today at Apple', link : '#'},
                {name : 'Apple 캠프', link : '#'},
                {name : 'Apple Store 앱', link : '#'},
                {name : '리퍼 및 특가 제품', link : '#'},
                {name : '금융 혜택', link : '#'},
                {name : 'Apple Trade In', link : '#'},
                {name : '주문 상태', link : '#'},
                {name : '쇼핑 도움말', link : '#'},
            ]
        },
        {
            name : '비즈니스',
            list : [
                {name : 'Apple과 비즈니스', link : '#'},
                {name : '비즈니스를 위한 제품 쇼핑하기', link : '#'},
            ]
        },
        {
            name : '교육',
            list : [
                {name : 'Apple과 교육', link : '#'},
                {name : '초중고용 제품 쇼핑하기', link : '#'},
                {name : '대학 생활을 위한 제품 쇼핑하기', link : '#'},
            ]
        },
        {
            name : 'Apple의 가치관',
            list : [
                {name : '손쉬운 사용', link : '#'},
                {name : '환경', link : '#'},
                {name : '개인정보 보호', link : '#'},
                {name : '협력업체에 대한 책임', link : '#'},
            ]
        },
        {
            name : 'Apple 정보',
            list : [
                {name : 'Newsroom', link : '#'},
                {name : 'Apple 리더십', link : '#'},
                {name : '채용 안내', link : '#'},
                {name : '이벤트', link : '#'},
                {name : '일자리 창출', link : '#'},
                {name : 'Apple 연락처', link : '#'},
            ]
        },
    ],
    //페이지 하단의 서비스 텍스트
    serviceText :`
        다양한 쇼핑 방법 : Apple Store를 방문하거나, 리셀러를 찾아보거나, 080-330-8877번으로 전화하세요.
    `,
    //홈페이지 권리 등 copyright 
    siteInfo : {
        copyright : `Copyright <i class="far fa-copyright"></i> 2021 Apple Inc. 모든 권리 보유.`,
        infoList : [
            {title : '개인정보 처리방침', link : '#'},
            {title : '웹 사이트 이용 약관', link : '#'},
            {title : '판매 및 환불', link : '#'},
            {title : '법적 고지', link : '#'},
            {title : '사이트 맵', link : '#'},
        ]
    },
    //회사 정보 등 홈페이지 최 하단에 위치
    companyInfo : [
        {title : '사업자등록번호 : ', data : '120-81-84429'},
        {title : '통신판매업신고번호 : ', data : '제 2011-서울강남-00810'},
        {title : '대표이사 : ', data : 'PETER DENWOOD'},
        {title : '주소 : ', data : '서울 특별시 강남구 영동대로 517'},
        {title : '대표전화 : ', data : '02-6712-6700'},
        {title : '팩스 : ', data : '02-6928-0000'}
    ]
};

const body = document.querySelector('body');
//HTML

//header 
const header = document.createElement('header');
{
    header.className = 'header';
    const header_logo = document.createElement('div');
    header_logo.classList.add('logo');
    header_logo.innerHTML = `
        <div class="list-icon"><i class="fas fa-bars"></i></div>
        <div class="logo-icon"><a href="#">${dbData.logo}</a></div>
    `;
    const header_menuList = document.createElement('ul');
    header_menuList.className = 'menu-list';
    dbData.mainMenu.list.forEach(menu => {
        header_menuList.innerHTML += `<li class="menu-item"><a href="${menu.link}">${menu.name}</a></li>`;
    });
    const header_icons = document.createElement('ul');
    header_icons.className = 'icons';
    header_icons.innerHTML = `
        <li class="search-icon"><a href="${dbData.searchLink}"><i class="fas fa-search"></i></a></li>
        <li class="cart-icon"><a href="${dbData.cartLink}"><i class="fas fa-shopping-bag"></i></a></li>
    `;
    header.append(header_logo,header_menuList,header_icons);
}

//Information
const shopInfo = document.createElement('section');
{
    shopInfo.className = 'shop-info';
    shopInfo.innerHTML = `
        <p>${dbData.infoMessage}</p>
    `;
}

//Main Collection
const mainCollection = document.createElement('section');
{
    mainCollection.className = 'main-products';
    const mainCollectionUl = document.createElement('ul');
    mainCollectionUl.className = 'product-list';
    dbData.mainProducts.forEach(product=>{
        let newLi = document.createElement('li');
        newLi.className = 'product';
        newLi.style = `background : url('${product.imgLink}') center center/ cover no-repeat;`;
        newLi.innerHTML += `
            <h4 style="color:${product.fontColor}">${product.name}</h4>
            <h5 style="color:${product.fontColor}">${product.info}</h5>
            <p style="color:${product.fontColor}">${product.text}</p>
            <div class="links">
            <a href="${product.pageLink}" style="color:${product.linkColor}">더 알아보기></a>
            <a href="${product.orderLink}" style="color:${product.linkColor}">구입하기></a>
            </div>
        `;
        mainCollectionUl.append(newLi);
    });
    mainCollection.append(mainCollectionUl);
}

//Sub Collection
const subCollection = document.createElement('section');
{
    subCollection.className = 'sub-products';
    const subCollectionUl = document.createElement('ul');
    subCollectionUl.className = 'product-list';
    dbData.subProducts.forEach(product=>{
        let newLi = document.createElement('li');
        newLi.className = 'product'
        newLi.style = `background: url('${product.imgLink}') center center / cover no-repeat;`;
        newLi.innerHTML += `
            <h2 style="color:${product.fontColor}">${product.name}</h2>
            <h3 style="color:${product.fontColor}">${product.info}</h3>
            <div class="links">
                <a href="${product.pageLink}" style="color:${product.linkColor}">더 알아보기></a>
                <a href="${product.orderLink}" style="color:${product.linkColor}">구입하기></a>
            </div>
        `;
        subCollectionUl.append(newLi);
    });
    subCollection.append(subCollectionUl);
}

//Event
const eventElement = document.createElement('section');
{
    eventElement.className = 'event-info';
    eventElement.innerHTML = `
        <p>${dbData.eventText}</p>
    `;
}

//Menu Detail 
const footMenu = document.createElement('section');
{
    footMenu.className = 'foot-menu';
    const subMenuNameArr = [];  //서브 메뉴 제목
    const subMenuArr = [];  //서브 메뉴 <li>

    //서브메뉴 HTML SET
    let imsiString = '';
    subMenuNameArr.push(dbData.mainMenu.name);
    dbData.mainMenu.list.forEach(menu=>{
        imsiString += `<li><a href="${menu.link}">${menu.name}</a></li>`;
    });
    subMenuArr.push(imsiString);
    for(let i=0;i<dbData.subMenu.length ;i++){
        let imsiStr = '';
        subMenuNameArr.push(dbData.subMenu[i].name);
        for(let j=0;j<dbData.subMenu[i].list.length;j++){
            const menu = dbData.subMenu[i].list[j];
            imsiStr+=`<li><a href="${menu.link}">${menu.name}</a></li>`;
        }
        subMenuArr.push(imsiStr);
    }
    const subMenu = document.createElement('nav');
    subMenu.className = 'sub-menu';
    subMenu.innerHTML = `
    <li class="shopDetail">
        <div class="title">
            <h3>${subMenuNameArr.shift()}</h3>
            <div class="plus-btn"><i class="fas fa-plus"></i></div>
        </div>
        <ul class="shop-detail">
            ${subMenuArr.shift()}
        </ul>
    </li>
    <li class="serviceAndAccount">
        <div class="title">
            <h3>${subMenuNameArr.shift()}</h3>
            <div class="plus-btn"><i class="fas fa-plus"></i></div>
        </div>
        <ul class="services">
            ${subMenuArr.shift()}
        </ul>
        <div class="title">
            <h3>${subMenuNameArr.shift()}</h3>
            <div class="plus-btn"><i class="fas fa-plus"></i></div>
        </div>
        <ul class="account">
            ${subMenuArr.shift()}
        </ul>
    </li>
    <li class="storeDetail">
        <div class="title">
            <h3>${subMenuNameArr.shift()}</h3>
            <div class="plus-btn"><i class="fas fa-plus"></i></div>
        </div>
        <ul class="store">
            ${subMenuArr.shift()}
        </ul>
    </li>
    <li class="businessAndEducation">
        <div class="title">
            <h3>${subMenuNameArr.shift()}</h3>
            <div class="plus-btn"><i class="fas fa-plus"></i></div>
        </div>
        <ul class="business">
            ${subMenuArr.shift()}
        </ul>
        <div class="title">
            <h3>${subMenuNameArr.shift()}</h3>
            <div class="plus-btn"><i class="fas fa-plus"></i></div>
        </div>
        <ul class="education">
            ${subMenuArr.shift()}
        </ul>
    </li>
    <li class="thinkAndAppleInfo">
        <div class="title">
            <h3>${subMenuNameArr.shift()}</h3>
            <div class="plus-btn"><i class="fas fa-plus"></i></div>
        </div>
        <ul class="think">
            ${subMenuArr.shift()}
        </ul>
        <div class="title">
            <h3>${subMenuNameArr.shift()}</h3>
            <div class="plus-btn"><i class="fas fa-plus"></i></div>
        </div>
        <ul class="apple-info">
            ${subMenuArr.shift()}
        </ul>
    </li>
    `;

    //회사정보 HTML SET
    const footer = document.createElement('footer');
    footer.className = 'footer';
    let siteInfoMenus = '';
    let companyInfoMenus = '';

    dbData.siteInfo.infoList.forEach(info=>{
        siteInfoMenus += `<li><a href="${info.link}">${info.title}</a></li>`;
    });

    dbData.companyInfo.forEach(info => {
        companyInfoMenus += `
            <dt>${info.title}</dt>
            <dd>${info.data}</dd>`;
    });

    footer.innerHTML = `
        <section class="service">
            <p>${dbData.serviceText}</p>
        </section>
        <section class="company">
            <div class="copyright">${dbData.siteInfo.copyright}</div>
            <ul class="notice">
                ${siteInfoMenus}
            </ul>
        </section>
        <span class="line"></span>
        <section class="company-info">
            <dl class="info-list">
                ${companyInfoMenus}
            </dl>
        </section>
    `;

    
    footMenu.append(subMenu,footer);
}

//Append Childs
body.append(header,shopInfo,mainCollection,subCollection,eventElement,footMenu);

//FontAwesome 추가
const fontawesome = document.createElement('script');
{
    fontawesome.src = 'https://use.fontawesome.com/releases/v5.2.0/js/all.js';
    body.append(fontawesome);
}

//Mobile 메뉴 버튼 클릭시
const menuBtn = document.querySelector('.header > .logo > .list-icon');
menuBtn.addEventListener('click',e=>{
    const header = document.querySelector('.header');
    const menuList = document.querySelector('.header > .menu-list');
    const listIcon = document.querySelector('.header > .logo > .list-icon > svg');

    if(!listIcon.classList.toggle('fa-bars'))
        listIcon.classList.toggle('fa-times');
    
    header.classList.toggle('active');
    menuList.classList.toggle('active');
});

//Mobile 메뉴 디테일 버튼 클릭시
const subMenu = document.querySelector('.foot-menu > .sub-menu');
subMenu.addEventListener('click', e => {
    if(e.target.nodeName === 'H3' || e.target.nodeName === 'svg' || e.target.nodeName === 'path'){
        switch (e.target.nodeName) {
            case 'H3':
                e.target.parentElement.nextElementSibling.classList.toggle('selected');
                return;
            case 'svg':
                e.target.parentElement.parentElement.nextElementSibling.classList.toggle('selected');
                return;
            case 'path':
                e.target.parentElement.parentElement.parentElement.nextElementSibling.classList.toggle('selected');
                return;
        }
    }
});

