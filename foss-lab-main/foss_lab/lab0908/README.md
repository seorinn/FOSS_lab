# 0908 노트필기
```
중간고사 나옵니다!

> ls -al

> ls -ld lab0914//(d는 디렉토리)lab0914에 접근할 수 있는 커미션을 설명하세요.

```
```
Network file system C로 시작하는거: character device, b로 시작: block device. >>이거 알 수 있는 명령은
> df : display file system
File system: storage를 어떻게 운영할 것인가 결정함
> df -h: h=human read
Swapable: usb
가상의 device도 다 block device
리눅스 파일 시스템은 트리구조 >> 루트가 중요
Mounted on: root file system이라고 할 수 있음
> cd: home directory로 이동
> chmod 700 . :
리눅스 명령어 shell 명령어

> 명령어 + | more: 페이지가 너무 많을 때
> 명령어 + | less: 페이지가 너무 많을 때
> find -name 파일명: 파일 위치 찾기
```
```
중간고사!!

> chmod 숫자 >> 무슨 의미인지!!
> chmod a-x: 모든사람에서 익스큐트 빼기
700, 755, 644, u+x, …
```
```
Shell script: 어떤 명령어를 파일에 넣어 실행할 수 있음 >> .sh file
> source 파일명: 어떤 스크립트 파일을 실행
> bash 파일명: 새로운 shell을 띄워서 스크립트 파일 실행
> ps: 내가 지금 실행하고 있는 프로세스는 무엇인지
> ps -l
> ps -al
> ps -ael
> ps -ael | grep bash: ‘bash’가 들어간 모든 파일
> ps -ael | grep bash | wc: ‘bash’가 들어간 모든 파일의 라인 수(뉴라인 수) / word 수 / 바이트 수
```
