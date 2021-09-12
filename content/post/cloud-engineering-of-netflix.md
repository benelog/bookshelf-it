---
date: 2021-09-12
title: 넷플릭스의 클라우드 엔지니어링
tags: [cloud, architecture]
---

## 정리
Netflix의 도구들

- [Eureka](https://github.com/Netflix/eureka) : Service Discovery
- [Hystrix](https://github.com/Netflix/Hystrix) : Circuit breaker
- [Ribbon](https://github.com/Netflix/ribbon) : Client side load balancing
- [Archaius](https://github.com/Netflix/archaius) : Library for configuration management API
    - runtime에 설정 변경 지원
- [Prana](https://github.com/Netflix/Prana) : Sidecar
- [Raigad](https://github.com/Netflix/Raigad) : ElasticSearch 관리도
- Chaos Engineering
    - [The Netflix Simian Army](https://netflixtechblog.com/the-netflix-simian-army-16e57fbab116)
- key-value 저장소
    - [EVCache](https://github.com/Netflix/EVCache) : Memcached 기반의 분산 메모리캐쉬
    - [Moneta](https://github.com/moneta-rb/moneta) : A unified interface for key/value stores
- 모니터링
    - [Atlas](https://github.com/Netflix/atlas) : Time series 데이터 관리
    - [Servo](https://github.com/Netflix/servo) : Application Monitoring Library
    - [Spectator](https://github.com/Netflix/spectator) : About
      Client library for collecting metrics
    - [Vizceral](https://netflixtechblog.고com/vizceral-open-source-acc0c32113fe) : 트래픽 흐름 시각화 도구
    - [Turbine](https://github.com/Netflix/Turbine) : Server Side Event Stream Aggregator
- [Titus](https://netflix.github.io/titus/) : 컨테이너 플랫폼

https://netflix.github.io/ 도 참조

## 인상 깊은 단략

### p51
> 한가지 추가적인 것은 피보탈 트래커에서는 기본적으로 '버그' 해결을 팀의 속도에 포함하지 않는다.
> 여기에는 중요한 사상이 있는데, '버그의 해결'은 기능의 개선이 아니다.
> 버그가 많아진다는 것은 무언가 일하는 방식 또는 어딘가에 문제가 있음을 의미하는 것이지, 해당 팀이 서비스에 필요한 기능을 잘 만들고 배포하고 있다는 의미가 아니기 때문이다.

### p72
> 그래서 이전의 부품을 두 개씩 만들어 '죽지 않는' 서비스를 만드는 대신, 망가져도 되는 하드웨어를 여러 개 준비하는 방법을 택하는 분산 시스템 구성 방법이 함께 발전한다.

### p87
카오스 몽키, 카오스 릴라, 카오수 콩 소개

### p145

Spectator의 이름 규칙 : https://netflix.github.io/spectator/en/latest/intro/conventions/

### p153
Vizceral demo : https://www.youtube.com/watch?v=PoU03G4WuHI

### p165-p173
* Moneta는 mecached 혹은 RocksDB(SSD 사용)에 데이터를 저장하는 구조.
* 다른 Regision의 Cold 데이터는 SSD에 저장.
* 70%에 가까운 비용 절감 효과.

### p178
'장애를 끌어안다' 철학.

### p179
> 어느 넷플릭스 엔지니어는 "아마존웹서비스를 우리는 카오스 몽키 as a 서비스"라고 불러요. 우리가 카오스 몽키로 장애를 마든 것보다 그들이 만든 장애로 인해 중단된 서버가 훨씬 많기 때문이죠"라는 종담을 하기도 했다.

### p184
https://www.networkworld.com/article/3178076/why-netflix-didnt-sink-when-amazon-s3-went-down.html 기사 소개

### p211
> 아마존이 가지고 있는 중요한 사상 중 하나는, '장기적 가치"다.
> 아마존의 사장인 제프 베조스는 "오늘 우리 매출은 이미 5년 전에 정해진 것이다"라고 말할 정도로 장기적 가치에 집중한다.

### p214
> 대부분 회사에서 임직원 스스로에게 목표를 설정하라고 하면 '이룰 수 있는 정도'로 제출한다.
> 아마 목표 달성에 실패하면 돌아올 인사상 불이익을 피하려고 누구나 그렇게 설정할 것이다.
>
> 하지만 아마존에서는 이런 '일반적인 목표'를 세우는 것은 별로 권장되지 않는다.
> 매니저와의 상의를 통해 이루기 힘들 것 같은 매우 높은 목표를 세우는 방식을 권장한다.

### p220
2피자팀

### p277
https://netflixtechblog.com/a-microscope-on-microservices-923b906103f4 소개
