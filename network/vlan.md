#   references
    https://support.huawei.com/enterprise/en/doc/EDOC1000178168/10db067f/vlan-configuration
    https://support.huawei.com/enterprise/zh/doc/EDOC1000178154/10db067f

Virtual Local Area Network (VLAN)

Fields in a VLAN tag
TPID    2 bytes  The value 0x8100 indicates an 802.1Q-tagged frame. An 802.1Q-incapable device discards the 802.1Q frames.
PRI     3 bits  Priority (PRI), indicating the frame priority.
CFI     1 bit   The CFI field has a fixed value of 0 on Ethernet networks.
VID     12 bits     VLAN ID (VID), VLAN IDs range from 0 to 4095. The values 0 and 4095 are reserved, and therefore valid VLAN IDs range from 1 to 4094.

Tagged frame: frame with a 4-byte VLAN tag
Untagged frame: frame without a 4-byte VLAN tag

Interface Types
Access  一般只能接收和发送untagged frames, 并且只能给接收的untagged frames 添加唯一的VLAN tag (如果收到的tagged frames 的VID等于PVID,则接收这个tagged frames)
Trunk   允许多个tagged frames 通过 （如果收到的是untagged frames,则打上pvid的vlan tag,如果发送出去的tagged frames 的vid等于pvid，则剥掉vlan tag）
Hybrid   It allows tagged frames from multiple VLANs. Frames sent out from a hybrid interface are tagged or untagged according to the VLAN configuration.

port default VLAN ID (PVID)
接口收到untagged frames 时，根据pvid添加vlan tag
接口发送frames时，如果vlan tag 的vid 等于pvid,则剥掉vlan tag


# 二层交换
    1. 学习 源mac地址学习法
    2. 转发：
    forwarding 转发，把frames从指定的端口发出去 （mac-address table 中能找到匹配条目）
    flooding    泛洪，把帧从所有的端口发出去，除了接收到这个帧的接口 （广播地址或者mac地址表中没有匹配的条目）
    filtering   过滤，直接把丢弃，mac地址表中找到了entry(条目) ，但这个这个条目的出口跟这个帧的入口是同一个
    总结： 收到的帧只能从交换机的其它端口发出去，广播帧和没找到匹配条目的帧泛洪，找到了匹配条目，查看出口和接收的入口是否相等，不相等才能转发，相等就要丢弃

    如果带vlan tag
        匹配条目的时候还要匹配vlan id

EtherType:
    0x0800 ipv4
    0x0806 arp
    0x0835 rarp
    0x8100 vlan-tagged (802.1x)
    0x86dd ipv6

    

# 三层交换
    多个vlan interface 可以配置不同的ip地址，但对应的mac地址都是设备的mac地址（出厂桥mac）
    //出厂桥mac
    <S1>display device manuinfo

    收到帧，先打vlan tag
    收到arp或者rarp的广播帧，查看ip是不是本机ip，是就回复，不是才能泛洪

    


[S1]display mac-address
[S1]display interface brief
[S1]display vlan brief

[S1]display interface Vlan-interface brief
<S1>display interface Vlan-interface 10
<S1>display interface Vlan-interface 20
//两个vlan-if的mac地址都是一样的，4abb-a7bc-0102
