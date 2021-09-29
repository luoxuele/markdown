
# 以太网二层交换机
    1. mac地址学习
        源mac地址学习法，交换机从某个接口收到一个帧，源mac + 接口编号  加到MAC Address Table中
    2. 转发Frame
       基于目的mac地址进行转发
       转发帧的方式有三种： 广播（泛洪），单播，过滤（不转发，丢弃）
            广播帧 -> 广播
            未知单播帧  -> 广播
            已知单播帧  -> 单播
            无论是广播，单播，还是组播，如果目的mac地址的端口和接口这个帧的端口是同一个端口，则交换机对此帧进行过滤

    mac地址表特点
        一个mac地址只能被一个端口学习，新的覆盖旧的
        一个端口可以学习多个mac地址


# vlan
    用来把一个大的lan划分为多个逻辑的lan,即vlan
    解决了广播域过大的问题
    vlan的定义
        虚拟局域网
        二层隔离广播域

    802.1Q标准
    在以太网二的标准帧中加一个vlan标签
    tag(4 Bytes)
        TPID    2 Bytes
        TCI     2 Bytes
            Priority 3 bit
            CFI     1 bit
            VLAN ID     12 bit
    
    TPID    标签协议id，固定值0x8100,表明这是一个封装了802.1Q标签的帧
    VLAN ID 2**12 = 4096  

# 交换机端口类型
    access  只有一个默认vlan, 收->加标签  发->撕标签
    trunk   除了一个默认vlan，还可以设置多个放行vlan
            收到放行vlan，直接通过
                收到默认vlan，撕标签
                收到没有标签的包，加默认vlan的标签
    hybird  允许通过多个vlan
                收到一个没有标签的包，打默认vlan
                收到有标签的包，那就收到

                转发   手动选择允许通过的vlan是否撕标签

    trunk和hybird的区别：
        接收数据时处理方法是一样的
        发送数据时，hybird可以允许多个vlan的报文发送而不打tag，trunk只允许默认vlan不打tag

    注： 交换机收到一个帧，没有tag就打上默认tag 
         access   出去撕掉tag
         trunk     出去一般不撕tag，trunk口的默认vlan 和 帧 的 pvid一样才撕掉tag
         hybird     出去的时候可以选择那些vlan标签撕还是不撕

# vlan 类型
    端口， mac,协议，子网
    mac > ip子网 > 协议  > 端口
