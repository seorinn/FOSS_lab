login: ssh oss105@ssh.ajousw.kr
logout: ctrl d/ exit/ logout

linux file system은 file 구조
git bash 실행되면 mingw라는 작은 linux 생성

> ls
> ls -l
> ls -al

> mv dir2 test_dir
dir2라는 디렉토리를 test_dir 디렉토리로 옮기는 것

> cd 디렉토리명: 해당 디렉토리로 이동
> cp 파일명1 파일명2: 파일1을 파일2로 copy(파일2 = destination)
> rm 파일명: 파일 remove
> rm 디렉토리명: 디렉토리 remove(디렉토리 비어있지 않으면 x) 
-> rm -ir 디렉토리명
> ln 파일명1 파일명2: 바로가기와 비슷(같지 x)
> ln -s 파일명1 파일명2 / 없는 파일명을 링크해도 문제 x. 그래서 symboling. Destination 없어도 o. (l로 시작: 소프트링크 심볼링링크)
> cat 파일명: 파일 내용 보기
> touch 파일명: 파일 만들기 
> chmod ~: change mode

g: group, u: user, o: others

permission 시작
B: block device
C: connector device
L: soft link

chmod -76: user인 이 디렉토리에 owner인 oss000은 읽을 수도 쓸 수도 디렉토리에 들어갈 수도 없음. foss에 들어간 사용자들은 앞에 말한거 가능. 나머지 others는 read write만 하고 디렉토리에 들어갈 수는 없음.

slink1 -> file.txt: 현재 디렉토리의 파일
slink2 -> ../..foss_lab/lab0908/file.txt: 원본 파일

more = less 의미 비슷: 어떤 내용을 한 페이지 씩 보여줌

> echo: 

> ls -al:
> ls -ali:

> df: display file system
> df -h: (human read)

> vi hello.c
> cc hello.c: hello.c 컴파일
> a.out
> ./a.out: 정석

> source lsli
> bash lsli

> ps -ael | grep bash | wc: 줄수 word수 byte수

ls 명령어를 메모리로 로딩하고 cpu에서  실행

ctrl z: stop
ctrl c:

> history: 여태 쳤던 명령어 보여줌
> last: 로그인 기록
> ps
> ps -l
> jobs
> fg: foreground 
> bg: background
> fg %숫자: foreground 
> bg %숫자: background
> kill
> sleep 5 ; ps ~: 5초 뒤에 ps
> bash
> csh

background 돌고있는거 foreground로: 
> sleep 100 &
> fg %1

스탠다드로 사용하는 프로그램은 백그라운드로 돌릴 수 x

0<(= <): stdin
1>(= >): stdout
2>: stderr

redirection

oss105@git:~/foss_lab/lab0915$ vi infile
oss105@git:~/foss_lab/lab0915$ echo 999 > infile
oss105@git:~/foss_lab/lab0915$ a.out < infile
STDOUT: Hello Seorin 999
STDERR: Hello Seorin 999


oss105@git:~/foss_lab/lab0915$ a.out < infile > outfile
STDERR: Hello Seorin 999
oss105@git:~/foss_lab/lab0915$ cat outfile
STDOUT: Hello Seorin 999
oss105@git:~/foss_lab/lab0915$ ls -l
total 36
-rwxr-xr-x 1 oss105 foss 16936  9▒썡 15 11:28 a.out
-rw-r--r-- 1 oss105 foss   180  9▒썡 15 14:20 hello.c
-rw-r--r-- 1 oss105 foss     4  9▒썡 15 14:23 infile
-rw------- 1 oss105 foss     7  9▒썡 15 11:29 lsli
-rw-r--r-- 1 oss105 foss    26  9▒썡 15 14:26 outfile


oss105@git:~/foss_lab/lab0915$ ls -l a.out b.out c.out
ls: cannot access 'b.out': No such file or directory
ls: cannot access 'c.out': No such file or directory
-rwxr-xr-x 1 oss105 foss 16936  9▒썡 15 11:28 a.out

oss105@git:~/foss_lab/lab0915$ ls -l a.out b.out c.out 2> /dev/null
-rwxr-xr-x 1 oss105 foss 16936  9▒썡 15 11:28 a.out


> man: 

a.out 0< infile 1> stdout.txt 2> stderr.txt
0< infile a.out 1> stdout.txt 2> stderr.txt
0< infile 1> stdout.txt 2> stderr.txt a.out


oss105@git:~/foss_lab/lab0915$ a.out &> all.txt
200
oss105@git:~/foss_lab/lab0915$ cat all.txt
STDERR: Hello Seorin 200
STDOUT: Hello Seorin 200
oss105@git:~/foss_lab/lab0915$ cat hello.c
#include <stdio.h>

int main(){
        int a;
        fscanf(stdin, "%d", &a);
        fprintf(stdout, "STDOUT: Hello Seorin %d \n", a);
        fprintf(stderr, "STDERR: Hello Seorin %d \n", a); return a;
}
oss105@git:~/foss_lab/lab0915$ cat all.txt
STDERR: Hello Seorin 200
STDOUT: Hello Seorin 200

buffer 달라서 순서 control 불가능(ERR OUT)

> a.out &> all.txt
888
> cat all.txt
STDERR: Hello Seorin 888
STDOUT: Hello Seorin 888

: 덮어씌우기 = clobing

> set -o noclobber 하면 err


oss105@git:~/foss_lab/lab0915$ a.out >> all.txt
777
STDERR: Hello Seorin 777
oss105@git:~/foss_lab/lab0915$ a.out >> all.txt
666
STDERR: Hello Seorin 666
oss105@git:~/foss_lab/lab0915$ a.out &>> all.txt
222
oss105@git:~/foss_lab/lab0915$ cat all.txt
STDERR: Hello Seorin 200
STDOUT: Hello Seorin 200
STDOUT: Hello Seorin 777
STDOUT: Hello Seorin 666
STDERR: Hello Seorin 222
STDOUT: Hello Seorin 222
oss105@git:~/foss_lab/lab0915$ a.out
34134
STDOUT: Hello Seorin 34134
STDERR: Hello Seorin 34134

oss105@git:~/foss_lab/lab0915$ echo 2137891 > sss ; a.out < sss ; rm sss
STDOUT: Hello Seorin 2137891
STDERR: Hello Seorin 2137891
rm: remove regular file 'sss'? y
oss105@git:~/foss_lab/lab0915$ a.out <<< 88888
STDOUT: Hello Seorin 88888
STDERR: Hello Seorin 88888
oss105@git:~/foss_lab/lab0915$ csh
git:~/foss_lab/lab0915% a.out <<< 888
Missing name for redirect.

[0922]

> free: swap space, memory
> sensors: 온도정보 알려줌

oss105@git:~/foss_lab/lab0922$ (echo aaa ; ps)
aaa
    PID TTY          TIME CMD
 786371 pts/27   00:00:00 bash
 792644 pts/27   00:00:00 bash
 792645 pts/27   00:00:00 ps
oss105@git:~/foss_lab/lab0922$ echo aaa ; ps
aaa
    PID TTY          TIME CMD
 786371 pts/27   00:00:00 bash
 792667 pts/27   00:00:00 ps

어떤 dir에서 작업 후 돌아올 때의 번거로움 x
괄호 열면 shell이 하나 열려서 cd안됨

stdout을 stdin에 넣어주는게 pipe

prw-r--r-- 1 oss105 foss    0  9월 22 14:41 pipe

위 처럼 p로 시작: named pipe

