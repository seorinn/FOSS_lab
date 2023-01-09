# 0915 노트필기 - 오전
```
> sleep 숫자: 숫자 초 동안 아무것도 안함
> sleep 5 ; echo 5 seconds passed: 5초 후에 5 seconds passed라는 문장 출력 = fg작업
Process는 세 가지 상태를 가짐: RUN, KILL, STOPPED(SUSPEND)
RUN은 fg(foreground)와 bg(background)에서 실행되는 것으로 나뉨
```
```
중간고사 문제!

ls명령이 storage에서 바로 cpu가 실행? X -> memory로 로딩한 후 하나씩 실행
```
```
> sleep 5 ; echo 5 seconds passed: echo 명령이 끝나면 kill됨 = fg작업 = process
Cpu = processor 
bg실행 방법은
> sleep 5 &
[1] 2205795: 작업 번호, PID
Sleep 작업 Kill >> ctrl C
Sleep 작업 Stop >> ctrl Z
> ps -l했을 때 T = stop, R = 실행
> jobs
process번호는 절대 중복되지 않음, job번호는 중복될 수 o -> 터미널 단위로
stop된걸(작업번호 = 2) 다시 fg로 돌리려면
> fg %2 >> ctrl Z하면 다시 stopped
> bg %2: 다시 bg로
> kill %작업번호 또는 > kill process번호
> sleep 5 & ; echo 5 sec: 에러남(bg ; fg)
> sleep 5 ; echo 5 sec &: fg로 돌아감
> { sleep 5 ; echo 5 sec ; }&: 세미콜론으로 echo명령이 끝났음을 알려야 함
> { sleep 5 ; ps }: bash 하나 더 만들어짐 괄호 치고 만들면 shell이 하나 더 만들어지기 때문
Stdin을 사용하는 프로그램은 background로 돌릴 수 없다.
실행취소: u, 두 줄 합치기: 대문자 j
0<(=<): stdin
1>(=>): stdout
2>(=&>): stderr
```
```
> echo 999 > infile
> a.out < infile
결과:
STDOUT: Hello Hwanyong 999
STDERR: Hello Hwanyong 999
-> redirection, background로 돌릴 수 있다.(> a.out < infile &)
> a.out &: a.out stop됨 -> 왜? a.out가 stdin device를 쓰는데 bg로 돌리면 bash 명령과 a.out이 stdin에서 기다리고 있기 때문(싸움이 일어남!)
```
```
> a.out < infile > outfile
결과: 
STDERR: Hello Hwanyong 999
```
```
> cat outfile
결과: 
STDOUT: Hello Hwanyong 999 

에러 왜 나옴? Stderr device는 이 터미널이었는데 리디렉션이 안됨
```
```
> ls -l a.out b.out c.out
결과: 
‘b.out’ 없음
‘c.out’ 없음
a.out 내용 보여줌
-> 순서 어떻게 나올지 모름. 알 수 없음: input output 장치가 메모리에 연결되어 있음(버퍼). 버퍼가 세 개(인 아웃 에러) 있어야 함 근데 터미널이 어떤 순서로 나올지는 알 수 없음.
```
```
중간고사!

> ls -l a.out b.out c.out 2> .dev/null
결과: 
a.out 보여줌
나머지는 dev/null로 보내짐

> a.out 1< infile 1> stdout.txt 2> stderr.txt

Infile에 999가 들어있다고 가정했을 때
Stdout 파일에는 ~999, stderr파일에는 STDERR: Hello Hwanyong이 들어있음
-> redirection

0< infile 1> stdout.txt 2> stderr.txt a.out
결과 똑같음. 0,1,2 순서도 상관 x
> 0< infile a.out 1> atdout.txt 2> stderr.txt
결과 똑같음
But a.out를 쓰고 바로 filename쓰면 안됨
```
```
> a.out &> all.txt
&> = 2&>1
결과: input 받고
> cat all.txt
결과: 
STDERR ~ 어쩌구
STDOUT ~ 어쩌구
두 개의 버퍼가 다른데 redirection을 통해 한 쪽으로 몰아넣은 경우에 순서를 예측할 수 없음.
```
```
데이터를 누적시키고 싶을 때 (덮어쓰기 = clobbing되는 것)
> set -o noclobber
```
```
> a.out >> all.txt
-> 인풋받으면 에러가 출력 아웃풋은 all.txt로 출력(누적)
모든 shell은 아니고 bash에서만 됨. 
> echo 1234 > sss ; a.out < sss ; rm sss
같은 방법
> a,out <<< 1234
csh 상태에서는 불가능
```
