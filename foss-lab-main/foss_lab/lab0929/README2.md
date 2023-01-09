# 0929 노트필기 - 오후

지난시간에 잘못된거: #은 주석이 아님. 
```
.sh file에서 # /bin/bash 하면 > ./hello.sh 했을 때 bash shell생성
> source hello.sh했을 때는 xx
#은 실행코드 근데 source명령에서는 주석으로 실행됨

따옴표 하나 찍으면 그 안에 있는걸 익스펜션 하지 않는다
${  }: 앞에 또는 뒤에 몇글자만 필요해
$? = 이전 명령어의 exit status

> a.out <<< 99
> echo $? 하면 결과는 99
> A=$?
> echo $A 하면 결과는 0 왜냐면 echo $?한 후 return 값이 0이기 때문

> A=a.out
> echo $A
결과: a.out

> $A
결과: input기다림 9999넣음

> echo $?
결과: 15

어떤 현상이냐면 시스템마다 다를 수 있는데 return값의 마지막 8비트가 15였기 때문 9999/256 = 15
$(()) = numerical int

> A=`a.out`
결과: input기다림. 99넣음. STDERR 출력

> echo $A
결과: STDOUT

배쉬의 함수의 리턴 값은 이 함수에 오류가 있는 지에만 쓰이지 어떤 함수의 결과값을 보이는데 쓰지 않음

> source args.sh 100 200 300
결과: 3개의 아규먼트

> source args.sh “100 200 300”
결과: 3개를 하나의 아규먼트로 집어넣음

> shopt
> $-
Shell의 옵션이 어떻게 돼있나 보여줌
```
```
중간고사

1~1000까지 더하는 프로그램
1~9999까지에서 3의 배수의 합을 구하시오 이런 식으로 나옴
```
```
#!/bin/bash
sum = 0
for a in {1..1000..1}		//1에서 1000까지 1씩 증가하면서
do		
	sum=$(($sum+$a))
done
	echo $((sum))


> touch file_{0000..999}.c
> ( ): sub shell에 실행 -> 끝나면 원래 값으로 돌려놓음

글로빙은 쉘이 제공하는 기능이다

> echo file_09*: file_09로 시작하는 모든 파일이 echo됨
> echo ????: 4글자 파일 echo
.으로 시작하는 파일은 히든파일
> echo *하면 점으로 시작하는 파일 안 나옴
> echo .*
> ls -A: 점으로 시작하는 건 빼고 보여줌
> shopt -s dotglob: 세팅
> echo *: .aaaa파일이 나옴 .이랑 ..은 안 나옴

> shopt -s nullglob
> A=zzz*
> echo $A
결과: null(아무것도 안 뜸)
```
