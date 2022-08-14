---
title: Get Your Hands Dirty on Clean Architecture
tags: [설계, architecture]
date: 2021-03-27
---

웹 어플케이션의 구조를 어떻게 잡을지는 프로젝트마다 매번하는 고민이다.
이 고민에 생각할 거리를 더 던져주는 유익하면서도 재미있는 책이였다.

원서로 먼저 읽고 번역서로 한 번 더 읽었다.

## 1 : What's Wrong With Layers? ( 계층형 아키텍처의 문제는 무엇일까? )

- 계층형 아키텍처는 데이터베이스 주도 설계를 유도한다
- 지름길을 택하기 쉬워진다
- 테스트하기 어려워진다
- 유스케이스를 숨긴다
- 동시 작업이 어려워진다
- 유지보수 가능한 소프트웨어를 만드는 데 어떻게 도움이 될까?

### p10
> If we have broad services in our codebase, it may even be hard to work on different features in parallel. Working on different use cases will cause the same service to be edited in parallel, which leads to merge conflicts and, potentially, regressions.

> Without very strict self-discipline, it's prone to degrade and become less maintainable over time. And this self-discipline usually becomes a little less strict each time a manager draws a new deadline around the development team.

## 2 : Inverting Dependencies (의존성 역전하기)

- 단일 책임 원칙
- 부수효과에 관한 이야기
- 의존성 역전 원칙
- 클린 아키텍처
- 육각형 아키텍처(헥사고날 아키텍처)
- 유지보수 가능한 소프트웨어를 만드는 데 어떻게 도움이 될까?

### p12 (번역판 p13)
> Perhaps we should rename the SRP the "Single Reason to Change Principle."

### p16 (번역판 p19)

> The Java Persistence API (the standard ORM-API in the Java world), for instance, requires ORM-managed entities to have a default constructor without arguments that we might want to avoid in our domain model.

> 가령 Java Persistence API(자바 세계의 표준 ORM-API)에서는 ORM이 관리하는 엔티티에 인자가 ㅇ벗는 기본 생성자를 추가하도록 강제한.다 이것이 바로 도메인 모델에서는 포함해서는 안 될 프레임워크에 특하된 결합의 예다.

(메모) Spring JDBC의 BeanPropertyRowMapper도 setter가 필수로 있어야하는 제약이 있었다. Spring framework 5.3부터 추가된 DataClassRowMapper 에서는 그런 문제가 해결되었다.

## 3 : Organizing Code (코드 구성하기)

- 계층으로 구성하기
- 기능으로 구성하기
- 아키텍처적으로 표현력 있는 패키지 구조
- 의존성 주입의 역할
- 유지보수 가능한 소프트웨어를 만드는 데 어떻게 도움이 될까?

### p25(번역판 p28)

> With time, if the package structure (among other things) does not reflect the architecture, the code will usually deviate more and more from the target architecture.

> 만약 패키지 구조가 아키텍처를 반영할 수 없다면 시간이 지남에 따라 코드는 점점 목표하던 아키텍처로부터 멀어지게 될 것이다.

## 4 : Implementing a Use Case (유스케이스 구현하기)

- 도메인 모델 구현하기
- 유스케이스 둘러보기
- 입력 유효성 검증
- 생성자의 힘
- 유스케이스마다 다른 입력 모델
- 비즈니스 규칙 검증하기
- 풍부한 도메인 모델 vs. 빈약한 도메인 모델
- 유스케이스마다 다른 출력 모델
- 읽기 전용 유스케이스는 어떨까?
- 유지보수 가능한 소프트웨어를 만드는 데 어떻게 도움이 될까?
- 의존성 역전

### p41 (번역판 p42)
> So, if we share the same input model between both use cases, we'd have to allow a null account ID to be passed into the "Update Account Details" use case and a null owner ID to be passed into the "Register Account" use case. Allowing null as a valid state of a field in our immutable command object is a code smell by itself.

> 그래서 두 유스케이스에서 같은 입력 모델을 공유할 경우 '계좌 정보 업데이트하기' 에서는 계좌 ID에 null 값을 허용해야 한다.
> 불변 코맨드 객체의 필드에 대해서 null을 유효한 상태로 받드아ㄹ이는 것은 그 자체로 코드 냄새(code smell)다.

### p42 (번역판 p45)

> A dedicated input model for each use case makes the use case much clearer and also decouples it from other use cases, preventing unwanted side effects.

> 각 유스케이스 전용 입력 모델은 유스케이스를 훨씬 명확하게 만들고 다른 유스케이스와의 결합도 제거해서 불필요한 부수효과가 발생하지 않게 한다.

