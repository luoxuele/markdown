sudo apt install cloud-init genisoimage -y
mkdir -p ~/workspace/cloud-init && cd ~/workspace/cloud-init


cat << EOF > ~/workspace/cloud-init/meta-data
instance-id: 1
local-hostname: cuc-cloud-init
EOF

cat << EOF > ~/workspace/cloud-init/user-data
#cloud-config
password: mypassword 
chpasswd: { expire: False }
ssh_pwauth: True
EOF

genisoimage -output init-cidata.iso -volid cidata -joliet -rock user-data meta-data


