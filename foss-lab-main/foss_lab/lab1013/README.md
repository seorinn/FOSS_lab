# 1013 노트필기
```
> echo *: aaa aaaa aaaaa bbaa bbb bbbb
> touch .aa ..aaaaa …aaaa
> echo *: 결과 맨 위랑 같음
> shopt -s dotglob
> echo *: .aa aaa …aaaa aaaa ..aaaaa aaaaa bbaa bbb bbbb

> echo !(aa*): aa로 시작하는 파일 빼고 보여줌

> echo aaa > aaa: aaa라는 문자열은 stdout으로 내는데 리디렉션해서 aaa라는 파일에 이 스트링을 접어 넣는다
> echo bbb > aaa: aaa 문자열 지우고 bbb로 덮어씀 clobing
> set -o noclobber
> echo bbb > aaa: overwrite 불가능 오류 메시지

> set +o noclobber


> A=`ls`
> A=$(ls)
두 개 같음

> !!: 가장 최근의 명령어
> cd ~oss000: 유저 oss000의 디렉토리로 이동

> ^22^21: 22를 21로 바꿈
> history | grep if: history중에 if들어간거

> cat !$: 마지막 아규먼트 cat

> history
> !2079:gs/a/b: historydptj 2079번에 해당하는 명령에서 모든(gs) a를 b로 바꾸기 s는 하나만 바꾸는거
> shopt -s histverify: !c하면 원래 c로 시작하는 가장 최근 명령어 실행되는데 저렇게 세팅하면 바로 실행은 안되고 엔터 눌러야 실행됨
```
```
중간고사

> set -o errexit: bash script를 굉장히 복잡하게 썼을 때 여러 명령에서 에러가 나면 끝내는 거

Alias는 커맨드를 바꿈

따옴표 하나 두개 차이는 무조건 나옴
```
