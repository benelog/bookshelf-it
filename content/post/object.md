---
title: 오브젝트
tags: [객체지향, 설계]
date: 2020-05-01
---

## 인상 깊은 단락
맥락에 따라 이해해야하므로 책을 사서 전문을 꼭 읽어봐야한다.

#### 들어가며
과학적 패러다임과 프로그래밍 패러다임과 차이점

#### p3
> 우리가 사용하는 패러다임은 '한 시대의 사회 전체가 공유하는 이론이나 방법, 문제의식 체계'를 의미한다.

#### p5
> 프로그래밍 패러다임은 개발자 공동체가 동일한 프로그래밍 스타일과 모델을 공유할 수 있게 함으로써 불필요한 부분에 대한 의견 충돌을 방지한다. 또한 프로그래밍 패러다임을 교육시킴으로써 동일한 규칙과 방법을 공유하는 개발자로 성장할 수 있도록 준비시킬 수 있다.

#### p6
> 쿤은 상이한 두 가지 패러다임이 있을 때 두 패러다임은 함께 존재할 수 없다고 주장했다. 일례로 천동설과 지동설 모두를 사실로 받아들일 수는 없다. 하지만 프로그래밍 패러다임으로 오면 이야기가 달라진다. 절차형 패러다임에서 객체지향 패러다임으로 전환됐다고 해서 두 패러다임이 함꼐 존재할 수 없는 것은 아니다. 오히려 서로 다른 패러다임이 하느의 언어 안에서 공존함으로써 서로의 장단점을 보완하는 경향을 보인다.

> 간단히 말해 프로그래밍 패러다임은 혁명적(revolutionary)가 아니라 발전적(evolunationary)이다.

### 1장 : 객체, 설계

#### p14
로버트 마틴이 '클린 소프트웨어'에서 언급한 소프트웨어 모듈이 가져야 하는 3가지 목적

- 실행 중에 제대로 동작
- 변경을 위해 존재
- 코드를 읽는 사람과 의사 소통

#### p26
> 자신의 데이터를 스스로 처리하는 자율적인 객체를 만들면 결합도를 낮출 수 있으 뿐더러 응집도를 높일 수 있다.

> 앞에서 살펴본 것처럼 일반적으로 절차적 프로그래밍은 우리의 직관에 위배된다.

> 더 큰 문제는 절차적 프로그래밍의 세상에서는 데이터의 변경으로 인한 영향을 지역적으로 고립시키기 어렵다는 것이다.

#### p27
> 절차적 프로그램이은 프로세스가 필요한 모든 데이터에 의존해야 한다는 근본적인 문제점 때문에 변경에 취약할 수밖에 없다.

> 이처럼 데이터와 프로세스가 동일한 모듈 내부에 위치하도록 프로그래밍하는 방식을 객체지향 프로그래밍(Object-Oriented Programming)이라고 부른다.

#### p33
> 비록 현실에서는 수동적인 존재라고 하더라도 일단 객체지향의 세계에 들어오면 모든 것이 능동적이고 자율적인 존재로 바뀐다. 레베카 워프스브록(Rebecca Wirfs-Brock)은 이처럼 능동적이고 자율적인 존재로 소프트웨어 객체를 설계하는 원칙을 가리켜 의인화(anthopomophism)라고 부른다.

### 2장 : 객체지향 프로그래밍

> 설계가 유연해질수록 코드를 이해하고 디버깅하기는 점점 더 어려워진다는 사실을 기억하라. 반면 유연성을 억제하면 코드를 이해하고 디버깅하기는 쉬워지지만 재사용성과 확장 가능성은 낮아진다는 사실도 기억하라. 여러분이 훌륭한 객체지향 설계자로 성정하기 위해서는 항상 유연성과 가독성 사이에서 고민해야 한다.

추상화 수준을 높이면 큰 단위로 이해할수 잉어서 유연하면서 가독성이 좋은 경우도 있다고 생각한다.

### 3장 : 역할, 책임, 협력

