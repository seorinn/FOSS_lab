# 0929 노트필기 - 오전
```
> A=Hwanyong
A라는 variable에 Hwanyong 넣음
> A = Hwanyong: 띄어 쓰면 오류나요
> echo $A: A라는 variable echo
> tail: 맨 앞에 10줄만 보고 싶어요
```
> pwd
결과를 HOME에 넣기

> HOME=/home/course/foss/oss000/foss_lab/lab0929
> pwd
결과: /home/course/foss/oss000/foss_lab/lab0929
```
```
> cd /tmp
> cd: home으로 가는 게 아니라 home variable으로 지정한 디렉토리로 이동

> source hello.sh
> bash hello.sh: 이 경우에 배쉬가 서브쉘로 실행이 됨.

컨트롤 D는 엔드오브파일
```
```
중간고사

어떤 명령을 백그라운드로 실행하고 싶을 땐 명령어 다음에 & 넣음
stderr와ㅏ stdout을 동시에 리디렉션해서 같은 파일에 넣고 싶을 땐 &> 사이에 띄어쓰기하면 안됨
&|안됨 |&해야함
피피티 틀림!!
```
```
> HOME=`pwd`: pwd를 해서 나온 결과를 HOME에 넣음
> touch 파일명: 파일 생성

> ls ; ps > result: ps만 result에 들어감
> { ls ; ps } > result: xxxx 실행은 됨
> { ls ; ps ; } > result: 이렇게 해야함
```
