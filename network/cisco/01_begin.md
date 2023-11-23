# 1. 基本操作
    Switch>enable 
    Switch#configure terminal 
    Switch(config)#hostname S1

    S1(config)#interface vlan 1
    S1(config-if)#no shutdown 
    S1(config-if)#ip address 192.168.1.201 255.255.255.0
    S1(config-if)#exit
    S1(config)#exit
    S1#show ip interface brief 
    S1#write

    S2(config-if)#ip address 192.168.1.202 255.255.255.0
    S2(config-if)#^Z
    S2#ping 192.168.1.201

    S2#write 
    S2#copy running-config startup-config   

    C:\>ipconfig