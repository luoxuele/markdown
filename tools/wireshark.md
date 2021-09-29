# 过滤器
    wireshark过滤器分为两种，显示过滤器和捕获过滤器。显示过滤器指的是针对已经捕获的报文，过滤出符合过滤规则的报文；捕获过滤器指的是提前设置好过滤规则，只捕获符合过滤规则的报文。往往初次接触wireshark，可能会分不清这两种过滤规则，本文就简单说明一下。

    为什么wireshark使用两套过滤器规则呢？原因在于wireshark使用winpcap或者libpcap第三方的报文捕获库来对网卡的报文进行捕获，因此捕获过滤器就沿用了这些第三方库提供的捕获过滤出规则。但是对于已经捕获报文的解析和处理，wireshark本身构建了一套新的过滤规则，显示过滤器。显示过滤器比之捕获过滤器要强大许多，在报文分析的过程中经常使用到，因此有必要了解下。
## 显示过滤器  display filters 
    一条基本的表达式由过滤项、过滤关系、过滤值三项组成。
    ip.addr == 192.168.10.1

    过滤项 wireshark的过滤项是“协议“+”.“+”协议字段”的模式
    
    comparison operators
    == != > < >= <= contains ~ &

    Display Filter Logical Operations
    && || ! ^^ [...] in 




    ip.addr == 192.168.10.129 && udp.port == 9999




## 捕获过滤器
    捕捉过滤器语法
    语法：<Protocol>  <Direction>  <Host(s)>  < Value>  < Logical  Operations>   <Other expression>

    Protocol（协议）: ether，fddi， ip，arp，rarp，decnet，lat， sca，moprc，mopdl， tcp ， udp 等，如果没指明协议类型，则默认为捕捉所有支持的协议。

    Direction（方向）:src， dst，src and dst， src or dst等，如果没指明方向，则默认使用 “src or dst” 作为关键字。

    Host(s): net, port, host, portrange等，默认使用”host”关键字，”src 10.1.1.1″与”src host 10.1.1.1″等价。

    Logical Operations（逻辑运算）:not, and, or 等，否(“not”)具有最高的优先级。或(“or”)和与(“and”)具有相同的优先级，运算时从左至右进行。


    host 192.168.10.129 and 9999