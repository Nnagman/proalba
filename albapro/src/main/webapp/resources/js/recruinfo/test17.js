var arrSearchGender = {
    "GENDERCD":[
         {"CD":"" , 	"NM":"성별"}
        ,{"CD":"C01",	"NM":"남자"}
        ,{"CD":"C02",	"NM":"여자"}
    ]};

var commonJson = {
    "OrderGbn" : [
         {name:'등록일순', 	value:'freeorder'}
        ,{name:'---------', value:''}
        ,{name:'시급높은순', value:'I01'}
        ,{name:'일급높은순', value:'I02'}
        ,{name:'주급높은순', value:'I03'}
        ,{name:'월급높은순', value:'I04'}
        ,{name:'연봉높은순', value:'I05'}
    ]
    ,"RecruitOrderGbn" : [
         {name:'등록일순', 	value:'freeorder'}
        ,{name:'----------', value:''}
        ,{name:'마감일순', value:'recruitendyyyymmdd'}
        ,{name:'경력 높은순', value:'careerup'}
        ,{name:'경력 낮은순', value:'careerdown'}
    ]
    ,"OrderCntGbn" : [
         {name:'20개씩 보기', value:'20'}
        ,{name:'30개씩 보기', value:'30'}
        ,{name:'50개씩 보기', value:'50'}
    ]};

var searchJson = {
    "gender" : [
         {name:'성별',	value:''}
        ,{name:'남자',	value:'C01'}
        ,{name:'여자',	value:'C02'}
    ]
    ,"worktime" : [
         {name:'오전', value:'J01'}
        ,{name:'오후', value:'J02'}
        ,{name:'야간', value:'J03'}
        ,{name:'종일', value:'J04'}
        ,{name:'협의', value:'J05'}
    ]
    ,"recruitType" : [
         {name:'아르바이트',value:'K01'}
        ,{name:'정규직',	value:'K02'}
        ,{name:'계약직',	value:'K03'}
        ,{name:'파견직',	value:'K04'}
    ]};

var ResumeTopSearch = {
    "gender" : [
         {name:'남자',	value:'M'}
        ,{name:'여자',	value:'F'}
    ]
    ,"workperiodcd" : [
         {name:'1주일이하',	value:'10100'}
        ,{name:'1주일~1개월',	value:'10101'}
        ,{name:'1개월~3개월',	value:'10102'}
        ,{name:'3개월~6개월',	value:'10103'}
        ,{name:'6개월~1년',	value:'10104'}
        ,{name:'1년이상',	value:'10105'}
    ]
    ,"workweekcd" : [
         {name:'월~금',	value:'15100'}
        ,{name:'월~토',	value:'15101'}
        ,{name:'월~일',	value:'15102'}
        ,{name:'주말',	value:'15103'}
    ]
    ,"worktimecd" : [
         {name:'오전', value:'75100'}
        ,{name:'오후', value:'75101'}
        ,{name:'야간', value:'75102'}
        ,{name:'종일', value:'75103'}
    ]
    ,"OrderCntGbn" : [
         {name:'등록일순',	value:'regdt'}
        ,{name:'수정일순',	value:'upddt'}
        ,{name:'---------',	value:''}
        ,{name:'경력높은순',	value:'careerup'}
        ,{name:'경력낮은순',	value:'careerdown'}
    ]
    ,"OrderCntGbn" : [
         {name:'20개씩 보기',	value:'20'}
        ,{name:'30개씩 보기',	value:'30'}
        ,{name:'50개씩 보기',	value:'50'}
    ]};

