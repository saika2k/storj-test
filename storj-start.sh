#!/bin/bash

export PATH="home/go/bin:$PATH"

storj-sim network destroy

nohup storj-sim network setup --config-dir /home/jiahao/go/bin/ID --print-commands > setup.log 2>&1 &

sleep 10

nohup storj-sim network run --config-dir /home/jiahao/go/bin/ID --print-commands > storj.log 2>&1 &

#uplink --config-dir /home/jiahao/go/bin/ID/gateway/0 mb sj://3
#uplink --config-dir /home/jiahao/go/bin/ID/gateway/0 cp /home/jiahao/go/bin/txts/6.5MB.txt sj://3

#./identity --identity-dir /home/jiahao/go/bin/ID/0 --concurrency 1 --difficulty 8 create .
#./identity --identity-dir /home/jiahao/go/bin/ID/1 --concurrency 1 --difficulty 8 create .
#./identity --identity-dir /home/jiahao/go/bin/ID/2 --concurrency 1 --difficulty 8 create .
#./identity --identity-dir /home/jiahao/go/bin/ID/3 --concurrency 1 --difficulty 8 create .
#./identity --identity-dir /home/jiahao/go/bin/ID/4 --concurrency 1 --difficulty 8 create .

#./versioncontrol --metrics.app-suffix sim --log.level debug --config-dir /home/jiahao/go/bin/ID/0 setup --address 127.0.0.1:10011

#./bootstrap --metrics.app-suffix sim --log.level debug --config-dir /home/jiahao/go/bin/ID/1 setup --identity-dir /home/jiahao/go/bin/ID/1 --web.address 127.0.0.1:10010 --server.address 127.0.0.1:9999 --server.private-address 127.0.0.1:9988 --kademlia.bootstrap-addr 127.0.0.1:9999 --kademlia.operator.email bootstrap@example.com --kademlia.operator.wallet 0x0123456789012345678901234567890123456789 --server.extensions.revocation=false --server.use-peer-ca-whitelist=false --version.server-address http://127.0.0.1:10011/

#./satellite --metrics.app-suffix sim --log.level debug --config-dir /home/jiahao/go/bin/ID/2 setup --identity-dir /home/jiahao/go/bin/ID/2 --console.address 127.0.0.1:10100 --console.static-dir /home/jiahao/Desktop/storj/web/satellite --console.auth-token secure_token --server.address 127.0.0.1:10000 --server.private-address 127.0.0.1:11000 --kademlia.bootstrap-addr 127.0.0.1:9999 --server.extensions.revocation=false --server.use-peer-ca-whitelist=false --mail.smtp-server-address smtp.gmail.com:587 --mail.from Storj <yaroslav-satellite-test@storj.io> --mail.template-path /home/jiahao/Desktop/storj/web/satellite/static/emails --version.server-address http://127.0.0.1:10011/

#./gateway --metrics.app-suffix sim --log.level debug --config-dir /home/jiahao/go/bin/ID/3 setup --identity-dir /home/jiahao/go/bin/ID/3 --satellite-addr 127.0.0.1:10000 --server.address 127.0.0.1:9000 --satellite-addr 127.0.0.1:10000 --rs.min-threshold 1 --rs.repair-threshold 1 --rs.success-threshold 1 --rs.max-threshold 1 --tls.extensions.revocation=false --tls.use-peer-ca-whitelist=false

#./storagenode --metrics.app-suffix sim --log.level debug --config-dir /home/jiahao/go/bin/ID/4 setup --identity-dir /home/jiahao/go/bin/ID/4 --server.address 127.0.0.1:12008 --server.private-address 127.0.0.1:13008 --kademlia.bootstrap-addr 127.0.0.1:9999 --kademlia.operator.email storage8@example.com --kademlia.operator.wallet 0x0123456789012345678901234567890123456789 --server.extensions.revocation=false --server.use-peer-ca-whitelist=false --storage.satellite-id-restriction=false --version.server-address http://127.0.0.1:10011/

#./versioncontrol --metrics.app-suffix sim --log.level debug --config-dir /home/jiahao/go/bin/ID/versioncontrol/0 run
#./bootstrap --metrics.app-suffix sim --log.level debug --config-dir /home/jiahao/go/bin/ID/bootstrap/0 run
#./satellite --metrics.app-suffix sim --log.level debug --config-dir /home/jiahao/go/bin/ID/satellite/0 run
#./gateway --metrics.app-suffix sim --log.level debug --config-dir /home/jiahao/go/bin/ID/gateway/0 run
#./storagenode --metrics.app-suffix sim --log.level debug --config-dir /home/jiahao/go/bin/ID/storagenode/0 run

#2023-07-11T16:45:01.403+0800	ERROR	metainfo:endpoint	unauthorized request: 	{"error": "rpc error: code = Unauthenticated desc = sql: no rows in result set"}
#2023-07-11T16:45:01.403+0800	ERROR	rpc error: code = Unauthenticated desc = rpc error: code = Unauthenticated desc = Invalid API credential