#### p73
> 객체지향의 본질은 협력하는 객체들의 공동체를 창조하는 것이다.객체지향 설계의 핵심은 협력을 구성하기 위해 적절한 객체를 찾고 적절한 책임을 할당하는 과정에서 드러난다. 클래스와 상속은 객체들의 책임과 협력이 오느 정도 자를 잡은 후에 사용할 수 있는 구현 메커니즘일 뿐이다.

#### p75
> 객체지향 시스템은 자율적인 객체들의 공동체다. 객체는 고립된 존재가 아니라 스시템의 기능이라는 더 큰 목표를 달성하기 위해 다른 객체와 협력하는 사회적인 존재다.

> 메시지를 수신한 객체는 메서드를 실행해 요청에 응답한다. 여기서 객체가 메시지를 처리할 방법을 스스로 선택한다는 점이 중요하다.

#### p78
> 이때 협력에 참여하기 위해 객체가 수행하는 행동을 책임이라고 부른다.
> 책임이란 객체에 의해 정의되는 응집도 있는 행위의 집합으로, 객체가 유지해야 하는 정보와 수행할 수 있는 행동에 대해 개략적으로 서술한 문장이다. 즉, 객체의 책임은 객체가 '무엇을 알고 있는가'와 '무엇을 할수 있는가'로 구성된다.

#### p86
> 객체가 가질 수 있는 상태는 행동을 결정하고 나서야 비소로 결정할 수 있다. 협력이 객체의 행동을 결정하고 행동이 상태를 결정한다. 그리고 그 행동이 바로 객체의 책임이 된다.

> 객체는 협력이라는 주어진 문맥 안에서 특정한 목적을 각제 된다. 객체의 목적은 협력 안에서 객체가 맡게 되는 책임의 집합으로 표시된다. 이처럼 객체가 어떤 특정한 협력 안에서 수행하는 책임의 집합을 역할이라고 부른다. 실제로 협력을 모델링할 때는 특정한 객체가 아니라 역할에게 책임을 할당한다고 생각하는게 좋다.

#### p88
> 이 대표자를 협력 안에서 두 종류의 객체를 교대로 바꿔 끼울 수 있는 일종의 슬롯으로 생각할 수 있다. 이 슬롯이 바로 역할이다.

#### p90
> 역할은 객체가 참여할 수 있는 일종의 슬롯이다.

> 다시 말해 협력에 적합한 책임을 수행하는 대상이 한 종류라면 간단하게 객체로 간주한다. 만약 여러 종류의 객체들이 참여할 수 있따면 역할이라고 부르면 된다.

#### p94

> ... 협력 안에서 동일한 책임을 수행하는 객체들은 동일한 역할을 수행하기 때문에 서로 대체 가능하다. 따라서 역할은 다양한 환경에서 당양한 객체들을 수용할 수 있게 해주므로 협력을 유연하게 만든다.

#### p95
> 협력이라는 문맥 안에서 역할은 특정한 협력에 참여해서 책임을 수행하는 객체의 일부다.일반적으로 역할은 객체가 협력에 참여하는 잠시 동안에만 존재하는 일시적인 개념이다.

#### p96

> 객체는 다양한 역할을 가질 수 있다. 객체는 협력에 참여할 때 협력 안에서 하나의 역할로 보여진다. 개체가 다른 협력에 참여할 때는 다른 역할로 보여진다.

하나의 클래스가 여러 인터페이스를 구현한 경우가 생각남.

### 4장 : 설계 품질과 트레이드오프

#### p97
> 객체지향 설계의 핵심은 역할, 책임, 협력이다. 협력은 애플리케이션의 기능을 구현하기 위해 메시지를  주고 받는 객체들 사이의 상호작용이다. 책임은 객체가 다른 객체와 협력하기 위해 수행하는 행동이고, 역할은 대체 가능한 책임의 집합이다.

#### p98
> 데이터 중심의 관점에서는 객체는 자신이 포함하고 있는 데이터를 조작하는데 필요한 오퍼레이션을 정의한다. 책임 중심의 관점에서는 객체는 다른 객체가 요청할 수 있는 오퍼레이션을 위해 필요하 상태를 보관한다. 데이터 중심의 관점은 객체의 상테에 초점을 맞추고 책ㅇ미 중심의 관점은 객체의 행도에 초점을 맞춘다. 전자는 객체를 독립된 데이터 덩어리로  바라보고 후자는 객체를 협력하는 공동체의 일원으로 바라본다.