## 5 : Implementing a Web Adapter (웹 어댑터 구현하기)

- 웹 어댑터의 책임
- 컨트롤러 나누기
- 유지보수 가능한 소프트웨어를 만드는 데 어떻게 도움이 될까?
- 의존성 역전

### p52

> Anything that has to do with HTTP must not leak into the application layer.

### p58 (번역판 p62)

> When slicing web controllers, we should not be afraid to build many small classes that don't share a model. They are easier to grasp, to test, and support parallel work. It's more work initially to set up such fine-grained controllers, but it will pay off during maintenance.

> 웹 콘트롤러를 나눌 때는 모델을 공유하지 않는 여러 작은 클래스를 만드는 것을 두려워해서는 안 된다. 작은 클래스들은 더 파악하기 쉽고, 더 테스트하기 쉬우며, 동시 작업을 지원한다. 이렇게 세분화된 콘트롤러를 만드는 것은 처음에는 조금 더 공수가 들겠지만 유지보수하는 동안에는 분명히 빛을 발할 것이다.

## 6 : Implementing a Persistence Adapter (영속성 어댑터 구현하기)

- 영속성 어댑터의 책임
- 포트 인터페이스 나누기
- 영속성 어댑터 나누기
- 스프링 데이터 JPA 예제
- 데이터베이스 트랜잭션은 어떻게 해야 할까?
- 유지보수 가능한 소프트웨어를 만드는 데 어떻게 도움이 될까?

### p68 (번역판 p74)

> You choose JPA as an OR mapper because it's the thing people use for this problem. A couple months into development you curse eager and lazy loading and the caching features and wish for something simpler. JPA is a great tool, but for many problems, simpler solutions may be, well, simpler.

> 사람들이 이런 유형의 문제를 해결하기 위해 선택하는 도구가 JPA이기 때문에 여러분도 OR 매퍼로 JPA를 선택했을 것이다. 하지만 개발을 시작하고 2~3개월이 지나면 즉시로딩/지연로딩, 캐싱 기능을 저주하면서 조금 더 간단한 뭔가를 원하게 될 ㅅ수도 있다. JPA는 좋은 도구이긴 하지만 많은 문제에 더 간단한 도구가 있을 수 있다.

## 7 : Testing Architecture Elements (아키텍처 요소 테스트하기)

- 테스트 피라미드
- 단위 테스트로 도메인 엔티티 테스트하기
- 단위 테스트로 유스케이스 테스트하기
- 통합 테스트로 웹 어댑터 테스트하기
- 통합 테스트로 영속성 어댑터 테스트하기
- 시스템 테스트로 주요 경로 테스트하기
- 얼마만큼의 테스트가 충분할까?
- 유지보수 가능한 소프트웨어를 만드는 데 어떻게 도움이 될까?

### p88 (번역판 p95)

> Line coverage is a bad metric to measure test success. Any goal other than 100% is completely meaningless because important parts of the codebase might not be covered at all. And even at 100%, we still can't be sure that every bug has been squashed.
> I suggest measuring test success by how comfortable we feel to ship the software.

> 라인 커버리지(line coverage)는 테스트 성공을 측정하는 데 있어서는 잘못된 지표다. 코드의 중요한 부분이 전혀 커버되지 않을 수 있기 때문에 100%를 제외한 어떤 목표도 완전히 무의미하다. 심지어 100%라 하더라도 버그가 잘 잡혔는지 확신할 수 없다.
> 나는 얼마나 마음 편하게 소프트웨어를 ㅍ배포할 수 있느냐를 테스트의 성공 기준으로 삼으면 된다고 생각한다.


### p88 (번역판 p96)

> If we have to spend an hour fixing tests each time we add a new field, however, we are doing something wrong. Probably, our tests are too vulnerable to structural changes in the code and we should look at how to improve that. Tests lose their value if we have to modify them for each refactoring.

> 하지만 새로운 필드를 추가할 때마다 테스트를 고치는 데 한시간을 써야 한다면 뭔가 잘못된 것이다. 아마도 테스트가 코드의 구조적 변경에 너무 취약할 것이므로 어떻게 개선할지 살펴봐야 한다. 리팩터링할 때마다 테스트 코드도 변경해야 한다면 테스트는 테스트로서의 가치를 잃는다.

## 8 : Mapping Between Boundaries (경계 간 매핑하기)

- ‘매핑하지 않기’ 전략
- ‘양방향’ 매핑 전략
- ‘완전’ 매핑 전략
- ‘단방향’ 매핑 전략
- 언제 어떤 매핑 전략을 사용할 것인가?
- 유지보수 가능한 소프트웨어를 만드는 데 어떻게 도움이 될까?
- 왜 조립까지 신경 써야 할까?

