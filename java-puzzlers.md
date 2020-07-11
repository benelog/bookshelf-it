---
date: 2007-06-15
title: Java puzzlers
tags: java

## 인상싶은 내용
### puzzle 57 (141쪽)
hashCode() 미구현 사례

### puzzle 61 (151쪽)
Calendar 클래스의 월지정 실수

### puzzle 62(155쪽)
String 상수와 IdentityHashMap을 쓸 때의 문제

### puzzle 68(172쪽)
변수와 타입이 같은 이름을 갖고 있고, 이 둘이 같은 영역에 있을 때는 변수 이름의 우선 순위가 높다. 비슷하게 변수와 타입의 일므을 패키지 이름을 가릴 수 있다.

상수 이름과 클래스  이름 간의 충돌을 방지하기 위해서는, 클래스 이름을 지을 떄 약어를 보통 단어처럼 취급하는 것이 좋다. [EJ Item 38]. 예를 들어 우주적으로 유일한 식별자(Universally unique identifier)는 보통 약어로 UUID라 쓰지만 클래스 일므으로는 UUID보다 Uuid를 사용하는 것이 좋다(자바 플랫폼 라이브러리는 이와 같은 충고를 위반하고 있으며, UUID, URL< URI와 같은 이름을 사용하고 있따). 변수 이름과 패키지 이름 간의 충돌을 막기 위해서는 최상위 수준 패키지 이름이나 도메인 이름을 com, org, net, edu, java 혹은 javax와 같이 짓지 마라.

### puzzle 70 (176쪽)
> package-private 메서드는 다른 패키지에서 직접 오버라이딩 할 수 없다.[JLS 8.4.8.1]

@Override를 붙이면 도움이 되지 않을까?

### puzzle 71 (179쪽)
상수 인터페이스 구현은 절대로 피해야한다.[EJ Item 17]
static 임포트 기능은 꼭필요한 경우에만 최소한으로 사용하라