> 객체의 상태는 구현에 속한다. 구현은 불안정하기 때문에 변하기 쉽다.

#### p109
> 객체지향 설계의 가장 중요한 원리는 불안정한 구현 세부사항을 안정적인 인터페이스 뒤로 캡슐화하는 것이다.

#### p110
> 객체지향 관점에서 응집도는 객체 또는 클래스에 얼마나 관련 높은 책임들을 할당했는지를 나타낸다.

> 객체지향 관점에서 결합도는 객체 또는 클래스가 협력에 필요한 적절한 수준의 관계만을 유지하고 있는지를 나타낸다.

#### p116
> 데이터 중심의 설계는 전체 시스템을 하나의 거대한 의존성 덩어리로 만들어 버리기 때문에 어떤 변경이라도 일단 발생하고 나면 시스템 전체가 요동칠 수 밖에 없다.

> 서로 다른 이유로 변경되는 코드가 하나의 모듈 안에 공존할 때 모듈의 응집도가 낮다고 말한다.

#### p117
> 어떤 요구사항 변경을 수용하기 위해 하나 이상의 클래슬르 수정해야 하는 것은 설계의 응집도가 낮다는 증거다.

이어서 단일책임 원칙(Single Responsibility Principle) 설명

#### p128
> 내부 속성을 외부로부터 감추는 것은 '데이터 캡슐화'라고 불리는 캡슐화의 한 종류일 뿐이다.

#### p131
> 데이터 주도 설계는 설계를 시작하는 처음부터 데이터에 대해 결정하도록 강요하기 때문에 너무 이른 시기에 내부 구현에 초점을 맞추게 한다.

### 5장: 책임 할당하기
#### p133

> 동일한 문제를 해결할 수 있는 다양한 책임 할당 방법이 존재하며, 어떤 방법이 최선인지는 상황에 문맥에 따라 달라진다.

#### p134

> - 데이터부터 행동을 먼저 결정하라
> - 협력이라는 문백 안에서 책임을 결정하라.

#### p139
> INFORMATION EXPERT 패턴은 객체가 자율적인 존재여야 한다는 사실을 다시 한번 상기시킨다. 정보를 알고 있는 객체만이 책임을 어떻게 수행할지 스스로 결정할 수 있기 때문이다.

#### p152
> 따라서 낮은 응집도가 초래하는 문제를 해결하기 위해서는 변경의 이유에 따라 클래스를 분리해야 한다.

생각: '이유'도 추상화의 정도가 다양할 듯하다.

> 코드를 통해 변경의 이유를 파악할 수 있는 첫번째 방법은 인스턴스 변수가 초기화되는 시점을 살펴보는 것이다.

> 따라서 함께 초기화되는 속성을 기준으로 코드를 분리해야 한다.

#### p174
> 처음부터 책임 주도 설계 방법을 따르는 것보다 동작하는 코드를 작성한 후에 리팩토링하는 것이 더 훌륭한 결과물을 낳을 수도 있다.


### 6장: 메시지와 인터페이스

#### p175
> 훌륭한 객체지향 코드를 얻기 위해서는 클래스가 아니라 객체를 지향해야 한다. 좀 더 정확하게 말해서 협력 안에서 객체가 수행하는 책임에 초점을 맞춰야 한다. 여기서 중요한 것은 책임이 객체가 수신할수 이는 메시지의 기반이 된다는 것이다.

#### p187
> 묻지 말고 시켜라 원칙에 따르도록 메시지를 결정하다보면 자연스럽게 정보 전문가[Larman04]에게 책임을 할당하게 되고 높은 응집도를 가진 클래스를 얻을 확률이 높아진다.

> 인터페이스는 객체가 어떻게 하는지가 아니라 무엇을 하는지를 서술해야 한다.

#### p197
> 오퍼레이션의 이름은 협력이라는 문맥을 반영해야 한다. 오퍼레이션은 클라이언트가 객체엑 무엇을 원하는지를 표현해야 한다. 다시 말해 객체 자신이 아닌 클라이언트의 의도를 표현하는 이름을 가져야 한다.

