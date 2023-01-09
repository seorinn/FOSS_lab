# 0922 노트필기 - 오후
```
> ls -la
> ls -l -a
> ls -al
 다 똑같음
> ls -lc
> ls -lf
color를 지원하지 않는 경우 파일 타입 보여줌
```
```
> sensors: 온도 정보 등 보여줌
> tr: 대문자를 전부 소문자로 바꿀 때 등
> split -l: 
> tail -f: 어떤 파일이 계속 늘어나고 있으면 테일도 늘어남 명령어 입력하면 늘어나는 대로 또 뜸
> uniq: 똑같은 줄을 한 줄로 만들어 줌
```
```
>cat 하고 아무것도 안치면 인풋받아서 그대로 대답해줌 나가려면 컨트롤 디
> cat today
=
> cat < today
> cat today today today > today3: 하면 세 번 반복 -> 하나의 파일로 리디렉션되어 나옴
꺾쇠 없으면 stdout으로 내보내줌
```
```
중간고사!

> cat < today > yesterday
는 copy와 같음. 복사가 됨
```
```
> tar cvf lab0922.tar lab0922
c = create, v = 설명, f = stdout으로 나가는거 막음
f 바로 뒤에 파일명 나와야 함. 맨 뒤에는 백업받을 디렉토리명
압축을 한 것은 아니지만 용량 줄어듦 
디스크는 블록 디바이스로 2바이트짜리를 만들어도 디스크를 1024바이트를 써서
```
```
중간고사

파이프의 작동원리를 설명하세요
a.put | b.out
a.put에서 나오는 stdout을 b.out의 stdin으로 연결해줌
```
```
> 2>&1 : stderr를 stdout으로 내주세요
> 1> output.tx 2>&1 ls -l a.out b.out c.out
```
```
> ls -l a.out b.out c.out
결과: a.out b.out는 stdout에 출력 c.out는 stderr에 출력
```
```
> ls -l a.out b.out c.out | wc
결과: c.out는 stderr에 출력. a.out b.out에 대해서는 2 18 104와 같이 stdout출력
```
```
> ls -l a.out b.out c.out |& wc
결과: 3 27 157과 같이 뜸

리디렉션
```
```
|& = stdout과 stderr 모두 그 다음 실행파일의 stdin으로 넣어준다
p로 시작하는건 pipe (named pipe)
```
```
cat에 여러 줄 입력하고 싶을 때는
> cat <<QQQ: 마지막줄을 QQQ로 끝내겠다
> 100
> 200
> 300
> QQQ
```
