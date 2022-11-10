curl https://get.acme.sh | sh -s email=993650799@qq.com
alias acme.sh=~/.acme.sh/acme.sh

export CF_Token="g6PrvQuteRF7_C86ro3K_-M8JkYmeVpiunrjKB1C"
export CF_Account_ID="0f79b288685c0e6a80a095dd67e08eb9"
export CF_Zone_ID="95c7a7af1a25d88a715b222986fd1d7e"

acme.sh --issue --dns dns_cf -d changgle.top -d *.changgle.top





Your cert is in: /root/.acme.sh/changgle.top/changgle.top.cer
Your cert key is in: /root/.acme.sh/changgle.top/changgle.top.key
The intermediate CA cert is in: /root/.acme.sh/changgle.top/ca.cer
And the full chain certs is there: /root/.acme.sh/changgle.top/fullchain.cer


code-server --cert .config/code-server/changgle.top.cer --cert-key .config/code-server/changgle.top.key
