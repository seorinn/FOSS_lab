# 0901 노트필기 - 오전
```
> ssh oss105@git.ajou.ac.kr
> ssh oss105@ssh.ajousw.kr
> passwd: 암호 바꾸는 명령
> ls -al
> mkdir 디렉토리명: ‘디렉토리명’이라는 디렉토리(폴더) 생성
> cd 디렉토리명
> vi hello.c: hello.c라는 c파일 생성
INSERT: 현재 모드
:wq로 나오기
```
-----vi editor 강의 보기: 쓸 줄 알아야 함-----
```
hjkl좌하상우 u되돌리기
cc hello.c: hello.c 컴파일
> ls -l: 
a.out = 실행 파일
> a,out: c파일 실행
> ./a.out: 현재 디렉토리 아래에 있는 a.out 실행
> cat 파일명: 파일 보기(hello.c)
> echo: c의 printf와 같음 

> a.out
> echo $?
> cat 111: 파일을 보는 명령이 아니라 concatenation 파일 두개를 붙임
```
```
중간고사에 나와요!
a.out을 실행했는데 a.out가 잘 실행됐으면 true, 아닐 경우 false를 출력하세요: 
> if a.out; then echo true; else cho false; fi
리눅스에서는 true가 0, false가 1
```
```
> ls
> ls -l
> ls -a
> ls -al: ‘.’(점)으로 시작하는 파일 (hidden file) 을 보여줌 (a = all)
> man ls: man = manual, ls [option]… [file]…, [] = 생략가능
> ls -ali: 
```

