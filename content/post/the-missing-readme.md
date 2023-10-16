---
title: 필독! 개발자 온보딩 가이드
tags: [설계, 구현, 방법론]
date: 2023-10-01
---

![](https://image.yes24.com/goods/119108069/XL)

https://www.yes24.com/Product/Goods/119108069

제목은

- (원서) The Missing Readme: A Guide for the New Software Engineer
- (번역서) 필독! 개발자 온보딩 가이드 지속 가능한 소프트웨어와 원활한 협업 문화를 이해하는 프로페셔널 개발자의 탄생

## 인상 깊은 단락

### p11
정윤진 님의 추천사 중

> 제가 근무했던 전 직장(피보탈 랩)이 좋은 소프트웨어를 위한 협업을 위해 각 갭라자에게 요구했던 마인드는 "Be kind!"였습니다. 협업 과정에서는 서로 다른 기술 수준, 도메인에 대한 이해 수준의 격차가 언제나 발생하고 그렇기에 서로 친절해지기가 꽤 어렵습니다. 그래서 피보탈 랩의 중요한 채용 기준은 공감력(empathy)를 확인하는 것이기도 했습니다.


### p32
> 가장 중요하게 염두에 둬야 할 점은 완벽한 문서를 만드는 것이 아니라 주요 사항을 조명할 토론을 시작하는 데 충분한 문서를 작성하는 것이다. 이는 커닝햄 법칙(Cunningham's law)를 약간 변형한 것이다. 여기서 커닝햄 법칙의 요지는 "인터넷에서 올바른 답을 얻는 가장 좋은 방법은 질문을 올리는 것이 아니라 잘못된 답을 게시하는 것'이다.

사소한 논의가 과도하게 길어지는 바이크쉐딩(bike-shedding)이 길어지는 것도 유의하자고 함.

### p41
> 처음 설계할 때만 해도 좋아 보이는 것들은 시간이 지나면서 점점 사라진다. 그리고 아키텍처, 빌드 및 배포 시스템, 테스트 환경의 결함 등이 눈에 띄게 된다.

### p70

> 부채는 두려운 것이지만 그렇다고 모든 부채가 나쁜 것만은 아니다.

마틴파울러는 기술부채를 2차원 매트릭스로 설명함. https://martinfowler.com/bliki/TechnicalDebtQuadrant.html

### p71
> 부채는 성공의 표시일 수도 있다. 프로젝트가 지저분해질 정도로 오래 살아남았다는 뜻이기도 하니까.

### p91
트위터의 A/B 테스팅 도구인 덕 덕 구스(Duck Ducker Goose) 재개발 사례

> 숙련된 엔지니어와 관리자가 6개월이 걸릴 거라 예상했던 프로젝트는 18개월 이상이 걸렸고, 추가 개발 비용만 100만 달러가 넘게 들었다.


### p102
> 예외는 일찍 던지고 최대한 나중에 처리하자.

(의견) 최대한 나중에 처리하는 것보다는 적절한 추상화 레이어에서 처리하자는 것이 좋다고 생각한다. 예를 들면 사용자의 ID로 조회했을 떄 DB 조회가 실패했을 때 생기는 `EmptyResultDataAccessException`을 어플리케이션 콜스택의 마지막에서 처리하기보다는 비지니스 로직을 다루는 로직에서 'UserNotFoundException'과 같이 비지니스 맥락의 의미가 부여된 예외로 바꾸는 것이 좋을 떄도 있다.

### p115
> 카운터, 게이지, 히스토그램을 쉽게 계산할 수 있다고 해서 지표 라이브러리를 직접 구현할 생각은 금물이다. 비표준 라이브러리의 유지보수는 악몽에 가깝다. 표준 라이브러리는 애초에 모든 것과 통합할 수 있도록 만들어져 있다.

### p125
'배포된 설정은 변경하지 말자' 단락

> 특정 머신의 설정을 수작업으로 수정하는 일은 금하자. 이렇게 일시적으로 변경한 설정은 다음 배포 과정에서  다시 원래 값으로 덮어써진다.

### p167
테스트 결정성에 대한 설명

> 비결정적(nondeeterministic) 코드는 테스트의 가치를 떨어뜨린다. 테스트가 간헐적으로 실패한다는 것은 매번 동일한 현상이 발생하지는 않는다는 뜻이므로 재현과 디버깅이 어렵다. 코드가 문제인지 테스트가 문제인지 알 수 없기 때문이다.


### p188

> 코드 리뷰 과정에 발생하는 충돌을 해소하는 방법은 팀마다 다르다. 어떤 팀은 리뷰를 요청한 사람에게 맡기는 반면 다른 팀은 기술 리드에게 맡기기도 하며 또 다른 팀에서는 다수결로 결정하기도 한다. 그러므로 팀의 규정을 따르자.

감상) 팀마다 정의된 규칙이 있지 않으면 혼란이 더 커진다.

### p191
코드 리뷰 의견

> 의견을 지나치게 간결하게 쓰지는 말자. 마치 옆자리에 앉아 코드를 리뷰하며 말하듯이 의견을 작성하자. 의견은 반드시 정중하게 표현해야 하며 제안하려는 방식과 이유를 잘 설명해야 한다.

### p193
> 여러분이 보기에 더 나은 방법이 있다면 그 부분을 제안하되 '선택적'이나 '원저자에게 맡김' 또는 '승인과 무관' 같은 접두어를 이용해 자신이 제안한 내용이 리뷰의 승인에 반드시 필요한 것은 아님을 표시해두자. 반드시 수정이 필요한 사항과 제안사항은 구분하자. 그렇지 않으면 원저자는 여러분의 의도를 제대로 파악하기 어려울 것이다.

`nit:`와 같읕 접두어를 쓴 예시를 보여주기도함.

### p204
> 기능 브랜치 기반 개발은 트렁크의 코드가 사용자에게 릴르스하기엔 너무 불안정해서 트렁크를 안정화시키는 동안 갭라자가 기능 개발을 수행할 수 없는 경우에 사용하는 방법이다. 고객이 각자 다른 버전의 소프트웨어를 사용하는 경우에 보편적으로 기능 브랜치 기반 개발 전략을 채택한다. 서비스 지향 시스템(service-oriented systems)은 일반적으로 트렁크 기반 개발 전략을 채택한다.
>
> 가장 보편적인 기능 브랜치 전략은 2010년 빈센트 드리센이 소개한 깃플로(Gitflow)라고 부르느 전략이다.


## 추천자료
이 책에서는 각 장의 끝무렵에 '레벨업을 위한 읽을 거리'로 해당 장에서 다룬 주제를 더 깊이 있게 학습하는데 도움이 되는 자료를 추천했다.

### 2장 역량을 높이는 의식적 노력
- [프로그래머의 길, 멘토에게 묻다](https://www.yes24.com/Product/Goods/4045732)
- [나는 왜 도와달라는 말을 못할까: 부담은 줄이고 성과는 높이는 부탁의 기술](https://www.yes24.com/Product/Goods/95735260)
- 짝 프로그래밍
  - [익스트림 프로그래밍](https://www.yes24.com/Product/Goods/2126201)
  - [On Pair Programming](https://martinfowler.com/articles/on-pair-programming.html)
- 가면 증후군이나 더닝 크루거 효과
  - [자존감은 어떻게 시작되는가: 당신의 인생을 결정짓는 자세의 차이](https://www.yes24.com/Product/Goods/36962337)( [Google play 이북](https://play.google.com/store/books/details/%EC%97%90%EC%9D%B4%EB%AF%B8_%EC%BB%A4%EB%94%94_%EC%9E%90%EC%A1%B4%EA%B0%90%EC%9D%80_%EC%96%B4%EB%96%BB%EA%B2%8C_%EC%8B%9C%EC%9E%91%EB%90%98%EB%8A%94%EA%B0%80?id=IFcxDwAAQBAJ) )

### 3장 코드와 함께 춤을: 레거시 코드에 임하는 우리의 자세
- [레거시 코드 활용 전략: 손대기 두려운 낡은 코드, 안전한 변경과 테스트 기법](https://www.yes24.com/Product/Goods/64586851)
- [The Legacy Code Programmer's Toolbox: Practical Skills for Software Professionals Working with Legacy Code](https://www.amazon.com/Legacy-Code-Programmers-Toolbox-Professionals/dp/1691064130)
- [리팩터링 2판: 코드 구조를 체계적으로 개선하여 효율적인 리팩터링 구현하기 ](https://www.yes24.com/Product/Goods/89649360)
- [맨먼스 미신](https://www.yes24.com/Product/Goods/16928943)

### 4장 운영 환경을 고려한 코드 작성: 개발환경과 프로덕션 환경은 엄연히 다르다.
- [Code Complete 코드 컴플리트 2: 더 나은 소프트웨어 구현을 위한 실무 지침서](https://www.yes24.com/Product/Goods/44130507) : 8장에서 방어적 프로그래밍에 대해서 다룸.
- [Clean Code: 소프트웨어 장인 정신](https://www.yes24.com/Product/Goods/11681152) : 7장과 8장에서 예외처리와 경계에 대해서 다룸
- [The Amazon Builders' Library](https://aws.amazon.com/builders-library/)
- [SRE를 위한 시스템 설계와 구축: 구글이 공개하는 SRE 모범 사례와 설계, 구현, 운영 노하우](https://www.yes24.com/Product/Goods/105804670)
- [사이트 신뢰성 엔지니어링: 구글이 공개하는 서비스 개발과 운영 노하우](https://www.yes24.com/Product/Goods/57979286)

### 5장 피할 수 없는 코드 의존성의 관리: 복잡한 프로그램을 짜봐야 비로서 깨닫는 의존성이 진실

- 시맨틱 버저닝 스펙 : https://semver.org/
- [PEP 440 – Version Identification and Dependency Specification](https://peps.python.org/pep-0440/)

### 6장 테스트! 개발자의 든든한 지원군
- [단위 테스트: 생산성과 품질을 위한 단위 테스트 원칙과 패턴](https://www.yes24.com/Product/Goods/104084175)
- [테스트 주도 개발](https://www.yes24.com/Product/Goods/12246033)
- [실용주의 프로그래머 ](https://www.yes24.com/Product/Goods/107077663) : 속성 기반 테스팅(Property based testing)절 살펴보기
- [탐험적 테스팅: 배우고 통찰하며 개선하는 소프트웨어 테스트](https://www.yes24.com/Product/Goods/14829054)

### 7장 올바로 주고받는 코드 리뷰: 원만한 팀 협업과 높은 코드 품질을 목표로
- [구글의 Code Review Developer Guide](https://google.github.io/eng-practices/review/)
- [하버드 피드백의 기술: 밀어붙이는 피드백에서 끌어당기는 피드백으로](https://www.yes24.com/Product/Goods/14759898) ([Google play 이북](https://play.google.com/store/books/details/%EB%8D%94%EA%B8%80%EB%9F%AC%EC%8A%A4_%EC%8A%A4%ED%86%A4_%EC%89%B4%EB%9D%BC_%ED%9E%8C_%ED%95%98%EB%B2%84%EB%93%9C_%ED%94%BC%EB%93%9C%EB%B0%B1%EC%9D%98_%EA%B8%B0%EC%88%A0?id=6RirBAAAQBAJ))

### 8장 고객 앞으로! 소프트웨어 전달: 마침내 프로덕션 환경에 안착시킬 소프트웨어의 종착지

### 9장 긴급대응 온콜 업무

### 10장 견고한 소프트웨어를 위한 기술 설계 절차

### 11장 소프트웨어 수명주기를 고려한 진화하는 아키텍처 구현

### 12장 효율적인 협업을 위한 애자일 문화

### 13장 관리자, 팀장, 상사와 함께 일하기

### 14장 경력 관리에 대한 조언