var CommonCodeJson = {
      "tel": [
           {CD:"", 		NM:"선택"}
        ,{CD:"02", 		NM:"02 (서울)"}
        ,{CD:"031", 	NM:"031 (경기)"}
        ,{CD:"032", 	NM:"032 (인천)"}
        ,{CD:"033", 	NM:"033 (강원)"}
        ,{CD:"041", 	NM:"041 (충남)"}
        ,{CD:"042", 	NM:"042 (대전)"}
        ,{CD:"043", 	NM:"043 (충북)"}
        ,{CD:"051", 	NM:"051 (부산)"}
        ,{CD:"052", 	NM:"052 (울산)"}
        ,{CD:"053", 	NM:"053 (대구)"}
        ,{CD:"054", 	NM:"054 (경북)"}
        ,{CD:"055", 	NM:"055 (경남)"}
        ,{CD:"061", 	NM:"061 (전남)"}
        ,{CD:"062", 	NM:"062 (광주)"}
        ,{CD:"063", 	NM:"063 (전북)"}
        ,{CD:"064", 	NM:"064 (제주)"}
        ,{CD:"070", 	NM:"070"}
        ,{CD:"080", 	NM:"080"}
        ,{CD:"0502", 	NM:"0502 (KT)"}
        ,{CD:"0505", 	NM:"0505 (Dacom)"}
        ,{CD:"0506", 	NM:"0506 (Hanaro)"}
        ,{CD:"0303", 	NM:"0303 (KT크로샷)"}
        ,{CD:"010", 	NM:"010"}
        ,{CD:"011", 	NM:"011"}
        ,{CD:"016", 	NM:"016"}
        ,{CD:"017", 	NM:"017"}
        ,{CD:"018", 	NM:"018"}
        ,{CD:"019", 	NM:"019"}
        ,{CD:"-", 		NM:"지역번호 없음"}
    ]
    , "htel": [
         {CD:"010", 	NM:"010"}
        ,{CD:"011", 	NM:"011"}
        ,{CD:"016", 	NM:"016"}
        ,{CD:"017", 	NM:"017"}
        ,{CD:"018", 	NM:"018"}
        ,{CD:"019", 	NM:"019"}
    ]
    , "email":[
         {CD:"naver.com", 	NM:"네이버"}
        ,{CD:"nate.com", 	NM:"네이트"}
        ,{CD:"dreamwiz.com",NM:"드림위즈"}
        ,{CD:"lycos.co.kr", NM:"라이코스"}
        ,{CD:"empal.com", 	NM:"엠파스"}
        ,{CD:"chol.com", 	NM:"천리안"}
        ,{CD:"korea.com", 	NM:"코리아닷컴"}
        ,{CD:"paran.com", 	NM:"파란닷컴"}
        ,{CD:"freechal.com",NM:"프리챌"}
        ,{CD:"hanafos.com", NM:"하나포스"}
        ,{CD:"hitel.com", 	NM:"하이텔"}
        ,{CD:"hanmir.com", 	NM:"한미르"}
        ,{CD:"netian.com", 	NM:"네티앙"}
        ,{CD:"", 			NM:"직접입력"}
    ]
};

var arrEducation = {
"EDUCD":[
    {"CD":"20100" , "NM":"초등학교"},
    {"CD":"20101" , "NM":"중학교"},
    {"CD":"20102" , "NM":"고등학교"},
    {"CD":"20103" , "NM":"대학(2,3년)"},
    {"CD":"20104" , "NM":"대학(4년)"},
    {"CD":"20105" , "NM":"대학원"}
],
"EDUSTATECD":[
    {"GROUPCD":"20100", "CD":"25100" , "NM":"졸업"},
    {"GROUPCD":"20100", "CD":"25103" , "NM":"중퇴"},

    {"GROUPCD":"20101", "CD":"25100" , "NM":"졸업"},
    {"GROUPCD":"20101", "CD":"25102" , "NM":"재학중"},
    {"GROUPCD":"20101", "CD":"25103" , "NM":"중퇴"},

    {"GROUPCD":"20102", "CD":"25100" , "NM":"졸업"},
    {"GROUPCD":"20102", "CD":"25102" , "NM":"재학중"},
    {"GROUPCD":"20102", "CD":"25103" , "NM":"중퇴"},

    {"GROUPCD":"20103", "CD":"25100" , "NM":"졸업"},
    {"GROUPCD":"20103", "CD":"25102" , "NM":"재학중"},
    {"GROUPCD":"20103", "CD":"25101" , "NM":"휴학중"},
    {"GROUPCD":"20103", "CD":"25103" , "NM":"중퇴"},

    {"GROUPCD":"20104", "CD":"25100" , "NM":"졸업"},
    {"GROUPCD":"20104", "CD":"25102" , "NM":"재학중"},
    {"GROUPCD":"20104", "CD":"25101" , "NM":"휴학중"},
    {"GROUPCD":"20104", "CD":"25103" , "NM":"중퇴"},

    {"GROUPCD":"20105", "CD":"25104" , "NM":"수료"},
    {"GROUPCD":"20105", "CD":"25105" , "NM":"취득"},
    {"GROUPCD":"20105", "CD":"25102" , "NM":"재학중"},
    {"GROUPCD":"20105", "CD":"25101" , "NM":"휴학중"},
    {"GROUPCD":"20105", "CD":"25103" , "NM":"중퇴"}
],
"EDUCOURSE":[
    {"GROUPCD":"20105", "CD":"석사" , "NM":"석사"},
    {"GROUPCD":"20105", "CD":"박사" , "NM":"박사"}
]};