### p93 (번역판 p99)
(매핑하기 않기 전략 설명 중)

> In my experience, many use cases start their life as simple CRUD use cases. Later, they might grow into a full-fledged business use case with a rich behavior and validations that justify a more expensive mapping strategy.

> 내 경험에 의하면 많은 유스케이스들 이간단한 CRUD 유스케이스로 시작했다가 시간이 지남에 따라 값비싼 매핑 전략이 필요한, 풍부한 행동과 유효성 검증을 가진 제대로된 비즈니스 유스케이스로 바뀌어갔기 때문이다.

### p94
(양방향 매핑 전략 설명)

> This mapping strategy also leads to a clean domain model that is not dirtied by web or persistence concerns. It does not contain JSON or ORM mapping annotations. The single responsibility principle is satisfied.

이 매핑 전략을 웹이나 영속 성관심사로 오염되지 않은 깨끗 한도메인 모델로 이어진다. JSON이나 ORM 매핑 애너테이션도 없어도 된다. 단일 책임 원칙을 만족하는 것이다.

### p97 (번역서 p105)

> Since each mapping strategy has different advantages and disadvantages, we should resist the urge to define a single strategy as a hard-and-fast global rule for the whole codebase. This goes against our instincts, as it feels untidy to mix patterns within the same code base. But knowingly choosing a pattern that is not the best pattern for a certain job, just to serve our sense of tidiness, is irresponsible, plain and simple.

> 각 매핑 전략이 저마다 장단점을 갖고 있기 때문에 한 전략을 전체 코드에 대한 어떤 경우에도 변하지 않는 전역규칙으로 정의하려는 충동을 이겨내야 한다. 같은 코드에 여러 패턴을 섞으면 어수선하게 느껴져서 우리의 본능을 거스르는 일이긴 하지만 특정 작업에 최선의 패턴이 아님에도 그저 깔끔하게 느껴진다는 이유로 선택해버리는 것은 참으로 무책임한 처사다.


> Instead of starting with a fixed mapping strategy and keeping it over time – no matter what – we might start with a simple strategy that allows us to quickly evolve the code and later move to a more complex one that helps us to better decouple the layers.

> 고정된 매핑 전략으로 계속 유지하기보다는 빠르게 코드를 짤 수 있는 간단한 전략으로 시작해서 계층 간 결합을 떼어내는 데 도움이 되는 복잡한 전략으로 갈아타는 것도 괜찮은 방법이다.

### p100 (번역서 p106)

> This selection of mapping strategies per situation certainly is harder and requires more communication than simply using the same mapping strategy for all situations, but it will reward the team with a codebase that does just what it needs to do and is easier to maintain, as long as the mapping guidelines are known.

> 상황별로 매핑 전략을 선택하는 것은 모든 상황에 같은 매핑 전략을 사요ㅗㅇ하는 것보다 분명 더 어렵고 더 많은 커뮤니케이션을 필요로 하겠지만 매핑 가이드라인이 있는 한, 코드가 정확히 해야 하는 일만 수행하면서도 더 유지보수하기 쉬운 코드로 팀에 보상이 되어 돌아올 것이다.

## 9 : Assembing the Application (애플리케이션 조립하기)

- 평범한 코드로 조립하기
- 스프링의 클래스패스 스캐닝으로 조립하기
- 스프링의 자바 컨피그로 조립하기
- 유지보수 가능한 소프트웨어를 만드는 데 어떻게 도움이 될까?
- 경계와 의존성

### p107 (번역서 p114)

> The classpath scanning approach has its drawbacks, however. First, it's invasive in that it requires us to put a framework-specific annotation in our classes. If you are a clean architecture hardliner, you'd say that this is forbidden as it binds our code to a specific framework.

> 하지만 클래스패스 스캐닝 방식에는 단점이 있다. 첫번째로, 클래스에 프레임워크에 특화된 애너테이션을 붙여야 한다는 점에서 침추적이다. 강견한 클린 아키텍처파는 이런 방식이 코드를 특정한 프레임워크와 결합시키기 떄문에 사용하지 말아야한다고 주장할 것이다.

(의견)

특정 기술과 환경에 종속적이지 않게 활용할수 있는 객체를 POJO라고 한다면, 특정 라이브러리의 애노테이션이 달린 클래스의 인스턴스가 POJO인지는 논쟁이 있다.

