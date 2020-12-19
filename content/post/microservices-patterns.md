---
title: Microservices Patterns
date: 2020-11-23
tags: [pattern, spring, architecture]
---

Audible에서 Audio Book으로도 들을 수 있다.

https://www.audible.com/pd/Microservices-Patterns-Audiobook/B07ZFZ464G

## 참고 링크
* https://microservices.io/patterns/microservices.html
* https://eventuate.io/

## 인상 깊은 단락
(번역판 페이지 기준)

### p92
> DDD와 마이크로서비스 아키텍처는 거의 찰떡궁합입니다.
> DDD의 하위 도메인, 경게 컨텍스트 개념은 마이크로서비스 아키텍처의 서비스와 잘 맞고, 마이크로서비스 아키텍처의 서비스 자율팀 개념은 도메인 모델을 개별 팀이 소유/개발한다는 DDD 사고방식과 어울립니다.
> 자체 도메인 모델을 가진 하위 도메인이라는 개념 덕분에 만능 클래스를 제거하고 서비스로 분해하기가 더 수월해집니다.

### p109
'하위 호환되는 소규모 변경'에 '속성을 응답을 추가'로 해당.
Jackson에서 `@JsonIgnoreProperties(ignoreUnknown = true)` 이 디폴트가 아니라는 점은 이 원칙에 어긋남.

### p157
> 3장에서 배웠듯이, 가용성은 트랜잭션 참여자의 가용성을 모두 곱한 값입니다.
> 99.5% 가용한 두 서비스가 참여한 트랜잭션의 전체 가용성은 99%로 개별 서비스 가용성보다 낮고, 더 많은 서비스가 참여할수록 가용성은 더 떨어집니다.

### p202
DDD 애그리거트 패턴

### p206
애그리거트 규칙

1. 애그리거트 루트만 참조하라
2. 애그리거트 간 참조는 반드시 기본키를 사용하라
3. 하나의 트랜잭션으로 하나의 애그리거트르 생성/수정하라.

### p211
> DDD 맥락에서 도메인 이벤트는 애그리거트에 발생한 사건입니다.

### p294
CQRS

### p381
종단간 테스트보다는 컨슈머 주도 계약테스트(consumer-driven contract test)를 권장함.

### p398
> 단위 테스트는 서비스의 아주 작은 부속품, 즉 단위(unit)가 제대로 동작하는지 확인합니다.
> 일반적으로 단위는 클래스이므로 단위 테스트는 해당 클래스가 예상대로 잘 동작하는지 확인하는 것이 목표입니다.

### p397
Spring Mock MVC 테스트가 단위 테스트인가에 대한 논쟁.
Spring Mock MVC문서에는 외부 서블릿 컨테이너(out-of-servlet-container) 통합테스트라고하는데, Rest Assured Mock Mvc에서는 단위테스트로 간주함.

* https://docs.spring.io/spring-framework/docs/5.1.0.RELEASE/spring-framework-reference/testing.html#spring-mvc-test-framework
* https://github.com/rest-assured/rest-assured/wiki/Usage#spring-mock-mvc-module

### p426
Cucumber, Gherkin 를 이용한 인수테스트

https://cucumber.io/docs/gherkin/reference/

#### p455
스프링부트의 속성 우선 순위

1. CLI 인수
2. OS 환경 변수 혹은 JVM 시스템 속성의 SPRING_APPLICATION_JSON
3. JVM 시스템 프로퍼터
4. OS 환경변수
5. 현재 디렉토리의 구성 파일

### p503
k8s의 readinessProbe, livenessProbe
책에서는 `/actuator/health` 를 썼으나 스프링부트 버전이 올라가면서 `/actuator/health/readiness`, `/actuator/health/liveness`로 세분화 되었다.

https://spring.io/blog/2020/03/25/liveness-and-readiness-probes-with-spring-boot

### p549
> 마이크로서비스 전환이라는 긴 여행은 시간별로 구획된 아키텍처(time-boxed architecture) 정의부터 시작하는 것이 좋습니다.

### p579
feature toggle : https://martinfowler.com/articles/feature-toggles.html