#### p199
> 하나 이상의 도트(.)를 사용하는 모든 케이스가 디미터 법칙 위반인 것은 아니다. 기차 충돌처럼 보이는 코드라도 객체의 내부 구현에 대한 어떤 정보도 외부에 노출하지 않는다면 그것은 디미터 법칙을 준수한 것이다.

#### p202
> 객체는 내부 구조를 숨겨야 하므로 디미터 법칙을 따르는 것이 좋지만 자료 구조라면 당연히 내부를 노출해야 하므로 디미터 법칙을 적용할 필요가 없다.

> 루틴은 다시 프로시저(procedure)와 함수(function)으로 구분할 수 있다.

> - 프로시저는 부수효과를 발생시킬 수 있지만 값을 반환할 수 없다.
> 함수는 값을 반환할 수 있지만 부수효과를 발생시킬 수 없다.

명령(Command)와 쿼리(Query)는 객체의 인터페이스 측면에서 프로시저와 함수를 부르는  또 다른 이름이다.

#### p213

> 명령-쿼리 분리 원칙은 부수효과를 가지는 며열ㅇ으로부터 부수효과를 가지지 않는 쿼리를 명백하게 분리함으로써 제한적이나마 참조 투명성의 혜택을 누릴 수 있게 된다.

#### p214
메시지를 먼저 선택하는 방식의 장점

### 7장: 객체 분해
#### p234
> 코드가 성장하고 라인 수가 증가할수록 전역 데이터를 변경하는 것은 악몽으로 변해간다.

언제 하향식 분해가 유용한가  (p235 이어짐)

>  하향식 아이디어가 매력적인 이유는 설계가 어느 정도 안정화 된 후에는 설계의 다양한 측면을 논리적으로 설명하고 문서화하기에 용이하기 때문이다.

> 하향식 분해는 작은 프로그램과 개별 알고리즘을 위해서는 유용한 패러다임으로 남아 있다. 특히 프로그램 과정에서 이미 해결된 알고리즘을 문서화하고 서술하는 데는 훌륭한 기법이다. 그러나 실제로 동작하는 커다란 소프트웨어를 설계하는데 적합한 방법은 아니다.

#### p236
> 앞의 급여관리 시스템의 예에서 알수 있는 것처럼 시스템의 가장 일반적인 비밀은 데이터다.

#### p246
> 추상 데이터 타입이 오퍼레이션을 기준으로 타입을 묶는 방법이라면 객체지향은 타입을 기준으로 오퍼레이션을 묶는다.

#### p252
> 새로운 타입을 빈번하게 추가해야 한다면 객체지향의 클래스 구조가 더 유용하다. 새로운 오퍼레이션을 빈번하게 추가해야 한다면 추상 데이터 타입을 선태갛는 것이 현명한 판단이다.


### 8장: 의존성 관리하기

#### p257
> 의존성은 전이될 수 있기  때문에 의존성의 종류를 직접 의존성(direct dependency)과 간접 의존성(indirect dependency)으로 나누기도 한다.

#### p276
> 표준 클래스에 대한 의존은 해롭지 않다.

### 9장: 유연한 설계

#### p282

> 사실 개방-폐쇄 법칙은 런타임 의존성과 컴파일 타임 의존성에 대한 이야기다.

#### p298
ServiceLocator를 쓸때 생길수 있는 부작용

> 숨겨진 의존성이 이해하기 어렵고 디버깅하기 어려운 이유는 문제점을 발견할 수 있는 시점을 코드 작성 시점이 아니라 실행 시점으로 미루기 때문이다.

> 의존성을 숨기는 코드는 단위 테스트 작성도 어렵다.

> 클래스의 사용법을 익히기 위해 구현 내부를 샅샅이 뒤져야 한다면 그 클래스의 캡슐화는 무너진 것이다.

> 결과적으로 의존성을 구현 내부로 감추도록 강요하는 SERVICE LOCATOR는 캡슐화를 위반할 수 밖에 없다.

#### p299

> 이야기의 핵심은 의존성 주입이 SERVICE LOCATOR 패턴보다 좋다가 아니라 명시적인 의존성이 숨겨진 의존성보다 좋다는 것이다.

