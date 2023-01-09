# 1117 노트필기 - 오후
```
기말고사

언제 branch/ fork쓰는지 -> fork는 프로젝트를 다른 프로젝트로 만들고 싶을 떄 사용. 일반적으로 하나의 프로젝트에서 어떤 기능을 추가하거나 수정할 때 branch를 사용하고 나중에 merge(branch fork 둘 다 동일)하게 된다
```
```
> git branch: 모든 branch를 보여줌. 현재 branch에는 *표시가 뜬다
> git branch [branch-name]: 현재 commit을 기준으로 branch를 만든다. 같은 이름의 branch가 존재할 경우 -> ?
> git checkout [branch-name]: branch 이동 
> git merge [branch]: 내 현재 branch에서 저쪽 branch를 merge
Git web server에는 br_2 branch가 없어 ssh의 br_2에서 git push 하면 fatal error. 그럴 경우
> git push –set-upstream origin br_2: web server에 br_2 branch 만들고 push
> git log branchB..branchA
> git diff branchB..branchA: branch 기준으로 branchA가 뭐가 다른 지
> git show
> git remote add [alias] [url]: git remote는 config file에 있음. 
> git fetch [alias]: remote에 branch가 여러 개 있다면 그 branch들을 다 가져오는 기능으로 쓰임
> git rebase [branch]: remote서버에 push pop하는 과정에서 사용 x. rebase해서 history 요약. 여러 번 한 commit을 한 번으로 줄일 수 있음. (권장x) 목적: branch에서 일어난 여러 commit 숨김
> git stash: 현재 modified나 git add까지 된 상태를 저장
> git stash list: 저장된 것들을 볼 때
> git stash pop: 저장된 것들 가져오기
> git stash drop: 저장된 것 지우기
```
