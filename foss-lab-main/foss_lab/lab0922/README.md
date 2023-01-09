# 0922 노트필기 - 오전

```
> mkdir lab0922 ; cd lab0922: 이거 끝나고 이거 하세요x 실제로는 순서는 있지만 순서대로 일어난다는 보장이 없음. 그래서 에러날 수 있음.
> mkdir lab0922 && cd lab0922
&&: 앞의 명령이 트루이면 뒤의 명령 실행
> cd lab0922 || mkdir lab0922
||: 앞의 명령이 펄스이면 뒤의 명령 실행
> man 했을 때 안나오는 명령은 shell의 built in 일 수 있음 -> info나 help로는 나옴
> ls -la 했을 때 숫자의 의미: 그 때 그 때 다른다 디렉토리일 때는 이 안에 들어있는 디렉토리의 수 링크일 때는 그 안에 들어있는 링크 수 의미
```
```
> echo hwanyong lee & -> bg 실행
‘&’가 나오게 실행하려면
> echo hwanyong lee “&”
> echo -e aaaaa \&: -e = escape
결과: aaaaa &
```
```
> echo Hwanyong > name
> echo Lee >> name: 꺾쇠 두개는 추가의 의미
> cat name
결과:
Hwanyong
Lee

한 줄로 나타내고 싶을 땐 -n (newline x)
```
```
> echo -n Hwnyong > name: clobbing(덮어씌우기)
> echo Lee >> name
결과:
HwanyongLee

-n이 출력되게 echo 하는 방법은 거의 없음
> echo “ -n”: -n앞에 띄어쓰기 있음
```
```
/*
help (bash): display information about builtin commands
man (1): manual of commands (if installed)
info: read info document (if installed)

login (1): begin session on the system
logout (bash): exit login shell
exit (bash): exit the shell

whoami (1): print effective userid
date (1): print or set the system date and time
echo (1): display a line of text
ls (1): list the directory contents
*/

> date: 현재 날짜 시간, 타임존 보여줌. 내가 지금 어떤 타임존에 있는지 보여준다하면 감점. 그 컴퓨터에 설정되어 있는 시간대 보여준다로 써야함.


/*
home directory: home of user account
working directory: current directory
. : current directory
.. : parent directory
~ : $home directory
~user: user’s home directory

pwd (1): print current working directory
mkdir (1): make directory
rmdir (1): remove directory
cd (bash): change directory
//pushd / popd
du: disk usage 이 디스크가 얼마나 쓰고 있는 지 볼 때. Permission denied일 땐 확인 불가능
(bash)는 change된다
*/
```
//ppt 함수설명이라 필기 생략
```
du의 합을 보고 싶을 때는 
> du -s

리눅스는 트리구조로 되어있어 뿌리는 하나임 
> ls -l std*: std로 시작하는 모든 걸 보여주세요
stderr은 “소프트”링크 유형의 파일이다 (l로 시작)
stdin, stdout, stderr은 root밑에 dev라는 파일에 있다. Proc에 self라는 파일이 있는데 사람마다 self가 다름.
내 프로세스 번호가 self가 돼서 실행할 때 마다 달라짐

터미널을 죽이고 싶으면 
> sh
Shell 실행하고 ps치면 ps는 shell이 실행 shell은 bash가 실행
> exec sh
하면 bash 사라짐
//아이패드 캡쳐함

> file b.out
Stripped는 실행파일안에 장식적인 요소는 디버깅할 때 필요 그것들을 버티고 싶을 때 하드링크
```
