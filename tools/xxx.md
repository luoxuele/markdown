tcp 头部格式
    Source Port



以太网帧格式
    目的mac     6 bytes
    源mac       6 bytes
    类型/服务    2 bytes
    数据（ip数据报） 46-1500 bytes
    FCS         4 bytes (Frame check sum)

    类型： 0x0800 ip

    mac地址   
        http://standards-oui.ieee.org/oui/oui.txt
        https://mac.lc/address/



# 交换机
    mac地址表
        记录在RAM中，关机丢失
        记录交换机每个端口和所连接设备的mac地址
        一个接口可以对应多个mac地址
        老化时间： 300秒
    
    工作机制
        源mac地址学习法
        根据目的mac地址表转发
            广播帧，继续广播
            单播帧， 查找mac地址表
                查到就单播
                找不到目的mac地址则泛洪

# vlan
    vlan的定义
        虚拟局域网
        二层隔离广播域
    