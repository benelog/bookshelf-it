---
title: 스프링 5.0 마이크로서비스
tags: [java,spring,framework, architecture]
date: 2018-11-22
---

## 인상 깊은 단락
2ed

### p76
scale cube

* 참고
    * http://theartofscalability.com/
    * https://microservices.io/articles/scalecube.html
* 요약
    * x축 : 애플리케이션을 복제해서 수평적으로 확장
    * y축 : 서로 다른 기능들을 분리
    * Z축 : 데이터 파티셔닝 또는 샤딩


### p188
https://github.com/Nilhcem/FakeSMTP 를 이용한 테스트 환경 구성

https://github.com/benelog/devnote/blob/master/smtp.adoc 에 관련 도구들을 정리했다.

### p218
> 공유 데이터 모델, 공유 스키마, 공유 테이블은 좋지 못한 방법이며, 마이크로서비스 개발을 재앙으로 이끌 수도 있다. 처음에는 좋은 수도 있지만, 복잡한 마이크로서비스를 개발하다 보면 데이터 모델 사이에 계속 관계를 추가하고, 조인 쿼리를 만들어내게 된다. 이는 단단하게 결합된 물리 데이터 모델이 될 수도 있다.

### p224
> 미래의 요구 사항을 예측하고 시슽템을 만들어도 그것이 미래에도 실제로 경쟁력을 가진다는 보장이 될 수는 없다. 미래 요구 사항에 너무 집중하면 초기 단계부터 많은 투자를 하게 되고 결국 유지 관리 비용의 증가로 이어진다.

### p413
모니터링 도구