var ResumeDetailSearch = {
    "gender" : [
         {name:'성별무관', value:''}
        ,{name:'남자', value:'M'}
        ,{name:'여자', value:'F'}
    ]
    ,"workperiodcd" : [
         {name:'전체', value:''}
        ,{name:'1주일이하',	value:'10100'}
        ,{name:'1주일~1개월', value:'10101'}
        ,{name:'1개월~3개월', value:'10102'}
        ,{name:'3개월~6개월', value:'10103'}
        ,{name:'6개월~1년',	value:'10104'}
        ,{name:'1년이상', value:'10105'}
        ,{name:'무관', value:'10999'}
    ]
    ,"workweekcd" : [
         {name:'전체',	value:''}
        ,{name:'월~금',	value:'15100'}
        ,{name:'월~토',	value:'15101'}
        ,{name:'월~일',	value:'15102'}
        ,{name:'주말',	value:'15103'}
        ,{name:'주6일',	value:'15105'}
        ,{name:'주5일',	value:'15106'}
        ,{name:'주4일',	value:'15107'}
        ,{name:'주3일',	value:'15108'}
        ,{name:'주2일',	value:'15109'}
        ,{name:'주1일',	value:'15110'}
        ,{name:'무관',	value:'15999'}
    ]
    ,"worktimecd" : [
         {name:'전체', value:''}
        ,{name:'오전', value:'75100'}
        ,{name:'오후', value:'75101'}
        ,{name:'야간', value:'75102'}
        ,{name:'종일', value:'75103'}
        ,{name:'무관', value:'75999'}
    ],
    "scareercd" : [
         {name:'1년미만',	scareercd:'0001'}
        ,{name:'1년',		scareercd:'0100'}
        ,{name:'2년',		scareercd:'0200'}
        ,{name:'3년',		scareercd:'0300'}
        ,{name:'4년',		scareercd:'0400'}
        ,{name:'5년',		scareercd:'0500'}
        ,{name:'6년',		scareercd:'0600'}
        ,{name:'7년',		scareercd:'0700'}
        ,{name:'8년',		scareercd:'0800'}
        ,{name:'9년',		scareercd:'0900'}
        ,{name:'10년',		scareercd:'1000'}
        ,{name:'11년이상',	scareercd:'1100'}
    ],
    "ecareercd" : [
         {name:'1년',		scareercd:'0100',	ecareercd:'0111'}
        ,{name:'2년',		scareercd:'0200',	ecareercd:'0211'}
        ,{name:'3년',		scareercd:'0300',	ecareercd:'0311'}
        ,{name:'4년',		scareercd:'0400',	ecareercd:'0411'}
        ,{name:'5년',		scareercd:'0500',	ecareercd:'0511'}
        ,{name:'6년',		scareercd:'0600',	ecareercd:'0611'}
        ,{name:'7년',		scareercd:'0700',	ecareercd:'0711'}
        ,{name:'8년',		scareercd:'0800',	ecareercd:'0811'}
        ,{name:'9년',		scareercd:'0900',	ecareercd:'0911'}
        ,{name:'10년',		scareercd:'1000',	ecareercd:'1011'}
    ],
    "workstatecd" : [
         {name:'아르바이트',	value:'30100'}
        ,{name:'계약직',		value:'30103'}
        ,{name:'인턴쉽',		value:'30101'}
        ,{name:'정규직',		value:'30102'}
    ],
    "oacd" : [
         {name:'인터넷',		value:'35100'}
        ,{name:'워드',			value:'35101'}
        ,{name:'엑셀',			value:'35102'}
        ,{name:'파워포인트',	value:'35103'}
    ],
    "foreignlangcd" : [
        {'cd':'10','nm':'영어'},
        {'cd':'11','nm':'일본어'},
        {'cd':'12','nm':'중국어'},
        {'cd':'13','nm':'프랑스어'},
        {'cd':'14','nm':'독일어'},
        {'cd':'15','nm':'러시아어'},
        {'cd':'16','nm':'스페인어'},
        {'cd':'17','nm':'한국어'},
        {'cd':'18','nm':'광동어'},
        {'cd':'19','nm':'네덜란드어'},
        {'cd':'20','nm':'네팔어'},
        {'cd':'21','nm':'노르웨이어'},
        {'cd':'22','nm':'라오어'},
        {'cd':'23','nm':'루마니아어'},
        {'cd':'24','nm':'말레이어'},
        {'cd':'25','nm':'몽골어'},
        {'cd':'26','nm':'미얀마어'},
        {'cd':'27','nm':'베트남어'},
        {'cd':'28','nm':'벵갈어'},
        {'cd':'29','nm':'세르비아어'},
        {'cd':'30','nm':'스와힐리어'},
        {'cd':'31','nm':'스웨덴어'},
        {'cd':'32','nm':'슬로바키아어'},
        {'cd':'33','nm':'슬로베니아어'},
        {'cd':'34','nm':'아랍어'},
        {'cd':'35','nm':'우루두어'},
        {'cd':'36','nm':'우즈벡어'},
        {'cd':'37','nm':'이란어'},
        {'cd':'38','nm':'이탈리아어'},
        {'cd':'39','nm':'인니어'},
        {'cd':'40','nm':'인도네시아어'},
        {'cd':'41','nm':'인도어'},
        {'cd':'42','nm':'체코어'},
        {'cd':'43','nm':'카자흐어'},
        {'cd':'44','nm':'캄보디아어'},
        {'cd':'45','nm':'크로아티아어'},
        {'cd':'46','nm':'타갈로그어'},
        {'cd':'47','nm':'태국어'},
        {'cd':'48','nm':'터키어'},
        {'cd':'49','nm':'페르시아어'},
        {'cd':'50','nm':'포르투갈어'},
        {'cd':'51','nm':'폴란드어'},
        {'cd':'52','nm':'필리핀어'},
        {'cd':'53','nm':'헝가리어'},
        {'cd':'54','nm':'희랍어'},
        {'cd':'55','nm':'힌디어'},
        {'cd':'99','nm':'기타'}
    ],
    "specialcd" : [
         {"cd":"50100", "nm":"문서작성 잘함"}
        ,{"cd":"50101", "nm":"PC조립/설치 능숙"}
        ,{"cd":"50102", "nm":"자동차운전 능숙"}
        ,{"cd":"50103", "nm":"숫자 계산이 빠름"}
        ,{"cd":"50104", "nm":"말솜씨가 좋음"}
        ,{"cd":"50105", "nm":"체력이 좋음"}
        ,{"cd":"50106", "nm":"목소리가 좋음"}
        ,{"cd":"50107", "nm":"손이 빠름"}
        ,{"cd":"50108", "nm":"사교성이 좋음"}
        ,{"cd":"50109", "nm":"인사성이 좋음"}
        ,{"cd":"50110", "nm":"약속을 잘 지킴"}
        ,{"cd":"50111", "nm":"정리정돈을 잘함"}
        ,{"cd":"50112", "nm":"패션 센스가 좋음"}
        ,{"cd":"50113", "nm":"요리솜씨가 좋음"}
        ,{"cd":"50114", "nm":"행동이 민첩"}
        ,{"cd":"50115", "nm":"일처리가 꼼꼼함"}
        ,{"cd":"50116", "nm":"작문시 문장력 좋음"}
        ,{"cd":"50117", "nm":"사진촬영 수준급"}
        ,{"cd":"50118", "nm":"기억력이 좋음"}
        ,{"cd":"50119", "nm":"끈기가 있음"}
        ,{"cd":"50120", "nm":"다재다능함"}
    ]
};