> 어쩔 수 없이 SERVICE LOCATOR 패턴을 사용해야 하는 경우도 있다. 의존성 주입을 지원하는 프레임워크를 사용하지 못하는 경우나 깊은 호출 계층에 걸쳐 동일한 객체를 계쏙해서 전달해야 하는 고통을 견디기 어려운 경우에는 어쩔수 없이 SERVICE LOCATOR 패턴을 사용하는 것을 고려하라.

#### p304
인터페이스를 클라이언트가 속한 패키지가 포함. SEPARATED INTERFACE 패턴.

#### p305
> 변경하기 쉽고 확장하기 쉬운 구조를 만들기 위해서는 단순함과 명확함의 미덕을 버리게 될 가능성이 높다.


### 10장 : 상속과 클래스 재사용

#### p329
상속을 위해서는 내부 구현을 문서화해야 해야하는데, 이는 상속이 캡슐화를 위반해서 생기는 불행임.

> 설계는 트레이드오프 활동이라는 사실을 기억하라. 상속은 코드 재사용을 위해 캡슐화를 희생한다.

#### p332
> 결합도란 다른 대상에 대해 알고 있는 지식의 양이다. 상속은 기본적을 부모 클래스의 구현을 재사용한다는 기본 전체를 따르기 때문에 자신 클래스가 부모 클래스의 내부에 대해 속속들이 알도록 강요한다.

#### p343
> 상속은 어떤 방식으로든 부모 클래스와 자식 클래스를 결함시킨다. 메서드 구현에 대한 결합은 추상 클래스를 추가함으로써 어느 정도 완화할 수 있지만 인스턴스 변수에 대한 잠재적인 결합을 제거할 수 있는 방법은 없다.

### 11장: 합성과 유연한 설계

#### p360
추상 메서드와 훅메서드

#### p368
> 상속 관계는 컴파일타임에 결정되고 고정되기 때문에 코드를 실행하는 도중에는 변경할 수 없다.
> 합성은 컴파일타임 관계를 런타임 관계로 변경함으로써 이문제를 해결한다.

#### p379
> 믹스인(Mixin)은 객체를 생성할 때 코드 일부를 클래스 안에 섞어 넣어 재사용하는 기법을 가르키는 용어다.


### 12장: 다형성

#### p389
> 상속의 목적은 코드 재사용이 아니다. 상속은 타입 계층을 구조화하기 위해 사용해야 한다.

#### p421
Ruby의 method_missing 같은 방식

> 이해할 수 없는 메시지를 처리할 수 있는 동적 타입 언어는 좀 더 순수한 관점에서 객체지향 개러다임을 구현한다고 볼 수 있다.


### 13장 : 서브클래싱과 서브타이핑

#### p439
> 객체의 타입을 결정하는 것은 내부의 속성이 아니라 객체가 외부에 제공하는 행동이라는 사실을 기억하라.

#### p445

> 이 예는 어휘적인 정의가 아니라 기대되는 행동에 따라 타입 계층을 구성해야 한다는 사실을 잘 보여준다.

> 너무 성급하게 상속을 적용하려고 서두르지 마라. 여러분의 애플리케이션 안에서 두 가지 후보 개념이 어떤 방식으로 사용디고 협력하는지 살펴본 후에 상속의 적용  여부를 결정해도 늦지 않다.

> 여기서 중요한 것은 행동의 호환 여부를 판단하는 기준을 클라이언트의 관점이라는 것이다.

#### p451
> 요점은 자연어에 현혹되지 말고 요구사항 속에서 클라이언트가 기대하는 행동에 집중하라는 것이다.

#### p452
서브 클래싱과 서브 타이핑의 차이

#### p454
Java의 Stack과 Vector는 리스코프 원칙을 위반하는 사례

#### p457
Retangle과 Squre의 사례

> 두 클래스는 리스코프 치환 원칙을 위반하기 때문에 서브타이핑 관계가 아니라 서브클래싱 관계다.

#### p458
> 리스코프 치환 원칙은 "클라이언트와 격리한 채로 본 모델은 의미 있게 검증하는 것이 불가능하다[Martin02]"라는 아주 중요한 결론을 이끈다.

