---
title: 필독! 개발자 온보딩 가이드
tags: [설계, 구현, 방법론]
date: 2023-10-01
---

![](https://image.yes24.com/goods/119108069/XL)

https://www.yes24.com/Product/Goods/119108069

책의 제목

- (원서) The Missing Readme: A Guide for the New Software Engineer
- (번역서) 필독! 개발자 온보딩 가이드: 지속 가능한 소프트웨어와 원활한 협업 문화를 이해하는 프로페셔널 개발자의 탄생

## 감상

### 2023.10.23
많지 않은 분량으로 실무 개발자의 폭넓은 업무를 다루면서 결코 얄팍하지 않은 지식을 전달하는 책입니다.
협업, 설계, 구현, 테스트, 문서화, 긴급 대응, 경력 관리 등 다양한 분야에 대한 알찬 조언을 책 한권에 눌러 담았고 더 많은 분량을 학습하고 싶은 독자를 위한 참고자료들도 매 장마다 소개하고 있습니다.

이 책은 신입 개발자를 대상으로 한 책으로 홍보되고 있지만 경력이 많은 개발자가 읽을만한 가치도 충분합니다. 저도 과거의 경험을 돌아보면서 생각을 정리할 수 있었습니다. 스스로 절실하게 얻은 교훈이 이 책에도 적혀 있는 보면 반가웠고 깊은 공감이 되는 문장들도 많이 만날수 있었습니다.

예를 들면, Dark launching이나 Feature toggle 같이 제 경험에서 유용했던 기법이 개발 실무의 액기스를 전하는 이 책에서도 소개되니 반갑고 안심이 되었습니다. 긴급 대응을 위한 당번(on call) 제도와 같이 더 개선을 해야 할 요소도 독서 후에 더 크게 느껴지기도 했습니다. 전에는 썼지만 근래에는 활용하지 않았던 Liquibase를 통한 DB 스키마 관리도 다음 프로젝트에서는 다시 시도해봐야겠다는 생각도 듭니다.

유용하다고 느낀 지침과 조언을 새겨두고 실천하기 위해 여러 번 읽어야겠다는 생각을 하면서 마지막 장을 덮었습니다.

## 관련 자료
* 번역서 정오표 : https://www.onlybook.co.kr/entry/onboarding-errata
* 저자들이 출연한 파드캐스트 : https://www.youtube.com/watch?v=7qQQMtVj-Cw

## 인상 깊은 단락

### p11
정윤진 님의 추천사 중

> 제가 근무했던 전 직장(피보탈 랩)이 좋은 소프트웨어를 위한 협업을 위해 각 개발자에게 요구했던 마인드는 "Be kind!"였습니다. 협업 과정에서는 서로 다른 기술 수준, 도메인에 대한 이해 수준의 격차가 언제나 발생하고 그렇기에 서로 친절해지기가 꽤 어렵습니다. 그래서 피보탈 랩의 중요한 채용 기준은 공감력(empathy)를 확인하는 것이기도 했습니다.


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

(의견) 최대한 나중에 처리하는 것보다는 적절한 추상화 레이어에서 처리하자는 것이 좋다고 생각한다. 예를 들면 사용자의 ID로 조회했을 때 DB 조회가 실패했을 때 생기는 `EmptyResultDataAccessException`을 어플리케이션 콜스택의 마지막에서 처리하기보다는 비지니스 로직을 다루는 레이어에서 `UserNotFoundException`과 같이 비지니스 맥락의 의미가 부여된 예외로 바꾸는 것이 좋을 때도 있다.

### p115
> 카운터, 게이지, 히스토그램을 쉽게 계산할 수 있다고 해서 지표 라이브러리를 직접 구현할 생각은 금물이다. 비표준 라이브러리의 유지보수는 악몽에 가깝다. 표준 라이브러리는 애초에 모든 것과 통합할 수 있도록 만들어져 있다.

### p125
'배포된 설정은 변경하지 말자' 단락

> 특정 머신의 설정을 수작업으로 수정하는 일은 금하자. 이렇게 일시적으로 변경한 설정은 다음 배포 과정에서 다시 원래 값으로 덮어써진다.

### p167
테스트 결정성에 대한 설명

> 비결정적(nondeterministic) 코드는 테스트의 가치를 떨어뜨린다. 테스트가 간헐적으로 실패한다는 것은 매번 동일한 현상이 발생하지는 않는다는 뜻이므로 재현과 디버깅이 어렵다. 코드가 문제인지 테스트가 문제인지 알 수 없기 때문이다.

### p188

> 코드 리뷰 과정에 발생하는 충돌을 해소하는 방법은 팀마다 다르다. 어떤 팀은 리뷰를 요청한 사람에게 맡기는 반면 다른 팀은 기술 리드에게 맡기기도 하며 또 다른 팀에서는 다수결로 결정하기도 한다. 그러므로 팀의 규정을 따르자.

의견) 팀마다 정의된 규칙이 있지 않으면 혼란이 더 커지므로 팀 수준에서 규칙을 정의하자는 생각을 팀리더라면 해봐야 한다.

