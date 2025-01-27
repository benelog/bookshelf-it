---
title: Expert One-On-One J2Ee Design and Development
tags: [java, spring-framework, framework]
date: 2025-01-27
---

![](https://image.yes24.com/momo/TopCate35/MidCate09/3487744.jpg)

https://www.amazon.com/Expert-One-One-Design-Development/dp/0764543857/

## 감상

로드 존슨은 이 책에서 분산 아키텍쳐가 성능과 개발,debug, deploy, 유지보수가 어렵고 객체지향 디자인을 적용하는 것에 제약이 됨을 이야기하고 있습니다. 그리고 그의 경험으로는 분산 Application의 deployment flexibility 잇점은 과장되었다고 말합니다. 또, Business적 요구가 없는데도 분산 아키텍처가 된다면 프로젝트의 life-cycle 동안 자원의 낭비가 되고 버그의 온상지가 될 것이라고 주장했습니다. (18,19,33쪽)


## 인상 깊은 단락

### p78
Chapter 3 Testing J2EE Applications

> In particular, it's important to view the writing of a failing test as an achievement, not a problem.

> It's vital that the suite of tests continues to reflect the requirements of the application throughout the project lifecycle.

### p106

> It's good practice to implement a proof of concept or "vertical slice" of an application's functionality early in the project lifecycle and run load tests against it. Thus load testing should continue throughout the project lifecycle.

### p120
JdbcTemplate에서 `RowCallbackHandler` 인터페이스 설명 전의 'Strategy' 패턴 언급

> Let's now consider another use of "inversion of control" to parameterize a single operation, while moving control and error handling into a framework. Strictly speaking, this is a special case of the Strategy design pattern: it appears different because the interfaces involved are so simple.

### p145

> If the helper class's functionality might need to be implemented differently in different situations, an interface can be used to decouple the original class from the helper (in the Strategy design pattern).


