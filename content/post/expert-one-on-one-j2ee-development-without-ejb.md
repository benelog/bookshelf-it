---
title: Expert One-on-One J2EE Development without EJB
tags: [java, spring-framework, framework]
date: 2025-01-27
---

![](https://image.yes24.com/momo/TopCate58/MidCate10/5798685.jpg)

https://www.amazon.com/Expert-Development-without-Johnson-Paperback/dp/B011YTQ5C2

## 감상

책에서도 로드존슨은 마틴파울러 책의 분산 컴퓨팅의 제1법칙을 인용하면서, 대부분의 J2EE Application, 특히 Web application에서는 분산 아키텍쳐에서 얻는 이득이 없다고 이야기합니다. Logical layering이 Physical layering보다 중요하며, 깨끗한 관심사의 분리를 경량 프레임웍을 통해서도 이룰 수 있음을 이야기하고 있습니다. ( 309,317,318쪽)

EJB에서도 Local Session Bean이 증가한 사례를 이야기하고, Remote EJB는 필요해지는 시점에 도입할 수 있으므로 미래에 있을 가상의 요구사항(phantom requriement)을 가정하는 것은 위험하다고 이야기합니다. (335쪽)

## 인상 깊은 단락

### p311

> In general, we believe that unrecoverable exceptions should normally be unchecked. See Chapter 4 of Expert One-on-One J2EE Design and Development for further discussion of this issue.

### p317

> As we’ve noted, it is dangerous to assume phantom requirements upfront, particularly if they incur a significant level of extra complexity.

> Do not follow J2EE orthodoxy in making components distributed because of the potential for future distribution.

### p335 ~ 336

> For Java-to-Java communication, Hessian will be the preferred choice, as it is slimmer and hence more efficient.

> Hessian and Burlap (the “Caucho twins”) are powerful and flexible HTTP-based remoting protocols that do not impose any restrictions on service interfaces or service implementations. In combination with standard web containers, they are appropriate for a wide range of stateless remoting needs, especially Java-to-Java communication. They are particularly well suited for communication with external clients over the Internet, but also lend themselves for selective internal distribution within a server system.


### p413

> The third problem is often harder to tackle. As I’ve noted before, technical challenges usually pale in comparison with political challenges. A common offender here is the cowboy developer. (He normally is a he, so I won’t try to avoid gender-specific language.) A cowboy knows that he writes excellent code very fast. He often really does know Java and the APIs he uses well. He knows that his code is so good that he doesn’t need to bother with the cumbersome routine of writing tests. I’ve worked with enough such individuals to shudder when I encounter one. I’ve never met one who wrote better code than a good developer who was also committed to testing—perhaps a reflection of the fact that desire to write testable code usually means writing good code.

