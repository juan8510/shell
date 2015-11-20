
#####查看本机关于IPTABLES的设置情况 默认查看INPUT FORWARD OUTPUT三个表的策略。
	iptables -L -n

#####保存Iptables信息,防止重启后失效
	/etc/init.d/iptables save

#####清除预设表filter中的所有规则链的规则
	iptables -F         
#####清除预设表filter中使用者自定链中的规则
	iptables -X        
#####清楚预设表filter中计数器
	iptables -Z 

#####已经建立tcp连接的包以及该连接相关的包允许通过！
	iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

#####
	iptables -A INPUT -p icmp -j ACCEPT
	iptables -A IOUTPUT -p icmp -j ACCEPT

#####设置默认策略
	iptables -P INPUT DROP

#####开放端口
	iptables -A INPUT -p tcp --dport 80 -j ACCEPT  


*filter                      <==星号开头的指的是表格，这里为 filter
:INPUT ACCEPT [0:0]          <==冒号开头的指的是链，三条内建的链
:FORWARD ACCEPT [0:0]        <==三条内建链的政策都是 ACCEPT 啰！
:OUTPUT ACCEPT [680:100461]
-A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT <==针对 INPUT 的规则
-A INPUT -p icmp -j ACCEPT <==这条很重要！外网可以ping通了
-A INPUT -i lo -j ACCEPT  <==这条很重要！针对本机内部接口开放！ 不然如果端口不开放,本机telnet本机端口是不通的
-A INPUT -p tcp -m state --state NEW -m tcp --dport 22 -j ACCEPT
-A INPUT -j REJECT --reject-with icmp-host-prohibited
-A FORWARD -j REJECT --reject-with icmp-host-prohibited <==针对 FORWARD 的规则
COMMIT
