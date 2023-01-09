# 1006 노트필기 - 오후

묶는 건 타임하고 리디렉션에 유용
```
중간고사

> (cd /tmp; ps): 서브 쉘 실행돼서 bash가 두 개!
어떤 스트링이 파일 내에 있는지 없는지 찾기: grep
> (cd /tmp; ps) | grep bash
> (cd /tmp; ps) } grep bash | wc -l: 결과 2
> { cd /tmp; ps ;}: bash 하나일줄 알았지만 두 개임
파이프를 켜면 서브쉘 실행됨
괄호하고 파이프하면 세 개일줄알았지만 두 개임
```
```
앞의 명령이 에러가 나도 뒤에 것 실행
&는 아규먼트로 생각하지 않음 앞에 것의 아규먼트가 끝났구나로 해석

배쉬는 명령어 빌트인코멘트 다 사용이 같음
$# 는 아규먼트의 개수
리턴 값을 쓰기 위해서는 $?
리턴은 exit status임 stdout 아님
> sleep 300 ; exit: 컨트롤 씨로 나올 수 있음
> exec sleep 300: 컨트롤 씨 누르면 로그아웃 됨
File descriptor? Fd를 0,1,2가 아닌 다른 걸 만들고 싶을 때는 exec써야 함

하나는 stdout으로 하나는 저장하고 싶을 때는 > tee
> ls -l | tee ㅣlsresult
> ls -l } tee } wc
```
```
중간고사: 악독한 문제!!
> ls | wc -l: 19
> ls -a | wc -l: 23 이라 쳤을 때
> ls -a > lsresult
> wc lsresult: 23
> ls -a > lsresult999
> wc lsresult999: 결과 24

왜?
lsresult라는 파일이 이미 존재하면 그대로인데 lsresult999라는 파일은 없어서 결과 출력 전에 0바이트짜리 파일을 만들기 때문에 하나 증가함
```
```
[[ ]]는 오퍼레이터임 양쪽에 반드시 띄어 쓰기가 되어 있어야 함
트루이면 0 펄스이면 1을 리턴
1과 100을 비교하면 1이 더 큼(순서상) 숫자비교는 [[ ]] 대신 (( )) 근데 이건 띄어 쓰기 필수 아님
```
```
중간고사

hello.c에서 int a, return a 가 인티져가 아니고 캐릭터임
```
```
a.out를 실행했을 때 정상적으로 실행된 리턴 값이 0이면 트루 아니면 펄스를 출력하는 프로그램

> if ./a.out
> then 
> echo true
> else
> echo false
> fi
= > if ./a.out; then echo true; else echo false; fi
```
