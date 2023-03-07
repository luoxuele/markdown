# https://support.huawei.com/enterprise/en/doc/EDOC1100086647#ZH-CN_TOPIC_0172957958

ACL (Access Control List)
rule 一条acl是由多条规则组成的

rule
rule id (默认步长step为5)
action [permit | deny]


Basic ACL
Advanced ACL
Layer 2 ACL
User ACL
Basic ACL6
Advanced ACL6

source-mac source-mac-address [ source-mac-mask ]
destination-mac dest-mac-address [ dest-mac-mask ]
vlan-id vlan-id [ vlan-id-mask ]
cvlan-id cvlan-id [ cvlan-id-mask ]

source { source-address source-wildcard | any }
destination { destination-address destination-wildcard | any }
source-port { eq port | gt port | lt port | range port-start port-end }
destination-port { eq port | gt port | lt port | range port-start port-end }
tcp-flag { ack | established | fin | psh | rst | syn | urg }

protocol-number | icmp | tcp | udp | gre | igmp | ip | ipinip | ospf