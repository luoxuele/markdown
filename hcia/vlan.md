# 设置交换机的接口类型
port link-type [access | trunk | hybrid]

[S1-GigabitEthernet0/0/2]port link-type access 
[S1-GigabitEthernet0/0/2]port default vlan 10  //配置默认vlan并加入这个vlan
[S1-GigabitEthernet0/0/2]undo port default vlan

[S1-GigabitEthernet0/0/1]port link-type trunk
[S1-GigabitEthernet0/0/1]port trunk allow-pass vlan 10  20 30 40
[S1-GigabitEthernet0/0/1]port trunk pvid vlan 10
[S1-GigabitEthernet0/0/1]undo port trunk allow-pass vlan 1
//trunk可以没有默认vlan，收到不带vlan tag的包直接丢弃

[S1-GigabitEthernet0/0/3]port link-type hybrid 
[S1-GigabitEthernet0/0/3]port hybrid pvid vlan 10
[S1-GigabitEthernet0/0/3]port hybrid untagged vlan 10 20 //撕标签
[S1-GigabitEthernet0/0/3]port hybrid tagged vlan  30 40     //不撕标签

Hybrid接口处理vlan帧的过程：
　　　　（1）收到一个二层帧，判断是否存在vlan标签，没有标签，则标记上Hybrid接口的PVID，进行下一步处理；有标签，判断该Hybrid接口是否允许该VLAN的帧进入，允许则进行下一步操作，否则丢弃。

　　　　（2）当数据帧从Hybrid接口发出时，交换机判断vlan在本接口的属性是untagged还是tagged，如果是untagged，先剥离帧的vlan标签，再发送。如果是tagged，则直接发送帧。

hybrid接口用法举例：
    1. 现在有三个vlan 10 20 100
    2. vlan 100有一台服务器，连接的交换机口是hybrid,pvid 100, untagged vlan 10 20
    3. vlan 10 主机， 交换机接口是hybrid,pvid 10, untagged vlan 20 100
    4. vlan 20 主机， 交换机接口是hybrid, pvid 20, untagged vlan 10 100
    5. 这样，vlan 10 20的主机均能访问vlan 100的服务器
 
 //总结：
    VID：VLAN ID
    PVID:port-based vlan id （相当于接口的默认vid,收到untagged的帧就打赏pvid）

    access 收到：打tag      发出：撕tag
    trunk   


# 创建vlan
[S1]vlan 10
[S1]vlan batch 10 20 30
[S1]vlan batch 20 30 40 to 44

# 查看交换机的vlan
[S1]display vlan
[S1]display vlan summary 

[S1]display vlan
VID  Type    Ports                                                          
-------------------
10   common  UT:GE0/0/2(U)                                                      
            TG:GE0/0/1(U) 
// UT:GE0/0/2(U) UT出去撕标签 U表示g0/0/2是up状态