Date: 2010-11-28
Title: Refactoring Database
Slug: refacotoring_database
Tags: db, refactoring

## 인상깊은 부분


### p16
> 디자인은 한번 굳어버리는 순간 바로 구식이 된다 -프레드브룩스

### p81
> 테이블이 사용 중일 때는 위험을 최소화하기 위해 컬럼 제거에 대한 시간 계획이 필요하다. 다른 방법으로는 ALTER TABLE 명령의 SET UNUSED 옵션을 이용하여 컬럼을 사용되지 않는 컬럼으로 표기하는 것이다. SET UNUSED 명령은 보다 빠를 뿐만 아니라 위험을 최소화할 수 있다.

### p205
> 데이터 마이그레이션 기법 : 오라클의 SQLLDR이나 bul loader와 같은 데이터베이스 유틸리티를 이용할 수 있다.