### p191
코드 리뷰 의견

> 의견을 지나치게 간결하게 쓰지는 말자. 마치 옆자리에 앉아 코드를 리뷰하며 말하듯이 의견을 작성하자. 의견은 반드시 정중하게 표현해야 하며 제안하려는 방식과 이유를 잘 설명해야 한다.

### p193
> 여러분이 보기에 더 나은 방법이 있다면 그 부분을 제안하되 '선택적'이나 '원저자에게 맡김' 또는 '승인과 무관' 같은 접두어를 이용해 자신이 제안한 내용이 리뷰의 승인에 반드시 필요한 것은 아님을 표시해두자. 반드시 수정이 필요한 사항과 제안사항은 구분하자. 그렇지 않으면 원저자는 여러분의 의도를 제대로 파악하기 어려울 것이다.

`nit:`와 같읕 접두어를 쓴 예시를 보여주기도함.

### p204
> 기능 브랜치 기반 개발은 트렁크의 코드가 사용자에게 릴르스하기엔 너무 불안정해서 트렁크를 안정화시키는 동안 개발자가 기능 개발을 수행할 수 없는 경우에 사용하는 방법이다. 고객이 각자 다른 버전의 소프트웨어를 사용하는 경우에 보편적으로 기능 브랜치 기반 개발 전략을 채택한다. 서비스 지향 시스템(service-oriented systems)은 일반적으로 트렁크 기반 개발 전략을 채택한다.
>
> 가장 보편적인 기능 브랜치 전략은 2010년 빈센트 드리센이 소개한 깃플로(Gitflow)라고 부르는 전략이다.

