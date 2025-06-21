---
date: 2025-06-21
title: Real MySQL
tags: [db, 발췌독]
---

![](https://image.yes24.com/momo/TopCate182/MidCate09/18180167.jpg)

http://www.yes24.com/Product/Goods/6960931


## 대용량데이터 처리를 위한 MySQL 최적화
### "useServerPrepStmt=true" 옵션
* MySQL 서버에서 preparedStatement 를 파싱한 정보를 재활용하도록 유도하는  옵션
* MySQL Connector/J에서 useServerPrepStmt 옵션의 기본값은 false
    * 별도의 설정을 하지 않으면 JDBC 드라이버가 PreparedStatement를 서버 측에서 준비(prepare)하지 않고, 클라이언트 측에서 SQL 문장을 완성하여 서버로 전송한다는 의미.
    * PreparedStatement의 ? 파라미터를 실제 값으로 채운 완전한 SQL 쿼리 문자열을 매번 서버로 보내 실행하는 방식
    * "클라이언트 측 PreparedStatement" 또는 "에뮬레이션된 PreparedStatement"
    * 네트워크 호출이 1회만 발생
* MySQL버전 5.1미만에서는 이를 사용하면 MySQL의 쿼리 캐쉬를 쓰지 못하는 단점이 있었으나, 5.1이상에서는 둘다 사용할수 있음.
* useServerPrepStmts=true가 유리한 경우
    * 동일한 쿼리가 매우 빈번하게 반복 실행되는 특정 작업: 예를 들어, 대량의 데이터를 반복적으로 삽입(INSERT)하는 배치(batch) 작업과 같이 한정된 종류의 쿼리가 수백, 수천 번 이상 실행되는 경우에는 서버 측 PreparedStatement의 이점이 큼.
    * MariaDB 10.6 이상 사용 시: MariaDB 10.6부터는 useServerPrepStmts=true일 때 메타데이터 재전송을 피하는 최적화가 도입되어 성능 향상 폭이 더 커졌습니다.
* 참고자료
    * https://dev.mysql.com/doc/connector-j/en/connector-j-reference-configuration-properties.html
    * [Real MySQL](http://www.yes24.com/Product/Goods/6960931?OzSrank=1) 750-753쪽
    * https://vladmihalcea.com/mysql-jdbc-statement-caching/
    * https://tech.kakaopay.com/post/how-preparedstatement-works-in-our-apps/
    * https://johngrib.github.io/wiki/database/mariadb-connector-j/

### 쓰기 성능 높이기 ( rewriteBatchedStatements=true 옵션)
* batchUpdate 쿼리를 합쳐서 성능을 높여줌
* "useServerPrepStmt=true" 옵션과 동시에 사용하면 에러가 발생할 수 있음.
    * 최대한대로 최적화해야한다면  읽기 DataSource와 쓰기 DataSource를 분리할수도.
* 1건 레코드 크기* 운반 건수가
* 합친쿼리의 크기가 MySQL서버의  'max_allowed_packet' 설정값을 넘어가면 에러가 남.
    * 'SHOW VARIABLES LIKE 'max%';'  로 확인 가능
* 'bulk_insert_buffer_size' 설정값에 따라서 성능이 달라질수 있음.
  * connector-j의 8.0.29까지는 'useCursorFetch=true' 또는 `useServerPrepStmts=true` 옵션과 함께 쓰면 rewriteBatchedStatements가 무시된다고 명시되어 있었으나 8.0.30에서는 문서에서 이 제한이 사라졌음. 실제 동작이 언제 바뀌었는지는 확실하지 않음.
      * `useCursorFetch=true`는 `useServerPrepStmts=true`를 강제함.
      * https://dev.mysql.com/doc/relnotes/connector-j/en/news-8-0-30.html
      * https://vladmihalcea.com/mysql-rewritebatchedstatements/
* connector-j의 8.0.28까지는 batchUpdate로 BLOB을 넣으려고 하는 NPE 발생
    * https://camel-context.tistory.com/81
    * https://dev.mysql.com/doc/relnotes/connector-j/en/news-8-0-29.html

### 대용량 데이터 조회를 위한 옵션 파라미터
디폴트옵션들로는 MySQL에서는 JdbcCursorItemReader를 써도 OOM 날 수도 있음. 이를 위한 방법은
디폴트 옵션일때 사용되는 클라이언트사이드 커서는 모든 결과를 다 다운로드함.
이를 해결하기 위해  ResultSet Streaming, 서버 커서 사용할수 있음.

#### ResultSet Streaming
많은 건의 데이터를 한번에 받지 않고 Streaming으로 흘러보내면서 받는 방법
아래와 같이 Statement를 만들어야함.

```
PrepaedStatement statement = con.prepareStatement(sql, ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);
statement.setFetchSize(Integer.MIN_VALUE);
```

'setFetchSize(Integer.MIN_VALUE)'은 JDBC규약과도 어긋남. java.sql.Statement의 javadoc에는 setFetchSize로 지정되는 값은 0보다 작으면 SQLException을 던진다고 적혀 있다.

* OOM이 방어되나 빈번한 통신이 일어나 성능이 느려질수 있음. (100만건이면 100만번 원격 통신)
* 한번에 몇건씩 fetch해 주는지까지는 제어가 안 됨.
* ResultSet이 닫히기 전까지 동일한 Connection에서 다른 쿼리를 실행할 수 없음.
* 참고자료
     * https://dev.mysql.com/doc/connector-j/en/connector-j-reference-implementation-notes.html
     * [Real MySQL](http://www.yes24.com/Product/Goods/6960931?OzSrank=1) 767쪽


스프링 배치에서도 `JdbcCursorItemReader.setFetchSize(Integer.MIN_VALUE)` 로 지정하면 쿼리 결과를 한번에 다운로드 받지 않고 Streaming방식으로 가져감.

```java
		return new JdbcCursorItemReaderBuilder<T>()
			.dataSource(this.dataSource)
			.sql(sql)
			.rowMapper(rowMapper)
			.fetchSize(Integer.MIN_VALUE)
			.verifyCursorPosition(false);
```
`ResultSet.TYPE_FORWARD_ONLY` 옵션은 JdbcCursorItemReader 에 이미 위의 Statement 생성시의 반영되어 있음.

verifyCursorPosition을 default값인 true로 둘 경우 아래와 같은 에러가 발생함

```
peration not allowed for a result set of type ResultSet.TYPE_FORWARD_ONLY.; nested exception is java.sql.SQLException: Operation not allowed for a result set of type ResultSet.TYPE_FORWARD_ONLY.
```

#### 서버 커서
* MySQL 서버쪽에서 쿼리 결과를 담는 임시테이블을 만듬.
* JDBC URL에 "useCursorFetch=true" 옵션으로 가능해짐
    * MySQL 5.0.2 이상에서 사용 가능
    * 기본값이 false라 이 옵션이 없으면 클라이언트 커서만을 사용.
    * useCursorFetch=true이면 useServerPrepStmt도 자동으로 true가 됨.
    * 이 옵션을 쓰면 JdbcCursorItemReader.setFetchSize() 로는 실제 쓸 fetchSize (chunk 크기와 똑같은 값 권장)
* "defaultFetchSize" 옵션
    * 서버 커서를 사용할때 디폴트로 한번에 몇건씩 읽어올지.
    * 기본값이 0. `JdbcCursorItemReader.setFetchSize()`이 지정되어 있지 않으면 클라이언트 커서를 사용
* 참고 자료
    * https://wiki.genexus.com/commwiki/servlet/wiki?4188,Client+and+server+cursors+-+using+MySQL 도 참고
    * [Real MySQL](http://www.yes24.com/Product/Goods/6960931?OzSrank=1) 750-753쪽
