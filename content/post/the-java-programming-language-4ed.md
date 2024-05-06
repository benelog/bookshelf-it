---
date: 2024-04-28
title: The Java Programming Language, Fourth Edition
tags: [java, 발췌독]
---

## 인상 깊은 내용

### p65
> "Some people will say incorrectly that objects are passed “by reference.” In programming language design, the term pass by reference properly means that when an argument is passed to a function, the invoked function gets a reference to the original value, not a copy of its value. If the function modifies its parameter, the value in the calling code will be changed because the argument and parameter use the same slot in memory.

(중략)

> The Java programming language does not pass objects by reference; it passes object references by value."

[토비님의 언급](https://www.facebook.com/tobyilee/posts/pfbid0ZGfdaBn2MMSyKhND19zczZNEMnXiyunzELLPmq7taCbCmy9J6FRqGS8VCVWewqKkl)


'Head First Java'의 89페이지에서는 다음과 같이 설명한다.

> 객체 페러런스는 단지 또 다른 변수 값에 불과합니다.
> 즉, 컵에 들어가는 것이라고 보면 됩니다. 단지 이번에는 그 컵 안에 리모컨이 들어간다고 볼 수 있는 것이죠.

객체 타입이면 'Call by reference'라고 주장하는 사람이 있다면 아래와 같은 예제의 결과를 예상해보라고 물어볼만 하다.

```java
public class ReferenceTest {
    public static void main(String[] args) {
        String x1 = "Hello";
        String y1 = "Java";
        swap(x1, y1);
        System.out.println(x1);

        int x2 = 1;
        int y2 = 2;
        swap(x2, y2);
        System.out.println(x2);
    }

    static void swap(Object x, Object y) {
        Object temp = x;
        x = y;
        y = temp;
    }
}
```
