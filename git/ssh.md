ssh-keygen

ssh -T git@github.com





# windows
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection

C:\Users\admin\Documents\git>ssh-keygen -t rsa -b 4096 -C "tianchang1994@gmail.com"

Your identification has been saved in C:\Users\admin/.ssh/id_rsa
Your public key has been saved in C:\Users\admin/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:bjgyEO/tfOgsNeCDxQx4HhmvrlLBWifoWIF9INfsStY tianchang1994@gmail.com

C:\Users\admin\Documents\git>cat ../../.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDMdGR66DW58QfT0Bz5w+hnKpxFB8JjbQhg507G4KUxDJdfHYPjxpv+hMnmrfI6A4jI2fjHLCC85QkQosTbxZu8C4xccnxhThw/OUqAvSn5YIypuSlyngP84TAZBGjppHZU9pDVqeB1MYZgOa8UEcXFQcN3k0aOgcPgKjNlHN5iQ9+OcCUyDuHK9Uu6zTc0Sn/zUFyJFTCoKGwLThVz9WL3ANr9Zs7N6pR9f3kdhMcWWysiml5KLXmrV6RN5NGHdmpl2qOyt3zQctBtiblZaiud7ogY95N6ILrFqtrr4QghWBktmD0vfbDd+bh0EXNyBsaxSjCr1S1U15Dhc9qeoaJ3qMYtM4QewZKB65dt24J00RKmY5T8P4wwSU2j/EFiGICdJgYTlNnhRaMKX2BfmhCscJKI51X/LaLCa9L0JkJXlbbqur5vkL57cPzlTmKs7MYDRUfX3dIPB6OxyUh6BFZ3njgQQ/+rdkpUISldUd2SpB1yTcjUqxfRauMzoqkfNtmNxtkuuGGlp/3eyDG3/hhQl77URj7pSsRzBnqAQr47XComWldD28Ibj2R8xwQ6Vk+l1ly7hDVBLpC26258XNNlCT9EssmhWJ6QQaCCiNa44rThTqni0J9tgkjjJC6kLU6f78n1lRzG2sGggkOPQRCzm14B/hKmLfETuS52x1yfYw== tianchang1994@gmail.com


C:\Users\admin\Documents\git>ssh -T git@github.com
Hi luoxuele! You've successfully authenticated, but GitHub does not provide shell access

C:\Users\admin\Documents\git>git clone git@github.com:luoxuele/network_lab.git

//删除公钥 （错误的）
ssh-keygen -f "/root/.ssh/known_hosts" -R "github.com"