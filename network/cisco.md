user exec mode
enable mode
configuration mode


Router>enable  
Router#^Z
Router#disable
R1#configure terminal

R1(config)#end
R1(config)#exit

R1(config)#interface ethernet 0/0
R1(config)#line console 0

R1#show ip interface brief
R1#show history

