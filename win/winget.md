# 下载 .misxbundle格式的安装包
https://github.com/microsoft/winget-cli
https://github.com/microsoft/winget-cli/releases/download/v1.4.10173/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle

# 管理员powershell下用命令安装
Add-AppxPackage /Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle



# 安装软件
winget install nushell
winget install --id Git.Git -e --source winget
