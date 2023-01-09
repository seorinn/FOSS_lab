# 0922
```
> free: swap space, memory
> sensors: 온도정보 알려줌

oss105@git:~/foss_lab/lab0922$ (echo aaa ; ps)
aaa
    PID TTY          TIME CMD
 786371 pts/27   00:00:00 bash
 792644 pts/27   00:00:00 bash
 792645 pts/27   00:00:00 ps
oss105@git:~/foss_lab/lab0922$ echo aaa ; ps
aaa
    PID TTY          TIME CMD
 786371 pts/27   00:00:00 bash
 792667 pts/27   00:00:00 ps

어떤 dir에서 작업 후 돌아올 때의 번거로움 x
괄호 열면 shell이 하나 열려서 cd안됨

stdout을 stdin에 넣어주는 게 pipe

prw-r--r-- 1 oss105 foss    0  9월 22 14:41 pipe

위처럼 p로 시작: named pipe
```
