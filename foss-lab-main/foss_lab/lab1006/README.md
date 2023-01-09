# 1006 노트필기 - 오전
```
> bash 로 새로운 쉘 열고 $A하면 $A 안 나옴
> exit
> export A
> bash
> echo $A 하면 나옴!

> export는 sub shell로만 export됨

> echo +(aa|bb)*: aa* bb*
> echo !(aa|bb)*: aa* bb* 가 아닌 것들

> tr “\t” a: tab을 a로 바꿈
> echo {{A..Z}, {a..z}}: A-Z, a-z 출력
combination하려면
> echo {a..c}{00..09}

리눅스는 rm으로 지운 파일 살릴 수 있는 방법 존재하지 않음

PATH는 shell 의 builtin variable이라 쓰면 안됨

> echo ${FOO:0:3}: FOO에 저장된 String에서 position0부터 3개 (0,1,2) 
> echo ${FOO:-5:3}
-는 if variable이 unset이면 ~
뒤에서 5번쨰에서 세 글자 하려면 괄호 치거나 띄어 쓰고 -5
> echo ${FOO:(-5}:3}
결과: g L

bash에서 #은 주석처리 됨
> echo ${STR%.c}: .c 날아감
> echo $STR#/}
꼬랑지 떼기 대가리 떼
> echo ${STR/%.c/.jave}: .c를 .java로
> touch file_{0000..9999}.c
그중 선택해서 .c에서 .java로 바꾸기 문제로 나옴

> echo file_3*.c: 글로빙해서 찾아냄
> echo file_{300..399}.c: 브레이스익스펜션으로 찾아냄
> for FN in file_3*.c
> do
> mv $FN ${FN%.c}.java
> done

> { sleep 1 ; echo done }
하면 done이 세미콜론까지 출력하라는 줄 알고 엔터 쳐도 입력 기다림
의도대로 하려면
> { sleep 1 ; echo done ; }
> { time sleep 1 ; echo done ; }: 걸린 시간 알려줌
> time { sleep 1 ; sleep 2 ; } ; echo done

> echo ${#STR}: 글자 수 알려줌
> echo ${A:-999}: A가 unset이면 -999 출력 A가 set되어있으면 A출력
```
