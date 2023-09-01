time zone
    Greenwich Mean Time (GMT)   格林威治标准时
    Coordinated Universal Time (UTC) 通用协调时,世界标准时间
    GMT=UTC+0
    Central Standard Time (CST) 中部标准时间

ls -l /etc/localtime
timedatectl
timedatectl show
timedatectl status

timedatectl list-timezones  | grep -i utc
timedatectl list-timezones  | grep -i shanghai
timedatectl list-timezones  | grep -i hongkong

timedatectl set-timezone UTC
timedatectl set-timezone Etc/GMT+8
timedatectl set-timezone Hongkong
timedatectl set-timezone Asia/Shanghai

