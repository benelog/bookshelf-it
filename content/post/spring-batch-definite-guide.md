---
title: Spring Batch Definite Guide
tags: [java,spring,framework]
date: 2019-09-16
---

## 인상 깊은 단락
Kindle판 기존

### Location 502
> Batch processing, for this book’s purposes, is defined as the processing of a finite amount of data without interaction or interruption.

### Location 506
> A ComputerWorld survey1 in 2012 stated that over 53% of those enterprises surveyed used COBOL for new business development.

### Location 1,186
> The worst part about maintaining batch processes is that when they break, it’s typically at 2:00 a.m., and you’re the one getting the phone call to fix the problem.

### Location 5,273
> A SAX parser would parse the entire file in a single run; the StAX parser allows you to read each section of a file that represents an item to be processed at a time.

### Location: 6,470

>  An ItemProcessor must be idempotent. An item may be passed through it more than once in fault tolerant scenarios.

(번역판 p358 페이지)

### Location: 12,062

> Each test method is required to be public, to be void, and to take zero arguments.

JUnit 5기준으로는 public이 아니어도 된다. Pro Spring Batch에 JUnit4기준으로 기술된 내용을 그대로 옮겨놔서 생긴 오류로 보인다.
