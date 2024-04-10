---
title: 그림으로 쉽게 이해하는 웹/HTTP/Network
date: 2024-02-04
tags: [http, network]
---

![](https://image.yes24.com/goods/118547742/XL)

(이미지 출처 : https://www.yes24.com/Product/Goods/118547742)

## 감상
전체적으로 잘 짜여진 책이다.
친절한 설명이 있어서 개발자가 아닌 분에게도 추천할만한하다.

## 정리

### 1. 웹
* 웹 구성요소 : HTML, URL, HTTP
* 웹 3.0은 2000년대부터 차세대 웹을 가리키는 용어로 꾸준히 거론됨. 초기의 웹3.0은 주로 시맨틱 웹을 의미함.

### 2. 네트워크 개념
* LAN : 지리적으로 가까운 기기들이 서로 연결된 소규모 네트워크
* WAN : 넓은 영역을 연결하는 광역 네트워크. 예: 네트워크
* OSI 7계층
    * Open Systems Interconnection. 개방 시스템 상호 연결. 서로 다른 시스템이 호환될 수 있도록하는 표준안
    * 호환성, 표준화 목적 / 역할 기반
 * TCP/IP 4계층
    * 실무 적용 목적 / 프로토콜 기반
* 데이터 이동 반식
    * 캡슐화 : 보내는 쪽에서 헤더를 덧붙이며 데이터를 하위 계층으로 이동
    * 역캡슐화 : 받는 쪽에서 헤더를 떼어내며 데이터를 상위 계층으로 이동

### 3. URL
* URI(Uniform Resource Identifier)의 하위 요소는 URL(Uniform Resource Location)과 URN(Uniform Resource Name)
* URL 구조 : [프로토콜]://[호스트 주소]:[포트번호]/[경로]?[파라미터]
* 도메인 : IP주소보다 기억하기 쉬운 형태의 호스트 이름
* DNS : 도메인과 IP주소를 서로 변환해 주는 시스템
    * 루트 DNS서버는 최상위 도메인을 관리한느 DNS 서버의 정보를 담고 있음. 전세계에 오직 13대

### 4. IP
* IP(Internet protocol) : 데이터를 잘게 자른 패킷을 목적지까지 전달하는 역할
    * 비연결성 & 신뢰성
* IPv4 : 32bit 길이
    * 네트워크 부분과 호스트 부분으로 나누어짐.
    * 마지막 255는 브로캐스트 주소
    * 클래스 구분
        * A : 0 ~ 127
        * B : 128 ~ 191
        * C : 192 ~ 223
* IP 주소 한계 : 2011년에 IANA가 여분의 IP가 없음을 선언
    * 2022년 5월 기준 미할된 IPv4 주소는 전체의 약 0.5%
    * 우리 나라는 미리 할당받은 IPv4의 여분이 남아있어서 북미나 유럽에 비하면 상대적으로는 여유로움
* CIDR (Classless Inter-Domain Routing) : 네트워크 부분과 호스트 부분의 구분점을 1비트 단위까지 조정 가능해서 호스트 주소를 더 유연하게 할당
     * Subnet mask : 네트워크와 호스트 부분을 구분해 주는 역할
     * CIDR 표기범 예 : 192.168.10.1/24
* 주소 고갈 대처
    * DHCP (Dynamic Host Configuration Protocol) : IP주소를 유동적으로 할당/회수
    * 사설 IP 활용
        * 공인 IP : 인터넷상에서 유일하고 ISP에서 공식으로 할당하는 주소
        * 사설 IP : 특정 네트워크 내에서 이용하는 주소
            * 10.0.0.0 ~ 10.255.255.255
            * 172.16.0.0 ~ 172.31.255.255
            * 192.168.0.0 ~ 192.168.255.255
        * NAT (Network Address Translation)
            * NAT 테이블을 통해 사설IP와 공인IP를 매핑. 포트 주소 변환(PAT) 또는 NAT 오버로드(NAT Overload)이 많이 사용됨
    * IPv6 : 128bit 길이. 16진수로 표기
        * NAT 지원 하지 않음

### 5. TCP
* Transmission Control Protocol : 신뢰성있는 데이터 통신을 위한 전송 제어 프로토콜
* TCP 헤더 플래그 총 6개
    * ACK(Acknowledgement) : 받은 데이터를 잘 처리했음.
    * SYN(Synchronize) : 연결을 요청
    * FIN(Finish) : 연결의 해제를 요청
* 연결 시작 : 3-way handshake
    1. client --[SYN]--> server(SYN_RECEIVED)
    2. client <--[ACK+SYN]-- sever
    3. client --[ACK]--> server(ESTABLISHED)
* 연결 종료 : 4-way handshake
    1. client(FIN_WAIT) --[FIN]--> server(CLOSE_WAIT)
    2. client <--[ACK]-- sever
    4. client(TIME_WAIT) <--[FIN]-- sever(LAST_ACK)
    3. client --[ACK]--> server(CLOSED)
* 흐름 제어(Flow control)
* 혼잡 제어(Congestion control)
* UDP(User Datagram Protocol)
    * TCP 속도는 빠르고 신뢰성은 낮음
    * 비연결형, 순서 보장 없음, 혼잡제어 없음

### 6. HTTP
* 메서드
    * 멱등성 O : GET/HEAD/PUT/DELETE/OPTIONS
    * 멱등성 X : POST/PATCH
* HTTP 역사
    * HTTP/1.0
        * 헤더 첫 등장
        * Content-Type을 통해 이미지, 파일 등 다양한 타입 지원
    * HTTP/1.1 : 공식 표준
        * Persistent Connection, Pipelining 지원
    * HTTP/2
        * SPDY 바탕
        * Multiplexed Stream, Binary framing
    * HTTP/3
        * QUIC 활용 UDP + 데이터 검증 기증
        * 2022년 6월에 표준으로 지정. 전체 웹사이트의 25.2%가 사용

### 7. HTTP 특징과 데이터 저장 방식
* 클라이언트 기반 저장소
    * 쿠키
        * 최대 4KB까지 저장
        * HTTP 헤더에 포함되어 전송
    * 웹 스토리지
        * 저장 기간에 따라서 세션 스토리지와 로컬 스토리지와 나누어짐
        * 최대 5~10MB까지 저장
        * 클라이언트만 저장. 서버 전송 없음
    * Indexed DB
        * 브라우저 내장 DB
* 서버 기반 저장소
    * 세션
        * 세션 아이디는 쿠키에저장

### 8. 네트워크 접속 장치
* 라우터 : LAN을 서로 연결시켜주는 장치
    * 라우팅 테이블로 최적의 데이터 이동 경로 안내
* Ethernet : LAN을 유선으로 구현하는 기술 방식
    * 규격 표준 명칭 : [속도][채널종류]-[케이블 종류]
        * 예: 1000BASE-T
    * 구성 요소
        * NIC(Network Interface Card) : 데이터 직렬화 수행. MAC 주소가 있음.
        * 허브, 스위치
        * 케이블 : 돛ㅇ측, 트위스티드 페어, 광
* Wi-Fi : WLAN을 이용해 무선 네트워크를 구현하는 방식
    * 규격 : 2.4GHz, 5GHz
* 충동 방지
    * CSMA/CD : 충돌 발생시 정해진 시간만큼 대기 -> 이더넷
    * CSMA/CA : 전송 전 충분한 대기 시간을 두어 충돌 회피 -> Wi-Fi

### 9. OSI 7계층 다시 보기
* 7. 응용 계층 (Applcation)
    * 사용자 입/출력을 정의
    * HTTP, SNMP, SMTP, TELNET
* 6. 표현 계층 (Presentatino)
    * 서로 다른 데이터 표현 방식을 변환
    * SSL/TLS, SSH
* 5. 세션 계층 (Session)
    * 통신을 위한 연결을 관리
    * Socket
* 4. 전송 계층 (Transport)
    * 신뢰성 있는 데이터 전송을 담당
    * TCP, UDP, SCTP, DCCP
* 3. 네트워크 계층 (Network)
    * 목적지까지의 최적의 경로 제공
    * IP, ICMP, IPSec, 라우터
* 2. 데이터 링크 계층 (Data link)
    * 데이터를 전기 신호로 변환
    * 이더넷, 스위치, NIC
* 1. 물리 계층 (Physical)
    * 전기 신호 전달
    * 케이블, 허브, 리피터