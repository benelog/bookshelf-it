---
date: 2012-08-02
title: 클라우드 컴퓨팅 어플리케이션 아키텍처
tags: [cloud, architecture]
---

## 감상
- 2010년 출판된 책이라서 2012년 현 시점에는 다소 맞지 않는 내용이 있다. 예를 들면 Google App Engine이 Python만 지원한다고 써 있는 내용.

## 관심가는 솔류션
- <http://www.valtira.com/>
- <http://www.opentext.com/> : CMS 솔류션
- <http://mesh.com> : 각종 디바이스 동기화, 원격 제어
- 클라우드 관리 솔류션 : <http://enstratus.com/>, <http://www.rightscale.com/>

## 인상 깊은 내용
### p20
> 마이크로소프트, Xen, VMWare 같은 엔터프라이즈 가상화 기술은 CPU제조업체가 지원하는 하드웨어 지원 가상화 기술을 제공하고, 실제 물리적 서버와 거의 유사한 수준까지 성능을 낸다. (약 90% 수준)

### p24
> 클라우드 인프라스터럭처에서 생명 주기가 긴 노드가 필요한 시스템이 겪는 어려움은 
가상 머신의 평균 무조간 시간(MTBF, Mean Time Between Failures)이 물리적인 하드웨어보다 짧다는 것이다. 즉 더 자주 고장이 난다는 것을 의미한다.

### p119
http://bastille-linux.sourceforge.net/ 언급

### p133
> 불행하게도 데이터베이스 클러스터링은 아주 복잡하고 일반적으로 아주 비싸다.

### p139
식별키 관리, UUID

### p168
침입참지에 쓰이는 OSSEC (https://www.ossec.net/)

### p175
> 대부분의 비즈니스가 겪는 냉엄한 현실은 24시간의 데이터 손실이 제로 다운 타임, 제로 데이터 손실 인프라스트럭처를 유지하는 비용보다 더 작다는 것이다.
