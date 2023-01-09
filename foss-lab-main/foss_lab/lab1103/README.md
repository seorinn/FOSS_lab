# 1103 노트필기
소프트웨어를 수정할 때 branch생성, fork의 차이 알기

Git bash: 실행하면 터미널이 만들어짐. 세 개의 device(stdin, stdout, stderr)가 만들어짐. 아주 작은 리눅스 mingw가 있음 -> bash shell 생성
ssh.sjousw.kr: ssh 서버에 있음
git.ajou.ac.kr: 웹으로 만들어 놓은 깃 서버
ssh와 git은 다름(pc도 다름)
```
> git clone [url]
‘.git’이 repository
바탕화면에서 git BASH here 실행하면 해당 컴퓨터 desktop
웹 서비스로 되어있는 git 저장소 git repository 하나.
그 url을 copy해서 clone -> ssh 서버에 복사
내 laptop에서 clone
-> 똑같은 copy가 세 개의 repository에 있음

> git status: 현재 상태를 알고 싶을 때
> git add [README.md]
> git commit
> git config --global user.email oss105@ssh.ajousw.kr
> git config --global user.name “oss105”
-> 위 두 개 다른 github 계정 있으면 --global X

> git commit
-> 해당 저장소에만 저장

> git push

/*
> tar cvf
> tar xvf
> tar tvf
*/
```


