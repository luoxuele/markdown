vmrun -T ws list

win10="/home/luoxue/vmware/Windows 10 x64/Windows 10 x64.vmx"
win10_2="/home/luoxue/vmware/Windows 10/Windows 10.vmx"
win11="/home/luoxue/vmware/win11/win11.vmx"
server2016="/home/luoxue/vmware/Windows Server 2016/Windows Server 2016.vmx"

win10       192.168.10.80
win10_2     192.168.10.81
win11       192.168.10.82
server2016  192.168.10.83

vmrun -T ws start "/home/luoxue/vmware/Windows 10 x64/Windows 10 x64.vmx" nogui
vmrun -T ws start "/home/luoxue/vmware/Windows 10/Windows 10.vmx" nogui
vmrun -T ws -vp luoxue123 start "/home/luoxue/vmware/win11/win11.vmx" nogui
vmrun -T ws start "/home/luoxue/vmware/Windows Server 2016/Windows Server 2016.vmx" nogui

vmrun -T ws list

vmrun -T ws stop "/home/luoxue/vmware/Windows 10 x64/Windows 10 x64.vmx" nogui
vmrun -T ws stop "/home/luoxue/vmware/Windows 10/Windows 10.vmx" nogui
vmrun -T ws -vp luoxue123 stop "/home/luoxue/vmware/win11/win11.vmx" nogui
vmrun -T ws stop "/home/luoxue/vmware/Windows Server 2016/Windows Server 2016.vmx" nogui