# powershell
## get-command
    Get-Command -Name Set-net*
    
## get-help && update-help
    Get-help Set-NetIPv4Protocol
    help Set-NetIPv4Protocol
    Get-Command -module NetTCPIP
    

## 网络
    Get-NetAdapter -InterfaceIndex 9
    Rename-NetAdapter -Name "VMware Network Adapter VMnet1" -NewName VMnet1
    Get-NetIPConfiguration -InterfaceAlias WLAN -Detailed
    New-NetIPAddress -IPAddress 192.168.1.128 -DefaultGateway 192.168.1.1 -PrefixLength 24 -InterfaceAlias WLAN
    Set-NetIPInterface -InterfaceAlias WLAN -Dhcp Enabled
    netsh int ipv4 set interface "以太网" dhcpstaticipcoexistence=enabled
    netsh int ipv4 add address "以太网" 192.168.100.101 255.255.255.0 
    netsh interface ipv4 set interface WLAN dhcpstaticipcoexistence=enabled
    netsh interface ipv4 add  address WLAN 192.168.1.128 255.255.255.0