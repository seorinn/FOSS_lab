# 1110 노트필기 - 오후
```
> git diff: repository에 있는 것과 내가 고친 것 비교
> git diff –staged: git add하면 git diff해도 아무것도 안 뜸. 이 명령은 stage에 올라간 것과 repository의 것 비교
> git commit 하면 완전히 같아 짐
> git reset [file명]: add를 unstaged상태로 바꿈. 고쳤던 것이 원래대로 돌아가지는 않음

> git log
> git log branchB..branchA
> git log –follow [file명]
> git show [commit]: 
>git diff branchB...branchA
> git show [SHA]
> git rebase [branch]
> git reset –hard [commit]: [commit]로 시작하는 log의 상태로 돌아 감
--hard: 잠시 head를 옮기고 싶을 땐 하드 빼고. --hard를 넣으면 데이터가 완전히 바뀜

> rm []해서 지운 것 복구하는 법 1. > git pull 해서 가져온다. 2. > git reset 해서 가져온다. 
```
```
기말고사!!

Git initialize 하세요. -> git init
Branch 만드세요.
Readme.md에 학번을 넣으세요. -> echo 202021141 >> readme.md
이 파일을 stage에 올리세요 -> git add readme.md
‘학번’으로 commit하세요 -> git commit -m “학번”
```
```
Commit 번호(hash code)들은 .git 디렉토리에 남아있음.
Path change: 어떤 디렉토리나 파일을 지우고 싶을 때 그냥 rm하기 보다는
> git ignore [] 로 git project에 add하지 않고(신경쓰지 않고) 테스트해볼 수 있음
```
```
기말고사

> ls -a에서 a는 무슨 뜻? -> .으로 시작하는 히든 파일까지 보여준다. 
```
```
큰 프로젝트를 계속 반복해서 수정하면서 하면 용량이 커져 문제가 발생할 수 있음

> git log –follow [파일명]: 지워진 파일에 대해서는 안됨
```
