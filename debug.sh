#跟踪pid进程的系统调用
#在后台开发中，strace -p 能够很方便的查看系统调用的参数，返回值，耗时等信息

strace  -p  pid 

 
#调试pid进程, 能够调试pid对应的程序
# 在gdb中用set print element 0，然后p 变量，可以查看到变量的全部信息，不会被截断(默认只会输出一部分)

gdb  -p  pid                        

   
#查看进程pid打开的文件描述符，(一般情况下，一个进程可以打开的文件描述符的个数不超过1024)

lsof  -p   pid                      


#查看操作系统中的线程信息，ps -elf 只能看到进程信息

ps -eLf 

#监控端口流量
tcpdump -X -ieth1 port 53101 and host 10.12.193.196


#更直观的监控各项指标 相当于top
dstat -tclmdny 1
vmstat 1