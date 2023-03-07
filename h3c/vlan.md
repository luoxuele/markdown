H3C S5830V2[S5820V2]系列以太网交换机 命令参考-Release 23xx-6W102
https://www.h3c.com/cn/Service/Document_Software/Document_Center/Home/Switches/00-Public/Command/Command_Manual/H3C_S5830V2_S5820V2_Release_23xx-3747/

H3C MSR610[810][830][1000S][2600][3600]路由器 命令参考(V7)-R6728-6W106
https://www.h3c.com/cn/Service/Document_Software/Document_Center/Home/Routers/00-Public/Command/Command_Manual/H3C_MSR810_3600_V7_R6728-6086/

# vlan 操作相关命令
vlan { vlan-id1 [ to vlan-id2 ] | all }
port interface-list

display vlan [ vlan-id1 [ to vlan-id2 ] | all | dynamic | reserved | static ]
display vlan

<H3C>display interface GigabitEthernet 1/0/1


[H3C]vlan 2 to 3
[H3C-vlan2]port g1/0/1
[H3C]display interface g1/0/1
[H3C]display vlan 2


[H3C-GigabitEthernet1/0/1]port link-type access

[H3C-GigabitEthernet1/0/2]port link-type access
[H3C-GigabitEthernet1/0/2]port access vlan 3



[H3C-GigabitEthernet1/0/48]port link-type trunk
[H3C-GigabitEthernet1/0/48]port trunk permit vlan 2 to 3


# 关闭stp协议
[H3C]undo stp global enable