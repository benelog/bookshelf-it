---
title: 자바 프로그래밍 면접, 이렇게 준비한다
tags: [java, 면접, algorithm]
date: 2020-07-20
---

## 감상
### 2020.07.20
- Java8이 나오기 전에 쓰여진 책이라 현시점에서는 오래된 지식이 많다.
    - 기술 역사서로는 의미가 있다.
- 알고리즘 구현예제들도 최적화의 여지가 있어보인다.
    - 예: Quick Sort는 책의 예제보다 공간복잡도를 더 줄여서 구현할 수 있다.

### 인상 깊은 단락

### p99
`Collections.newSetFromMap()` 언급. 책에는 오타로 `Collection.netSetFromMap()` 이라고 되어 있다.

### p158
Integer.MAX_VALUE 등에 대한 언급. 2의 보수 원리.
아래와 같이도 확인할 수 있다.

```java
assertThat(-Integer.MIN_VALUE).isEqualTo(Integer.MIN_VALUE);
assertThat(Math.abs(Integer.MIN_VALUE)).isEqualTo(Integer.MIN_VALUE);
assertThat(Integer.MIN_VALUE -1).isEqualTo(Integer.MAX_VALUE);
```

### p320
https://code.google.com/archive/p/dbdeploy/ 소개. 2010년이후로 업데이트 되고 있지 않다.
이 책의 개정판이 나온다면 Liquibase 등이 소개할 듯 하다.
