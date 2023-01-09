# 1117 노트필기 - 오전
```
> git reset과 --hard의 차이점: 그냥 깃 로그의 헤드 포지션을 바꾸는 것이 아니라 내용도 바꿈. 
```
```
기말고사!! 

origin HEAD을 현재 repository의 HEAD와 같게 만드세요. -> git push
현재 디렉토리의 이름을 final_exam이라는 이름으로 만들고 이동하세요 -> mkdir final_exam ; cd final_exam
자기 학번을 sid라는 파일로 저장하세요 -> echo 202021141 >> sid
이 디렉토리에 git repository를 만드세요. -> git init(= web git에서 clone 주소 복사…)
sid파일의 끝에 이름을 추가하세요 -> echo seorin kim >> sid
sid 파일을 commit 하세요 -> git add sid / -> git commit -m “final_exam”
```
```
> git fetch: 내용을 가져오지는 말고 다른 서버의 수정 정보만 알고 싶을 때
서버 간 파일 내용이 다를 때 충돌(CONFLICT) 일으키기
1.	git push
2.	git pull
```