애노테이션이 달린 클래스를 특정 환경에 의존하지 않는 런타임에서 호출해도 그대로 쓸수 있기 때문에 POJO라는 의견을 들은적이 있고, 그것도 일리가 있는 말이다.
`@Copponent`가 달린 클래스를 스프링에 대한 의존성은 Maven에서 optional이나 provided로 놓고 jar로  배포한다면, jar 쓰는 쪽에서 Spring에 대한 의존성을 추가하지 않고도 사용할 수 있다.

하지만 그 클래스를 고쳐서 컴파일할때는 스프링에 대한 의존성이 필요하고, DI framework을 바꿀때 해당 애노테이션을 다 고쳐야한다는 점은 프레임워크에 대한 의존성/종석성/결합을 의미한다. 상속이나 interface보다는 약한 종속성이라 할지라도 종속성은 존재한다.

다만 종석성의 수준을 단계별로 생각해볼 필요는 있고 때로는 애노테이션의 상대적으로 약한 종석성을 실용적으로 활용하는 전략도 선택할만하다고 본다.

## 10 : Enforcing Architecture Boundaries (아키텍처 경계 강제하기)

- 접근 제한자
- 컴파일 후 체크
- 빌드 아티팩트
- 유지보수 가능한 소프트웨어를 만드는 데 어떻게 도움이 될까?

### p118 (번역판) p125

> With a little work, we can even create a kind of domain-specific language (DSL) on top of the ArchUnit API that allows us to specify all relevant packages within our hexagonal architecture and then automatically checks whether all the dependencies between those packages point in the right direction:

ArchUnit 을 이용한 Hexgonal Architecture 검증 예제

* [DependencyRuleTests.java](https://github.com/wikibook/clean-architecture/blob/main/src/test/java/io/reflectoring/buckpal/DependencyRuleTests.java)
  * [HexagonalArchitecture](https://github.com/wikibook/clean-architecture/blob/main/src/test/java/io/reflectoring/buckpal/archunit/HexagonalArchitecture.java) 활용

### 번역판 p120-130
빌드모듈로 아키텍처 경계를 구분하는 장점

1. 순환 참조를 막음
2. 다른 모듈과 코드를 격리시켜서 변경 가능
3. 새로 의존성을 추가하는 일이 의식적인 행동이 됨.
   - 의존성을 추가하기에 앞서 정말로 필요한지 생각할 여지가 생김.

p122

> These advantages come with the added cost of having to maintain a build script, though, so the architecture should be somewhat stable before splitting it into different build modules.

> 하지만 이런 장점에는 빌드 스크립트를 유지보수하는 비용을 수반하기 때문에 아키텍처를 여러 개의 빌드 모듈로 나누기 전에 아키텍처가 어느 정도는 안정된 상태여야 한다.

## 11 : Taking Shortcuts Consciously (의식적으로 지름길 사용하기)

- 왜 지름길은 깨진 창문 같을까?
- 깨끗한 상태로 시작할 책임
- 유스케이스 간 모델 공유하기
- 도메인 엔티티를 입출력 모델로 사용하기
- 인커밍 포트 건너뛰기
- 애플리케이션 서비스 건너뛰기
- 유지보수 가능한 소프트웨어를 만드는 데 어떻게 도움이 될까?

### p127 (번역판 p135)
Release it의 저자 마이클 나이가드가 제안한 아키텍처 결정 기록(ADRs)

- [Documenting Architecture Decisions](https://www.cognitect.com/blog/2011/11/15/documenting-architecture-decisions)
- https://adr.github.io/

### 번역판 p138
'Using DOmain Entities as Input or Output Models' (도메인 모델을 입출력 모델로 사용하기) 전략에 대해서 설명하면서

> What makes this shortcut dangerous is the fact that many use cases start their lives as a simple create or update use case only to become beasts of complex domain logic over time.

> 이 지름길이 위험한 이유는 많은 유스케이스가 간단한 생성 또는 업데이트 유스케이스로 시작해서 시간이 지나면서 복잡한 도메인 로직 괴물이 되어간다는 사실 때문이다.

## 12 : Deciding on an Architecture Style (아키텍처 스타일 결정하기)

- 도메인이 왕이다
- 경험이 여왕이다
- 그때그때 다르다

### 번역서 p144

> So, the only way to make an educated decision about an architecture style is by having experience in different architecture styles. If you are unsure about the hexagonal architecture style, try it out on a small module of the application that you are currently building.

> 따라서 아키텍처 스타일에 대해서 괜찮은 결정을 내리는 유일한 방법은 다른 아키텍처 스타일을 경험해 보는 것이다. 육각형 아키텍처 스타일에 대한 확신이 없다면 지금 만들 고있는 애플리케이션의 작은 모듈에 먼저 시도해 보라.