var CustomJobJson = {

"gender" : [
     {name:'남자',	value:'M'}
    ,{name:'여자',	value:'F'}
]
,"workperiodcd" : [
     {name:'1주일이하',	value:'10100'}
    ,{name:'1주일~1개월',	value:'10101'}
    ,{name:'1개월~3개월',	value:'10102'}
    ,{name:'3개월~6개월',	value:'10103'}
    ,{name:'6개월~1년',	value:'10104'}
    ,{name:'1년이상',	value:'10105'}
]
,"workweekcd" : [
     {name:'월~금',	value:'15100'}
    ,{name:'월~토',	value:'15101'}
    ,{name:'월~일',	value:'15102'}
    ,{name:'주말',	value:'15103'}
]
,"worktimecd" : [
     {name:'오전', value:'75100'}
    ,{name:'오후', value:'75101'}
    ,{name:'야간', value:'75102'}
    ,{name:'종일', value:'75103'}
],
"paycd" :
[
    {"PAYCD" : "I01", "PAYNM" :"시급"},
    {"PAYCD" : "I02", "PAYNM" :"일급"},
    {"PAYCD" : "I03", "PAYNM" :"주급"},
    {"PAYCD" : "I04", "PAYNM" :"월급"},
    {"PAYCD" : "I05", "PAYNM" :"연봉"},
    {"PAYCD" : "I06", "PAYNM" :"건별"},
    {"PAYCD" : "I07", "PAYNM" :"급여협의"},
    {"PAYCD" : "I08", "PAYNM" :"회사내규"}
]
,"paycdterm" :
[
    {"PAYCD" : "I01", "PAYNM" :"시급","SECTIONCD":"2","SECTIONNM":"8,350원 ~ 9,000원","MINPAY":"8350","MAXPAY":"9000"},
    {"PAYCD" : "I01", "PAYNM" :"시급","SECTIONCD":"2","SECTIONNM":"9,000원 ~ 10,000원","MINPAY":"9000","MAXPAY":"10000"},
    {"PAYCD" : "I01", "PAYNM" :"시급","SECTIONCD":"3","SECTIONNM":"10,000원 ~ 15,000원","MINPAY":"10000","MAXPAY":"15000"},
    {"PAYCD" : "I01", "PAYNM" :"시급","SECTIONCD":"4","SECTIONNM":"15,000원 이상","MINPAY":"15000","MAXPAY":""},

    {"PAYCD" : "I02", "PAYNM" :"일급", "SECTIONCD":"1","SECTIONNM":"30,000원 이하","MINPAY":"","MAXPAY":"30000"},
    {"PAYCD" : "I02", "PAYNM" :"일급", "SECTIONCD":"2","SECTIONNM":"30,000원 ~ 40,000원","MINPAY":"30000","MAXPAY":"40000"},
    {"PAYCD" : "I02", "PAYNM" :"일급", "SECTIONCD":"3","SECTIONNM":"40,000원 ~ 50,000원","MINPAY":"40000","MAXPAY":"50000"},
    {"PAYCD" : "I02", "PAYNM" :"일급", "SECTIONCD":"4","SECTIONNM":"50,000원 ~ 70,000원","MINPAY":"50000","MAXPAY":"70000"},
    {"PAYCD" : "I02", "PAYNM" :"일급", "SECTIONCD":"5","SECTIONNM":"70,000원 이상","MINPAY":"70000","MAXPAY":""},

    {"PAYCD" : "I03", "PAYNM" :"주급", "SECTIONCD":"1","SECTIONNM":"5만원 이하","MINPAY":"","MAXPAY":"50000"},
    {"PAYCD" : "I03", "PAYNM" :"주급","SECTIONCD":"2","SECTIONNM":"5만원 ~ 10만원","MINPAY":"50000","MAXPAY":"100000"},
    {"PAYCD" : "I03", "PAYNM" :"주급","SECTIONCD":"3","SECTIONNM":"10만원 ~ 15만원","MINPAY":"100000","MAXPAY":"150000"},
    {"PAYCD" : "I03", "PAYNM" :"주급","SECTIONCD":"4","SECTIONNM":"15만원 ~ 20만원","MINPAY":"150000","MAXPAY":"200000"},
    {"PAYCD" : "I03", "PAYNM" :"주급","SECTIONCD":"5","SECTIONNM":"20만원 이상","MINPAY":"200000","MAXPAY":""},

    {"PAYCD" : "I04", "PAYNM" :"월급","SECTIONCD":"1","SECTIONNM":"70만원 이하","MINPAY":"","MAXPAY":"700000"},
    {"PAYCD" : "I04", "PAYNM" :"월급","SECTIONCD":"2","SECTIONNM":"70만원 ~ 100만원","MINPAY":"700000","MAXPAY":"1000000"},
    {"PAYCD" : "I04", "PAYNM" :"월급","SECTIONCD":"3","SECTIONNM":"100만원 ~ 150만원","MINPAY":"1000000","MAXPAY":"1500000"},
    {"PAYCD" : "I04", "PAYNM" :"월급","SECTIONCD":"4","SECTIONNM":"150만원 ~ 200만원","MINPAY":"1500000","MAXPAY":"2000000"},
    {"PAYCD" : "I04", "PAYNM" :"월급","SECTIONCD":"5","SECTIONNM":"200만원 이상","MINPAY":"2000000","MAXPAY":""}
    ,
    {"PAYCD" : "I05", "PAYNM" :"연봉","SECTIONCD":"1","SECTIONNM":"1천만원 이하","MINPAY":"","MAXPAY":"10000000"},
    {"PAYCD" : "I05", "PAYNM" :"연봉","SECTIONCD":"2","SECTIONNM":"1,000만원 ~ 1,200만원","MINPAY":"10000000","MAXPAY":"12000000"},
    {"PAYCD" : "I05", "PAYNM" :"연봉","SECTIONCD":"3","SECTIONNM":"1,200만원 ~ 1,500만원","MINPAY":"12000000","MAXPAY":"15000000"},
    {"PAYCD" : "I05", "PAYNM" :"연봉","SECTIONCD":"4","SECTIONNM":"1,500만원 ~ 1,800만원","MINPAY":"15000000","MAXPAY":"18000000"},
    {"PAYCD" : "I05", "PAYNM" :"연봉","SECTIONCD":"5","SECTIONNM":"1,800만원 이상","MINPAY":"18000000","MAXPAY":""},

    {"PAYCD" : "I06", "PAYNM" :"건별","SECTIONCD":"1","SECTIONNM":"1만원 이하","MINPAY":"","MAXPAY":"10000"},
    {"PAYCD" : "I06", "PAYNM" :"건별","SECTIONCD":"2","SECTIONNM":"1만원 ~ 3만원","MINPAY":"10000","MAXPAY":"30000"},
    {"PAYCD" : "I06", "PAYNM" :"건별","SECTIONCD":"3","SECTIONNM":"3만원 ~ 5만원","MINPAY":"30000","MAXPAY":"50000"},
    {"PAYCD" : "I06", "PAYNM" :"건별","SECTIONCD":"4","SECTIONNM":"5만원 ~ 7만원","MINPAY":"50000","MAXPAY":"70000"},
    {"PAYCD" : "I06", "PAYNM" :"건별","SECTIONCD":"5","SECTIONNM":"7만원~ 10만원","MINPAY":"70000","MAXPAY":"100000"},
    {"PAYCD" : "I06", "PAYNM" :"건별","SECTIONCD":"6","SECTIONNM":"10만원 이상","MINPAY":"100000","MAXPAY":""},

    {"PAYCD" : "I07", "PAYNM" :"급여협의", "SECTIONCD":"","SECTIONNM":"","MINPAY":"","MAXPAY":""},

    {"PAYCD" : "I08", "PAYNM" :"회사내규", "SECTIONCD":"","SECTIONNM":"","MINPAY":"","MAXPAY":""}
]
}