#### p459
> 결론적으로 상속이 서브타이핑을 위해 사용될 경우에만 is-a 관계다.

#### p460
> 일반적으로 리스코프 취환 원칙 위반은 잠재적인 개발-폐쇄 원칙 위반이다[Martin02].

#### p463
> 서브 타입이 슈퍼타입처럼 보일 수 있는 유일한 방법은 클라이언ㅌ트가 슈퍼타입과 맺은 계약을 서브타입이 준수하는 것뿐이다.

#### p466~467

> 서브타입에 슈퍼타입과 같거나 더 약한 사전조건을 정의할 수 있다.
> 서브타입에 슈퍼타입과 같거나 더 강한 사후조건을 정의할 수 있다.


###  14장: 일관성 있는 협력

#### p495
> GOF의 조언에 따르면 캡슐화란 단순히 데이터를 감추는 것이 아니다. 소프트웨어 안에서 변할 수 있는 모든 '개념'을 감추는 것이다.

#### p509
> 유사한 기능에 대해 유사한 협력 패턴을 적용하느 ㄴ것은 객체지향 시스템에서 개념적 무결성(Ceonceptual Integrity)[Brooks95]을 유지할 수 있는 가장 효과적인 방법이다.

#### p512
> 따라서 훌륭한 설계자가 되는 첫걸음은 변경의 방향을 파악할 수 있는 날카로운 감각을 기르는 것이다.

### 15장: 디자인 패턴과 프레임워크

#### p513
> 디자인 패턴이 협력을 일관성 있게 만들기 위해 재사용할 수 잇는 설계의 묶음이라면, 프레임워크는 일관성 있는 협력을 제공하는 확장 가능한 코드라고 할 수 있다.

#### p514
파틴파울러가 'Analaysis Patterns'에서 한 패턴의 정의

> 내가 사용하는 패턴 정의는 하나의 실무 컨텍스트(practical context)에서 유용하고 사용해 왔고 다른 실무 컨텍스트에서도 유용할 것이라고 예상되는 아이디어(idea)다.

#### p151
> 패턴의 이름은 높은 수준의 돼화를 가능하게 하는 원천이다.

> 패턴은 홀로 존재하지 않는다.

#### p516
패턴 분류:  아키텍처 패턴, 분석 패턴, 디자인 패턴, 이디엄

#### p517
> 패턴은 공통으로 사용할 수 있는 역할, 책임, 협력의 템플릿이다.

#### p522
> 타당한 이유없이 패턴을 적용하면 패턴에 익숙한 사람들의 경우에는 설계의 의도를 이해하지 못하게 되고, 패턴을 알지 못하는 사람들은 불필요하게 복잡한 설계를 따라가느라 시간을 낭비하게 된다.

#### p524
프레임워크 정의

#### p529

로버트 마틴 인용
> 사실, 좋은 객체지향 설계의 증명이 바로 이와 같은 의존성의 역전이다.

#### p530
GOF 인용

> 설계 수준의 재사용은 애플리케이션과 기반이 되는 소프트웨어 간에 제어를 바꾸게 한다.

### 마치며

#### p531
> '따라하는 수준'에 있는 학습자에게 주어질수 있는 최고의 보상은 주어진 절차를 따르면 만족할만한 결과물을 얻을수 있다는 안점감이다.

#### p566
C#은 리턴타입 공변성을 지원하지 않음

### 부록B: 타입 계층의 구현

#### p598
Java 디폴트 메서드의 한계

### 부록C: 동적인 협력, 정적인 코드
#### p614
> 사실 객체지향 패러다임이 과거의 다른 패러다임과 구별되는 가장 큰 차이점은 소프트웨어를 개발하기 위한 전체 주기 동안 동일한 설계 기법과 모델링 방법을 사용할 수 있다는 것이다.

> 모델링 툴에 저장된 다이어그림애 코드와 상관이 없다면 당장 다이어그램을 파기하고 모델링툴을 쓰레기통에 집어 던진 후 프로젝트 관리자아게 라이선스 비용이 더 이상 필요하지 않다는 희소식을 전하자.