(의견) Git-flow는 필요에 따라 팀 브랜치 정책의 종착역은 될수 있지만 시작점으로 권장하고 싶지는 않다. 자세한 의견은 [Git-Flow에 대해서 다시 생각해보기](https://blog.benelog.net/rethink-about-git-flow)라는 글로 따로 정리했다.

### p205
> 사실 빈센트 드리센은 지속적인 통합 및 전달이 가능한 소프트웨어에서도 깃플로를 사용할 수 있도록 원래 작성했던 깃플로 블로그 게시글을 수정했다.

(의견) 번역서 초판에 있는 오역이다. 출판사에 제보해서 [정오표](https://www.onlybook.co.kr/entry/onboarding-errata)에도 반영되었다.

원서에는 아래와 같이 되어 있다.

> In fact, Driesen has amended his original Gitflow blog post to discourage Gitflow use for software that can be continuously integrated and delivered.
(참고로 원서에도 '드리센'의 이름을 'Driessen'에서 s를 하나 빼고 쓴 오타가 있다.)

정오표에는 다음과 같이 고쳐졌다.

> 실제로 드리센은 지속적으로 통합되어 제공될 수 있는 소프트웨어에 대한 Gitflow 사용을 추천하지 않는다고 자신의 원래 Gitflow 블로그 게시물을 수정했습니다.

드리센은 2010년에 썼던 Git-Flow를 소개한 원래의 블로그 글(https://nvie.com/posts/a-successful-git-branching-model/)을 2020년에 서두에 10년만에 회고를 덧붙었다. 그 회고에서 아래와 같이 언급했다.

> If your team is doing continuous delivery of software, I would suggest to adopt a much simpler workflow (like GitHub flow) instead of trying to shoehorn git-flow into your team.

### p212

> 버전 제어 시스템을 릴리스 리포지토리처럼 사용할 수는 있지만 원래 용도라고 보기 어렵다. 버전 제어 시스템에서는 검색이나 배포 관련 기능을 별로 제공하지 않는다. 대규모 배포를 위해 만들어진 시스템이 아니므로 그런 상황에서는 문제를 일으킬 수도 있다. 버전 제어 시스템 머신과 동일한 머신이 개발자 체아크웃, 도구로부터의 요청, 배포 요청을 모두 담당하면 프로덕션 배포에 영향을 미칠 수 있다.

(의견) Node.js나 Go언어의 오픈소스 생태계에서는 GitHub.com을 릴리스 리포지토리처럼 쓰는 관행이 굳어졌다. 하지만 사내에서라면 이를 분리하는 것이 좋다는 저자의 의견에 동의한다. 버전 관리 시스템은 GitHub Enterprise를 쓰더라도 릴리스 저장소는 Nexus나 Artifactory를 쓰는 식이다. 분리하면 두 시스템을 각각 업그레이드하기에도 유리하다.

### p213
> 릴리스는 최대한 자주 수행하자. 릴리스 주기가 늘어지 거짓된 안정감을 심어줄 수 있다. 즉 릴리스 사이의 주지가 길면 변경사항을 테스트할 충분한 시간이 있는 것처럼 느껴지기 때문이다. 실제로 릴리스 주기를 짧게 가져가면 더 안정적인 소프트웨어를 구현할 수 있어 버그가 발견됐을 때 더 쉽게 처리할 수 있다. 매 주기마다 릴리스되는 변경사항의 수가 더 적으므로 각 릴리스의 위험도도 낮아진다.

(의견) 공감한다. 1~2주에 한번 릴리스하는 조직과 한달에 한번 릴리스하는 조직을 비교했을 때 후자의 릴리스가 훨씬 힘겹고 위험한 일이 되는 현상을 몇 번 목격했다. 테스트와 모니터링의 자동화 수준이 높아져야 릴리스의 비용이 적어져서 더 자주 릴리스하게 될 수 있기도하다.

### p212

> 배포를 원자적으로 만드는 가장 쉬운 방법은 기존에 설치된 소프트웨어를 덮어쓰는 것이 아니라 다른 경로에 소프트웨어를 설치하는 것이다. 일단 패키지가 설치된 다음에는 단축 아이콘이나 심볼릭 링크를 이용해 교체하면 된다.

(의견) 많이 쓰던 기법이다. 사내 배포 시스템에서 디폴트로 제공이 되기도한다. 이동욱 님이 발표한 [우아한스프링배치 ](https://youtu.be/_nkJkWVH-mo?t=2452) 발표에서도 이 기법을 응용한 무중단 배포를 소개하고 있다. 배포된 최신 버전 파일로 심볼릭 링크를 교체하고 (`ln -s -f v2.jar app.jar`) readlink 명령어로 그 파일을 실행하는(`java -jar ${readlink ./app.jar`}) 이용하는 방식이다.

### p218
링크드인의 사례 '위키에 의한 배포'. 서비스 간의 배포 의존성이 있어서 릴리스 회의, 위키 페이지 배포 정보 정리, IRC 채팅을 통해 소통하고 새벽까지 배포가 진행되었음. 이후 서비스들을 독립적으로 배포 가능하도록 하여 배포 자동화 수준을 높힘.

### p219
> 한 번에 모조리 새 코드로 전환하는 일은 위험하다. 테스트를 아무리 많이 해도 버그 발생 가능성을 없앨 수는 없으며 한 번에 모든 사용자에게 코드를 롤아웃하면 모두가 동시에 문제를 겪을 수 있다. 따라서 변경 사항을 점진적으로 롤아웃하고 시스템 상태 지표를 모니터링 하는 편이 좋다.

(의견) 규모가 있는 시스템을 변경하는 개발자라면 절실하게 읽어야할 문장이다.

### p221 ~ p222
기능 플래그(feature flag) 혹은 기능 토글(feature toggle)에 대한 설명

> 데이터베이스 스키마 변경 같은 일부 변경 사항은 점진적으로 롤아웃할 수가 없으므로 특별히 더 주의해야 한다.

> 또한 완전히 롤아웃됐거나 더 이상 사용하지 않는 기능 플래그는 반드시 정리하자. 기능 플래그 때문에 어지럽혀진 코드는 그 의미를 유추하기도 어려울 뿐더러 버그도 유발한다. 예를 들어 오랜 시간동안 켜져 있던 기능을 꺼버리면 재앙 수준의 문제가 발생하기도 한다. 기능 플래그를 정리하는 것도 훈련이 필요하다. 나중에 플래그를 제거할 티켓을 미리 만들어두자.

(의견) 이또한 절실하게 새겨두어야 할 문장이다.

### p222 ~ p223
카나리 배포와 블루그린 배포 개념 설명

### p227
Dark launching 소개

* 마틴 파울러의 설명 : https://martinfowler.com/bliki/DarkLaunching.html
* 신구 시스템 비교 오픈소스 Diffy : https://github.com/opendiffy/diffy

### p233

> 긴급대응을 맡은 온콜 개발자는 일정에 따라 교대로 역할을 맡는다. 교대 주기는 하루 정도로 짧을 수도 있지만 대부분 1~2주 정도가 보편적이다. 자격을 갖춘 개발자는 모두 이 교대 업무에 참여한다. 팀에 새로 합류했거나 필요한 스킬이 부족한 인력은 보통 몇 번 정도 온콜 업무에 주 담당자의 '보조(shadow)' 역할을 맡아 업무 요령을 배운다.

### p239
> 온콜 업무 동안 수행하는 일은 이슈 트래커나 팀의 온콜 로그에 기록해야 한다. (중략) 질문과 장애를 고그에 기록해두면 추후에도 누구나 참고할 수 있는 검색 가능한 지식창고를 구축할 수 있다.
>
> 슬랙 같은 채팅 채널을 이용해 운영 장애와 지원 업무를 소화하는 회사도 있다. 채팅은 의사소통에는 좋은 도구지만 나중에 찾아 읽기가 어려우므로 모든 사항을 티켓이나 문서로 요약해두자.

### p250
아틀란시안의 포스트모텀 문서 소개

* 가이드 : https://www.atlassian.com/incident-management/handbook/postmortems
* 템플릿: https://www.atlassian.com/incident-management/postmortem/templates
     * 징후, 실수, 영향도, 인지, 대응 방안, 복구 방안, 시간별 대응 기록, 근본 원인, 장애를 통해 알게된 사항, 필요한 조치 사항 등

> 포스트모텀 문서에서 가장 중요한 부분은 근본 원인 분석(root-cause analysis, RCA)절이다. 근본 원인 분석은 '어째서?'라는 질문을 5번 던져 수행한다. (중략) 여기서 5라는 숫자는 절대적인 것이 아니며, 대부분 5번 정도 반복해 생각하다 보면 근본 원인을 찾게 된다.

### p255
> 간혹 엔지니어 중에는 경험을 쌓을수록 반사적으로 '소방관' 역할을 맡는 이도 있다. 소방관 역할에 뛰어난 엔지니어는 팀 에선물 같은 존재가 되기도 한다. 즉 상황에 어려워질 때마다 소방관에게 부탁하기만 하면 모든 문제가 해결된다고 팀원 누구나가 생각하는 것이다. 하지만 소방관에게 의지하는 것은 결코 좋은 징후가 아니다. 모든 이슈에 끊임없이 개입하게 되는 소방관은 결국 계속해서 온콜 업무를 수행하는 것이나 다름 없다. 이 시간이 길어지고 스트레스가 쌓이면 결국 번아웃에 이른다. 또한 소방관 엔지니어는 끊임없이 방해를 받기 때문에 프로그래밍이나 설계 업무에도 어려움을 겪는다. 그리고 소방관에 의존하는 팀은 스스로 필요한 전문성이나 트러블슈팅 능력조차 키울 수 없다. 영웅 심리에 휩싸인 소방관은 항상 주변에 해결해야 할 일이 산적해 있으므로 중요한 기반 문제는 오히려 뒷전으로 제쳐둘 수도 있다.

### p270
> 문서화는 여러분이 모르는 것을 드러내는 방법이기도 하다.

> 설계를 문서화하면 피드백을 요청하기도 쉬워진다.

### p311
데이터베이스 스키마 마이그레이션 도구인 Liquibase 등을 소개함.

> 데이터베이스와 애플리케이션 수명주기를 결합해서는 안 된다. 애플리케이션 배포 과정에서 스키마를 마이그레이션하는 것은 위험하다.

(의견 + 경험 공유) 의도한 바은 아니지만 JPA의 스키마 관리 기능이 운영환경에서 실행되어서 발생하는 장애를 종종 전해듣는다. 스프링부트의 `spring.jpa.hibernate.ddl-auto` 같은 옵션도 Local PC에 DB가 따로 설치되어 있거나 Embeded DB를 쓸때만 활성화해야 한다고 생각한다. 공용 개발 DB에서부터는 Liquibase와 같은 스키마 관리 도구를 활용하는 것이 좋다. 공용 개발 DB라도 여러 개가 있는 것이 다양한 테스트를 하는데 유리하고, 개발 DB가 여러개가 되면 스키마 관리 도구의 필요성이 높아진다. Oracle 등 개발자가 여러 인스턴스를 설치하는데 제약이 있는 DB를 오랫동안 써 온 개발자는  이런 도구의 필요성을 느끼거나 적용할 수 있는 기회를 얻기가 어려울 수도 있다.

운영DB는 DBA가 따로 SQL파일을 실행해서 스키마를 반영하는 회사라도 Liquibase는 충분히 사용 가능하다.
Liquibase는 오프라인 지원 기능이 있어서 실제 DB에 스키마 변경을 실행하지 않고 DDL을 파일로 뽑아낼수도 있다.
예를 들어 스키마 버전 1.0.0-RC1과 1.0.0-RC2 버전 사이에 변경된 컬럼을 반영하는 DDL을 담은 .sql파일을 뽑을 때는 아래 명령어로 가능하다.

```
rm target/release.csv
mvn liquibase:updateSQL -Dliquibase.url='offline:mysql?changeLogFile=target/release.csv' -Dliquibase.toTag=1.0.0-RC1
mvn liquibase:updateSQL -Dliquibase.url='offline:mysql?changeLogFile=target/release.csv' -Dliquibase.toTag=1.0.0-RC2
```

### p319
> 아이러니하게도 애자일 방법론이 보편화되면서 일부 조직에서 애자일 전문가, 자격증, 개발방법론 컨설턴트 등이 넘쳐났다. 사람들이 '애자일을 수행'하는 '올바른' 방법에 집착하다보니 '절차와 도구보다는 각 개인 그리고 서로 간의 상호작용'이라는 가장 첫 번째 원칙이 훼손되는 현상도 나타났다.

### p321
> 칸반은 장기적 프로젝트가 아니라 여기저기서 쇄도하는 요청을 즉시 처리한는 지원 엔지니어나 사이트 신뢰성 엔지니어링 같은 팀에 적합하다.

### p332
중장기 계획을 위한 로드맵 수립

> 로드맵을 통해 모든 사람은 팀이 만들고 있는 것에 대한 장기적인 비전을 생각해보게 된다. (중략) 아직 한참 남은 분기는 조금 덜 구체적이어도 괜찮지만, 곧 다가올 분기는 최대한 정확해야 한다.

### p338
엔지니어링 매니저의 역할 설명

> 엔지니어링 관리자인 팀장은 직원을 보살피고 제품과 절차도 관리하며, 팀을 구축하고 엔지니어를 코칭하고 성장을 도우며 원활한 대인관계를 유지할 수 있도록 관리한다.

### p343

> 이미 친분관계가 형성됐다고 해서 일대일 회의를 대신할 수는 없다. 일대일 회의를 열 수 없을 정도로 바쁜 팀장이라면 관리자로서 자격이 없을지도 모른다.

### p344
PPP 회의 소개. 진척사항(Progess), 계획(Plan), 문제(Problem)

### p346
OKR 설명

> 핵심 결과를 할일 목록처럼 활용해서는 안 된다. 핵심 결과는 어떤 일을 어떻게 '할 것'인지가 아니라 어떤 일이 완료됐음을 어떻게 '판단할지'에 대한 것이어야 한다. 목표를 이루는 방법은 수없이 많으며 OKR 때문에 특정 계획에 갇혀서는 안 된다.

### p362
시니어 엔지니어의 역할

> 주니어 엔지니어는 기능을 구현하고 태스크를 완료하는 반면 시니어 엔지니어는 불확실성과 모호성을 주로 다룬다.

### p369

> 시니어 엔지니어는 과거 경험을 활용해 의사결정을 내린다. 이직을 자주 하면 여러분의 결정이 장기적으로 어떻게 작용하는지 확인할 길이 없어 시니어 엔지니어로서 필요한 직관을 늘리는 데 방해가 된다.

### p371

> '수면이 개발 성과에 미치는 영향에 대한 연구(Need for Sleep: The Impact of a Night of Sleep Deprivation on Novice Developers' Peformance)(IEEE Transactions on Software Engineering, 2020)에 따르면 '하룻밤 수면 부족으로 인해 품질은 50%나 감소한다'.

해당 논문은 https://arxiv.org/pdf/1805.02544.pdf 에서 볼 수 있다.

## 추천자료
이 책에서는 각 장의 끝무렵에 '레벨업을 위한 읽을 거리'로 해당 장에서 다룬 주제를 더 깊이 있게 학습하는데 도움이 되는 자료를 추천했다.

여러 번 언급되는 구글의 SRE 관련 책들은 https://sre.google/books/ 에서 무료로 열람도 가능하다.

### 2장 역량을 높이는 의식적 노력
- (책)[프로그래머의 길, 멘토에게 묻다](https://www.yes24.com/Product/Goods/4045732)
- (책)[나는 왜 도와달라는 말을 못할까: 부담은 줄이고 성과는 높이는 부탁의 기술](https://www.yes24.com/Product/Goods/95735260)
- 짝 프로그래밍
    - (책)[익스트림 프로그래밍](https://www.yes24.com/Product/Goods/2126201)
    - (웹)[On Pair Programming](https://martinfowler.com/articles/on-pair-programming.html)
- 가면 증후군이나 더닝 크루거 효과에 대한 참고자료
    - (책)자존감은 어떻게 시작되는가: 당신의 인생을 결정짓는 자세의 차이
        - [종이책](https://www.yes24.com/Product/Goods/36962337)
        - [전자책](https://play.google.com/store/books/details/%EC%97%90%EC%9D%B4%EB%AF%B8_%EC%BB%A4%EB%94%94_%EC%9E%90%EC%A1%B4%EA%B0%90%EC%9D%80_%EC%96%B4%EB%96%BB%EA%B2%8C_%EC%8B%9C%EC%9E%91%EB%90%98%EB%8A%94%EA%B0%80?id=IFcxDwAAQBAJ)

### 3장 코드와 함께 춤을: 레거시 코드에 임하는 우리의 자세
- (책)[레거시 코드 활용 전략: 손대기 두려운 낡은 코드, 안전한 변경과 테스트 기법](https://www.yes24.com/Product/Goods/64586851)
- (책)[The Legacy Code Programmer's Toolbox: Practical Skills for Software Professionals Working with Legacy Code](https://www.amazon.com/Legacy-Code-Programmers-Toolbox-Professionals/dp/1691064130)
- (책)[리팩터링 2판: 코드 구조를 체계적으로 개선하여 효율적인 리팩터링 구현하기 ](https://www.yes24.com/Product/Goods/89649360)
- (책)[맨먼스 미신](https://www.yes24.com/Product/Goods/16928943)

### 4장 운영 환경을 고려한 코드 작성: 개발환경과 프로덕션 환경은 엄연히 다르다.
- (책)[Code Complete 코드 컴플리트 2: 더 나은 소프트웨어 구현을 위한 실무 지침서](https://www.yes24.com/Product/Goods/44130507) : 8장에서 방어적 프로그래밍에 대해서 다룸.
- (책)[Clean Code: 소프트웨어 장인 정신](https://www.yes24.com/Product/Goods/11681152) : 7장과 8장에서 예외처리와 경계에 대해서 다룸
- (웹)[The Amazon Builders' Library](https://aws.amazon.com/builders-library/)
- (책)[SRE를 위한 시스템 설계와 구축: 구글이 공개하는 SRE 모범 사례와 설계, 구현, 운영 노하우](https://www.yes24.com/Product/Goods/105804670)
- (책)[사이트 신뢰성 엔지니어링: 구글이 공개하는 서비스 개발과 운영 노하우](https://www.yes24.com/Product/Goods/57979286)

### 5장 피할 수 없는 코드 의존성의 관리: 복잡한 프로그램을 짜봐야 비로서 깨닫는 의존성이 진실

- (웹)[시맨틱 버저닝 스펙](https://semver.org/)
- (웹)[PEP 440 – Version Identification and Dependency Specification](https://peps.python.org/pep-0440/)

### 6장 테스트! 개발자의 든든한 지원군
- (책)[단위 테스트: 생산성과 품질을 위한 단위 테스트 원칙과 패턴](https://www.yes24.com/Product/Goods/104084175)
- (책)[테스트 주도 개발](https://www.yes24.com/Product/Goods/12246033)
- (책)[실용주의 프로그래머 ](https://www.yes24.com/Product/Goods/107077663) : 속성 기반 테스팅(Property based testing)절 살펴보기
- (책)[탐험적 테스팅: 배우고 통찰하며 개선하는 소프트웨어 테스트](https://www.yes24.com/Product/Goods/14829054)

### 7장 올바로 주고받는 코드 리뷰: 원만한 팀 협업과 높은 코드 품질을 목표로
- (웹)[구글의 Code Review Developer Guide](https://google.github.io/eng-practices/review/)
- (책)[하버드 피드백의 기술: 밀어붙이는 피드백에서 끌어당기는 피드백으로](https://www.yes24.com/Product/Goods/14759898) ([Google play 이북](https://play.google.com/store/books/details/%EB%8D%94%EA%B8%80%EB%9F%AC%EC%8A%A4_%EC%8A%A4%ED%86%A4_%EC%89%B4%EB%9D%BC_%ED%9E%8C_%ED%95%98%EB%B2%84%EB%93%9C_%ED%94%BC%EB%93%9C%EB%B0%B1%EC%9D%98_%EA%B8%B0%EC%88%A0?id=6RirBAAAQBAJ))

### 8장 고객 앞으로! 소프트웨어 전달: 마침내 프로덕션 환경에 안착시킬 소프트웨어의 종착지
- (책)[팀을 위한 Git: Git 워크플로우를 효율적으로 만드는 사용자 중심 접근법](https://www.yes24.com/Product/Goods/33057253) (Yes24 전자책)
- (책)[Continuous Delivery: 신뢰할 수 있는 소프트웨어 출시](https://www.yes24.com/Product/Goods/11406822)
     - 번역판 초판에는 이 책 제목이 '신뢰할 수 있는 소프트웨어 출시' 였으나 중쇄를 하면서 원서와 동일하게 제목이 바뀌었다고 함.([박성철 님의 관련 댓글](https://www.facebook.com/fupfin.geek/posts/pfbid02ksHoMdnvhkJkN9xWS4qQimt541smxX3oscttadaYVMHLxtQ6CZtkKsHEw82LjXs3l?comment_id=328411842995894)) '개발자 온보딩 가이드'에서는 번역판 초판의 제목으로 표기되어 있어 있음.
- (책)[사이트 신뢰성 엔지니어링: 구글이 공개하는 서비스 개발과 운영 노하우](https://www.yes24.com/Product/Goods/57979286) : 8장에 릴리스 엔지니어링 참조
- (웹)[Amazon Builders' Library](https://aws.amazon.com/ko/builders-library/)
- (책)[Release의 모든 것 - 대규모 웹 분산 시스템을 위한 운영 고려 설계](https://smartstore.naver.com/yes24book/products/9565539174) (번역서 2판. 2023년 11월 출간)
    - 번역서 1판 : [Release it: 성공적인 출시를 위한 소프트웨어 설계와 배치](https://www.yes24.com/Product/Goods/2753365) (2007년 출판)
    - 원서 2판 : [Release It!: Design and Deploy Production-Ready Software](https://www.amazon.com/Release-Design-Deploy-Production-Ready-Software/dp/1680502395/)(2018년 출간)
    - 2판의 번역서도 현재 한빛미디에서 준비 중에 있다고 함.

### 9장 긴급대응 온콜 업무

- (웹)[What happens when the pager goes off?](https://increment.com/on-call/when-the-pager-goes-off/) : 책에서 발췌한 장애 대응 5단계
- (책)[사이트 신뢰성 엔지니어링: 구글이 공개하는 서비스 개발과 운영 노하우](https://www.yes24.com/Product/Goods/57979286)
    - 4장: SLI, SLO를 직접 정의해야할 때 참조
    - 11장, 13장, 14장, 15장 : 온콜, 비상 대기, 장애 처리, 포스트터모텀

### 10장 견고한 소프트웨어를 위한 기술 설계 절차
- [동영상][Hammock Driven Development - Rich Hickey](https://www.youtube.com/watch?v=f84n5oFoZBc) : 복잡한 소프트웨어 설계 과정을 가장 잘 설명한 자료라고 소개됨.
- (웹)대규모 오픈소스 프로젝트의 설계 과정
    - [파이썬 개선 제안(PEP)](https://github.com/python/peps)
    - [카프카 개선 제안(KIP)](https://cwiki.apache.org/confluence/display/kafka/kafka+improvement+proposals)
    - [러스트 검토 요청(RFCs)](https://github.com/rust-lang/rfcs)
- (웹)[Effective Software Design Documents](https://wecode.wepay.com/posts/effective-software-design-documents) : 위페이가 설계를 수행하는 방법과 그 방법이 어떻게 개선돼왔는지를 설명
    - [설계 문서 템플릿](https://github.com/wepay/design_doc_template)
- (책)Elements of Style : 영어 글쓰기에 대한 유명한 책으로 번역판도 여러번 나왔다.
     - [글쓰기의 요소(삽화판)](https://product.kyobobook.co.kr/detail/S000001729444) (2016년 출판, 장영준 역) : '개발자 온보딩 가이드'에서 소개한 판인데 현재 품절이라 중고로만 구할 수 있다. [Yes24에서 원서](https://www.yes24.com/Product/Goods/74241463)가 같은 삽화가 들어간 판으로는 배송비 고려하면 가장 싸게 구할 수 있는 경로인듯하다.
     - [글쓰기의 요소](https://play.google.com/store/books/details/%EC%9C%8C%EB%A6%AC%EC%97%84_%EC%8A%A4%ED%8A%B8%EB%A0%81%ED%81%AC_2%EC%84%B8_%EA%B8%80%EC%93%B0%EA%B8%B0%EC%9D%98_%EC%9A%94%EC%86%8C) (2016년 출판. 김영일 역, 전자책)
    - [영어 글쓰기의 기본](https://www.yes24.com/Product/Goods/2746329) (2007년 출판, 조서연 공역) : 번역서와 원서가 한권으로 묶여서 나온 판이다. 현재도 구매 가능하다. 역자가 쓴 저서인 [영어 글쓰기의 기본 2](https://www.yes24.com/Product/Goods/4671236)도 있다.
- (책)[글쓰기 생각쓰기](https://www.yes24.com/Product/Goods/2774464)
- (웹)폴 그레이엄(Paul Grahm)의 글쓰기에 대한 기고
    - [How to Write Usefully](http://www.paulgraham.com/useful.html)
    - [Write Like You Talk](http://www.paulgraham.com/talk.html)

### 11장 소프트웨어 수명주기를 고려한 진화하는 아키텍처 구현
- (책)진화적 아키텍처: 피트니스 함수, 거버넌스 자동화를 활용해 생산성 높은 소프트웨어 구축하기
    - [종이책](https://www.yes24.com/Product/Goods/121961003)
    - [전자책](https://play.google.com/store/books/details/%EB%8B%90_%ED%8F%AC%EB%93%9C_%EC%A7%84%ED%99%94%EC%A0%81_%EC%95%84%ED%82%A4%ED%85%8D%EC%B2%98?id=6w_UEAAAQBAJ)
    - '필독! 개발자 온보딩 가이드' 본문에서는 원서가 소개되어 있는데, 2023년 8월에 번역판이 출판되었다.
- (책)[도메인 주도 설계 구현: Implementing Domain-Driven Design](https://www.yes24.com/Product/Goods/25100510)
- (책)[A Philosophy of Software Design, 2ED](https://www.amazon.com/Philosophy-Software-Design-2nd-ebook/dp/B09B8LFKQL/)
- (책)[Elements of Clojure](https://www.amazon.com/Elements-Clojure-Zachary-Tellman/dp/0359360580/)
- [동영상]["Simple Made Easy" - Rich Hickey (2011)](https://www.youtube.com/watch?v=SxdOUGdseq4) : 간결성, 복잡성, 손쉬움, 좋은 소프트웨어를 구현하는 방법에 대해서 설명
- (책)[Data Mesh](https://www.amazon.com/Data-Mesh-Zhamak-Dehghani-ebook/dp/B09V4KWWJ8/)
- (책)[데이터 중심 애플리케이션 설계: 신뢰할 수 있고 확장 가능하며 유지보수하기 쉬운 시스템을 지탱하는 핵심 아이디어](https://www.yes24.com/Product/Goods/595ref=sr_1_1?crid=3UIMYGOHHDTLL&keywords=data+mesh&qid=1698069866&sprefix=data+me%2Caps%2C261&sr=8-166585)

### 12장 효율적인 협업을 위한 애자일 문화
- (웹)[Principles behind the Agile Manifesto](https://agilemanifesto.org/principles.html)
- (웹)[Atlassian의 애자일 문서](https://www.atlassian.com/agile)

### 13장 관리자, 팀장, 상사와 함께 일하기
- (책)개발 7년차, 매니저 1일차: 개발만 해왔던 내가, 어느 날 갑자기 ‘팀’을 맡았다!
    - [종이책](https://www.yes24.com/Product/Goods/87336637)
    - [전자책](https://play.google.com/store/books/details/%EC%B9%B4%EB%AF%B8%EC%9C%A0_%ED%91%B8%EB%A5%B4%EB%8B%88%EC%97%90_%EA%B0%9C%EB%B0%9C_7%EB%85%84%EC%B0%A8_%EB%A7%A4%EB%8B%88%EC%A0%80_1%EC%9D%BC%EC%B0%A8?id=Qbf_DwAAQBAJ)
- (책)[An Elegant Puzzle: Systems of Engineering Management](https://www.amazon.com/Elegant-Puzzle-Systems-Engineering-Management-ebook/dp/B07QYCHJ7V/)
- (책)일의 99%는 피드백이다: 하버드 협상연구소에서 알려주는 대화의 기술
    - [종이책](https://www.yes24.com/Product/Goods/102003851)
    - [전자책](https://play.google.com/store/books/details/%EB%8D%94%EA%B8%80%EB%9F%AC%EC%8A%A4_%EC%8A%A4%ED%86%A4_%EC%89%B4%EB%9D%BC_%ED%9E%8C_%EC%9D%BC%EC%9D%98_99_%EB%8A%94_%ED%94%BC%EB%93%9C%EB%B0%B1%EC%9D%B4%EB%8B%A4?id=UccyEAAAQBAJ)
- (책)[Managing Up: How to Move up, Win at Work, and Succeed with Any Type of Boss](https://www.amazon.com/Managing-Up-Move-Work-Succeed-ebook/dp/B07BB4QFDF/) : 상사나 관리자의 개성을 어떻게 고려해야하는지, 엄격한 관리자에 대응하는 법, 이직하는 방법 등을 다룸.
- (책)[하이 아웃풋 매니지먼트: 어떻게 성과를 높일 것인가](https://www.yes24.com/Product/Goods/61333181)
