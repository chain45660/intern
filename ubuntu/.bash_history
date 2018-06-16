./startFabric.sh 
docker logs peer0.org1.example.com 
ls
cd ..
ls
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/crypto-config ubuntu@ec2-13-251-110-128.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/* ubuntu@ec2-13-251-110-128.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/* ubuntu@ec2-13-251-110-128.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/fabric-scripts/hlfv11/composer/
docker ps
cd fabric-
cd fabric-tools/
ls
./teardownAllDocker.sh 
./startFabric.sh 
docker ps
scp -i ihpc-blk-key-pair.pem fabric-tools/fabric-scripts/hlfv11/composer/composer-genesis.block  ubuntu@ec2-13-250-182-224.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/fabric-scripts/hlfv11/composer/
cd ..
scp -i ihpc-blk-key-pair.pem fabric-tools/fabric-scripts/hlfv11/composer/*  ubuntu@ec2-13-251-43-202.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/fabric-scripts/hlfv11/composer/
ls
cd fabric-tools/fabric-scripts/hlfv11/composer/crypto-config/
ls
cd ..
scp -i ihpc-blk-key-pair.pem -r  crypto-config  ubuntu@ec2-13-251-43-202.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/fabric-scripts/hlfv11/composer/
cd ../../..
cd ..
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/crypto-config  ubuntu@ec2-13-251-43-202.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/*  ubuntu@ec2-13-229-152-124.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/fabric-scripts/hlfv11/composer/
cd fabric-tools/
ls
rmate composer-4/org1/connection-1.json 
ls
cd fabric-tools/
./startFabric.sh 
sudo nano /tmp/
cd /tmp/
ls
cd ..
ls
cd /home
ls
cd ubuntu/
sl
ls
ls /tmp/
ls
cd fabric-
cd fabric-t
cd fabric-tools/
ls
sudo nano composer-4/org1/
cd composer-4/org1/
ls
rm 1c3b644200f12c9d0d6d9d4cdbdf5a6888500d69d9d3cd183ecac43a6ca25de1_sk 
rm Admin@org1.example.com-cert.pem 
cd ../..
ls
cd ..
ls
cd fabric-tools/fabric-scripts/
ls
cd hlfv11/composer/
ls
export ORG1=crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
cp -p $ORG1/signcerts/A*.pem /~/fabric-tools/composer-4/org1
cp -p $ORG1/signcerts/A*.pem ~/fabric-tools/composer-4/org1
cp -p $ORG1/keystore/*_sk  ~/fabric-tools/composer-4/org1
sudo nano ~/fabric-tools/composer-4/org1/connection-1.json 
cd fabric-tools/
rmate composer-4/org1/connection-1.json 
cd fabric-scripts/hlfv11/composer/
export ORG1=crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
cd ../../..
cd composer-4/
ls
cd org1/
ls
rm 3
rm 3d107a14b0432c02932a67c2632b31bb141c55505fc821ee25582389eff135fe_sk 
rm Admin@org1.example.com-cert.pem 
cd fabric-scripts/hlfv11/composer/
cd ../../fabric-scripts/hlfv11/composer/
cp -p $ORG1/signcerts/A*.pem / ~/fabric-tools/composer-4/org1
cp -p $ORG1/signcerts/A*.pem  ~/fabric-tools/composer-4/org1
cp -p $ORG1/keystore/*_sk  ~/fabric-tools/composer-4/org1
cd ../../..
rmate composer-4/org1/connection-1.json 
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' fabric-scripts/hlfv11/composer/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' fabric-scripts/hlfv11/composer/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
cd ../../..
cd fab
cd ~/fabric-tools/fabric-s
cd ~/fabric-tools/fabric-scripts/
ls
cd ..
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' fabric-scripts/hlfv11/composer/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' fabric-scripts/hlfv11/composer/crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' fabric-scripts/hlfv11/composer/crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/ca.crt
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/ca.crt > /tmp/composer/ca-orderer.txt
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' fabric-scripts/hlfv11/composer/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/ca.crt
ls
cd composer-4/
ls
rm org
rm org2
ls
cd org
cd org2
ls
rm 6
rm 665d148346cf69ddd90ff80346d0e473dfbbd4f294084129292272da45e75dcb_sk 
rm Admin@org2.example.com-cert.pem 
rmate connection-2.json 
cd ../org3
ls
rm ca-org3.txt 
rm Admin@org3.example.com-cert.pem 
rm ee58f9a0a3d6bb9d47ccb1ff5a6ffb979c323a2b359a6e3a9a91426bdf10702c_sk 
rmate connection-3.json 
cd ../org4
ls
rm Admin@org4.example.com-cert.pem 
rm a0f7e8ecbdd373c1f5fad2dccba4e93a40ff996c7293578efed268baacb26077_sk 
rm ca-org4.txt 
rmate connection-4.json 
cd ../../fabric-scripts/hlfv11/composer/
composer card create -p ~/fabric-tools/composer-4/org1/connection-1.json -u PeerAdmin -c /tmp/composer-4/org1/Admin@org1.example.com-cert.pem -k ~/fabric-tools/composer-4/org1/*_sk -r PeerAdmin -r ChannelAdmin -f PeerAdmin@main-network-org1.card
ls
composer card create -p ~/fabric-tools/composer-4/org1/connection-1.json -u PeerAdmin -c ~/fabric-tools/composer-4/org1/Admin@org1.example.com-cert.pem -k ~/fabric-tools/composer-4/org1/*_sk -r PeerAdmin -r ChannelAdmin -f PeerAdmin@main-network-org1.card
export ORG2=crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
cp -p $ORG2/signcerts/A*.pem / ~/fabric-tools/composer-4/org2
cp -p $ORG2/keystore/*_sk  ~/fabric-tools/composer-4/org2
cp -p $ORG2/signcerts/A*.pem  ~/fabric-tools/composer-4/org2
export ORG3=crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
cp -p $ORG3/signcerts/A*.pem  ~/fabric-tools/composer-4/org3
cp -p $ORG3/keystore/*_sk  ~/fabric-tools/composer-4/org3
export ORG4=crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
cp -p $ORG4/signcerts/A*.pem  ~/fabric-tools/composer-4/org4
cp -p $ORG4/keystore/*_sk  ~/fabric-tools/composer-4/org4
ls ..
cd ../../..
scp -i ihpc-blk-key-pair.pem -r composer-4/  ubuntu@ec2-13-229-152-124.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/
cd ..
scp -i ihpc-blk-key-pair.pem -r fabric-tools/composer-4/  ubuntu@ec2-13-229-152-124.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/composer-4/  ubuntu@ec2-13-251-43-202.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/composer-4/  ubuntu@ec2-13-251-110-128.ap-southeast-1.compute.amazonaws.com:~/fabric-tools/
ls
cd fabric-
cd fabric-tools/
cd fabric-scripts/hlfv11/composer/
ls
composer card list
composer card delete PeerAdmin@main-network-org1
composer card delete -c PeerAdmin@main-network-org1
composer card import -f PeerAdmin@main-network-org1.card --card PeerAdmin@main-network-org1
cd ../../../
cd ../maintenance-network/
composer network install --card PeerAdmin@main-network-org1 --archiveFile maintenance-network@0.0.18.bna
docker logs peer0.org1.example.com 
docker ps
docker logs peer3.org1.example.com 
composer network install --card PeerAdmin@main-network-org1 --archiveFile maintenance-network@0.0.18.bna
ls
docker logs orderer.example.com 
ls
cd ..
docker ps
cd fabric-tools/
./teardownAllDocker.sh 
./startFabric.sh 
docker logs peer0.org1.example.com 
composer network install --card PeerAdmin@main-network-org1 --archiveFile maintenance-network@0.0.18.bna
cd ../maintenance-network/
composer network install --card PeerAdmin@main-network-org1 --archiveFile maintenance-network@0.0.18.bna
ls
cd fab
cd ../fabric-tools/composer-4/
rmate org1/connection-1.json 
;s
ls
rmate org1/connection-1.json 
cd ..
ls
composer card create -p ~/fabric-tools/composer-4/org1/connection-1.json -u PeerAdmin -c ~/fabric-tools/composer-4/org1/Admin@org1.example.com-cert.pem -k ~/fabric-tools/composer-4/org1/*_sk -r PeerAdmin -r ChannelAdmin -f PeerAdmin@main-network-org1.card
composer card delete -c PeerAdmin@main-network-org1
composer card import -f PeerAdmin@main-network-org1.card --card PeerAdmin@main-network-org1
cd ../maintenance-network/
composer network install --card PeerAdmin@main-network-org1 --archiveFile maintenance-network@0.0.18.bna
cd fabric-tools/
ls
cd composer-4/
ls
cp endorsement-policy.json endorsement-policy-2.json 
cp endorsement-policy.json endorsement-policy-3.json 
cp endorsement-policy.json endorsement-policy-4.json 
rmate endorsement-policy-2
rmate endorsement-policy-2.json 
cd fabric-tools/
ls
cd composer-4/
ls
rmate endorsement-policy-2.json 
rmate endorsement-policy-3.json 
rmate endorsement-policy-4.json 
cd maintenance-network/lib/
ls
rmate logic.js 
nano logic.js 
ls
cd maintenance-network/
ls
rmate lib/logic.js 
cd maintenance-network/
composer-rest-server
composer network start -c PeerAdmin@main-network-org1 -n maintenance-network -V 0.0.18 -o endorsementPolicyFile=/tmp/composer-4/endorsement-policy.json  -A admin -S adminpw
composer network start -c PeerAdmin@main-network-org1 -n maintenance-network -V 0.0.18 -o endorsementPolicyFile=~/fabric-tools/composer-4/endorsement-policy.json  -A admin -S adminpw
composer card import --file networkadmin.card
ls
composer card import -f admin@maintenance-network.card 
composer card delete -c admin@maintenance-network
composer card import -f admin@tutorial-network.card
ls
composer card import -f admin@maintenance-network.card 
composer network pign -c admin@maintenance-network.card 
composer network pign -c admin@maintenance-network
composer network ping -c admin@maintenance-network
docker stats
ls
ls 
cd fabric-tools/fabric-scripts/hlfv11/composer/
ls
sudo nano docker-compose.yml 
ls
cd ..
ls
sudo nano createPeerAdminCard.sh 
cd ..
ls
cd ..
ls
cd composer-4/
ls
cd org
cd org1
ls
rm 812a87896fe31b6a5ac15bdec8cf6ba2bd36b0208c46a66ad9978a6f448beadb_sk 
rm Admin@org1.example.com-cert.pem 
rm connection-1.json.save 
ls
docker ps
ls
sudo nano connection-1.json 
rmate
wget -O /usr/local/bin/rsub \https://raw.github.com/aurora/rmate/master/rmate
wget -O /usr/local/bin/rsub \https://raw.githusub.com/aurora/rmate/master/rmate
sudo wget -O /usr/local/bin/rsub \https://raw.github.com/aurora/rmate/master/rmate
rsub connection-1.json 
# chmod a+x /usr/local/bin/rsub
sudo chmod a+x /usr/local/bin/rsub
rsub connection-1.json 
cd fabric-tools/composer-4/org1/
rmate connection-1.json 
rsub connection-1.json 
ls fabric-tools/fabric-scripts/hlfv11/
cat fabric-tools/fabric-scripts/hlfv11/startFabric.sh 
cd fabric-tools/fabric-scripts/hlfv11/composer/
ls
sl
ls
sudo nano ../startFabric.sh 
ls
rm composer-genesis.block 
rm composer-channel.tx 
rm -r crypto-config
ls
rm PeerAdmin@main-network-org1.card 
ls
sudo nano configtx.yaml 
ls
cat howtobuild.txt 
cryptogen generate --config=./crypto-config.yaml
ls
../../../fabric-samples/bin/cryptogen generate --config=./crypto-config.yaml
export FABRIC_CFG_PATH=$PWD
../../../fabric-samples/bin/configtxgen -profile ComposerOrdererGenesis -outputBlock ./composer-genesis.block
../../../fabric-samples/bin/configtxgen  -profile ComposerChannel -outputCreateChannelTx ./composer-channel.tx -channelID composerchannel
ls
sudo nano docker-compose.yml 
composer/crypto-config/peerOrganizations/
ls crypto-config/peerOrganizations/org1.example.com/ca/
ls crypto-config/peerOrganizations/org1.example.com/ca
ls crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/ca.crt
cat crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/ca.crt
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
ls
rmate ihpc-blk-key-pair.pem 
rmate admin@maintenance-network.card 
ls
rsub prereqs-ubuntu.sh 
ls
ls 
cd fabric-tools/composer-4/
ls
cd ../fabric-scripts/hlfv11/composer/
ls
cd crypto-config/
ls
cd ..
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/ca.crt
ORG1=crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
cp -p $ORG1/signcerts/A*.pem / ~/fabric-tools/composer-4/org1
cp -p $ORG1/keystore/*_sk  ~/fabric-tools/composer-4/or
cp -p $ORG1/signcerts/A*.pem ~/fabric-tools/composer-4/org1
cp -p $ORG1/keystore/*_sk  ~/fabric-tools/composer-4/org1
composer card create -p ~/fabric-tools/composer-4/org1/connection-1.json -u PeerAdmin -c ~/fabric-tools/composer-4/org1/Admin@org1.example.com-cert.pem -k ~/fabric-tools/composer-4/org1/*_sk -r PeerAdmin -r ChannelAdmin -f PeerAdmin@main-network-org1.card
ORG2=crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
cp -p $ORG2/signcerts/A*.pem  ~/fabric-tools/composer-4/org2
cp -p $ORG2/keystore/*_sk  ~/fabric-tools/composer-4/org2
export ORG3=crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
cp -p $ORG3/signcerts/A*.pem  ~/fabric-tools/composer-4/org3
cp -p $ORG3/keystore/*_sk  ~/fabric-tools/composer-4/org3
export ORG4=crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
cp -p $ORG4/signcerts/A*.pem  ~/fabric-tools/composer-4/org4
cp -p $ORG4/keystore/*_sk  ~/fabric-tools/composer-4/org4
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/ca.crt
gedit
sudo apt install gedit
gedit
ls
gedit prereqs-ubuntu.sh 
sudo apt remove gedit
vim 
cd fabric-tools/composer-4/
ls
cd org
cd org1
vim connection-1.json
sudo connection-1.json
sudo nano connection-1.json
cd org2
cd ../org22
cd ../org2
ls
rm a48fef43c9550cd54af5c2bf83b83d5c6c3da451413c770392b32fe6e22b78c6_sk 
rm Admin@org2.example.com-cert.pem 
rm connection-2.json
cd ..
rm org3/*
rm org4/*
cp org1/connection-1.json org2/connection-2.json
cp org1/connection-1.json org3/connection-3.json
cp org1/connection-1.json org4/connection-4.json
ls
ORG1=crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
cp -p $ORG1/signcerts/A*.pem / ~/fabric-tools/composer-4/org1
cp -p $ORG1/keystore/*_sk  ~/fabric-tools/composer-4/or
cd org1
s
ls
rm connection-1.json.save 
ls
cd ..
ls org2
cd ..
cd composer-4/
ls org1
ls org4
ls org3
sudo nano org2/connection-2.json 
sudo nano org3/connection-3.json 
sudo nano org3/connection-4.json 
sudo nano org4/connection-4.json 
;s
ls
cd ..
ls
./startFabric.sh 
./stopFabric.sh 
cd composer-4/
sudo nano org1/connection-1.json 
sudo nano org2/connection-2.json 
sudo nano org3/connection-3.json 
sudo nano org4/connection-4.json 
scp -i ihpc-blk-key-pair.pem -r fabric-tools/composer-4/  ubuntu@172.31.9.124:~/fabric-tools/
cd ../..
scp -i ihpc-blk-key-pair.pem -r fabric-tools/composer-4/  ubuntu@172.31.9.124:~/fabric-tools/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/composer-channel.tx   ubuntu@172.31.9.124:~/fabric-tools/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/composer-channel.tx   ubuntu@172.31.9.124:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/composer-genesis.block .tx   ubuntu@172.31.9.124:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/composer-genesis.block ubuntu@172.31.9.124:~/fabric-tools/fabric-scripts/hlfv11/composer/
ls
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/crypto-config ubuntu@172.31.9.124:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/crypto-config.yaml  ubuntu@172.31.9.124:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/configtx.yaml .yaml  ubuntu@172.31.9.124:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/configtx.yaml ubuntu@172.31.9.124:~/fabric-tools/fabric-scripts/hlfv11/composer/
cd fabric-tools/
./startFabric.sh 
scp -i ihpc-blk-key-pair.pem -r fabric-tools/composer-4/  172.31.44.159:~/fabric-tools/
cd ..
scp -i ihpc-blk-key-pair.pem -r fabric-tools/composer-4/  172.31.44.159:~/fabric-tools/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/configtx.yaml ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/crypto-config ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/crypto-config.yaml  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/configtx.yaml  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/composer-genesis.block \  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/composer-channel.tx   ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/composer/
ls crypto-config/peerOrganizations/org1.example.com/ca/
cd fabric-tools/fabric-scripts/hlfv11/composer/
ls crypto-config/peerOrganizations/org2.example.com/ca/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/composer-channel.tx   ubuntu@172.31.42.98:~/fabric-tools/fabric-scripts/hlfv11/composer/
cd ../../..
cd ..
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/composer-channel.tx   ubuntu@172.31.42.98:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/composer-genesis.block \  ubuntu@172.31.42.98:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/configtx.yaml  ubuntu@172.31.42.98:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/crypto-config.yaml  ubuntu@172.31.42.98:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/crypto-config ubuntu@172.31.42.98:~/fabric-tools/fabric-scripts/hlfv11/composer/
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/composer/configtx.yaml ubuntu@172.31.42.98:~/fabric-tools/fabric-scripts/hlfv11/composer/
ls crypto-config/peerOrganizations/org3.example.com/ca/
cd fabric-tools/fabric-scripts/hlfv11/composer/
ls crypto-config/peerOrganizations/org3.example.com/ca/
cd ../..
ls
cd ..
cd fabric-samples/
ls
cd basic-network/
ls
peer 
peer chaincode
ls
cd fabric-tools/fabric-scripts/hlfv11/
ls
cd composer/
ls
sudo nano docker-compose.yml 
cd ../..
cd ,,
cd ..
./startFabric.sh 
sudo nano fabric-scripts/hlfv11/docker-compose.yml 
sudo nano fabric-scripts/hlfv11/composer/docker-compose.yml 
./startFabric.sh 
docker ps
docker exec -it cli
docker exec -it cli bash
./teardownAllDocker.sh 
cd fabric-scripts/hlfv11/composer/
ls
sudo nano docker-compose.yml 
cd ../..
ls
cd ..
./startFabric.sh 
docker ps
docker exec -it cli bash
./teardownAllDocker.sh 
cd fabric-
cd fabric-tools/
ls
cd fabric-scripts/
ls
cd hlfv11/
ls
cd chaincode/
ls
cd ..
cd composer/
ls
cd ..
mv chaincode/* fabric-scripts/hlfv11/chaincode/
sudo mv chaincode/* fabric-scripts/hlfv11/chaincode/
cd fabric-scripts/hlfv11/
;s
ls
cd composer/
ls
sudo nano docker-compose.yml 
ls
cd ..
;s
ls
cp -r chaincode/ ../chaincode
ls
ks
ls
cd fabric-
cd fabric-tools/
ls
cd fabric-scripts/
ls
cp chaincode/ hlfv11/composer/chaincode/
cp -r chaincode/ hlfv11/composer/chaincode/
cd hlfv11/composer/
ls
sudo nano docker-compose.yml 
cd ../..
cd ..
./startFabric.sh 
docker ps
docker logs cli
docker exec -it cli bash
ls
cd fabric-scripts/
ls
cd hlfv11/composer/
sudo nano docker-compose.yml 
docker exec -it cli bash
ls
cd cha
cd channel-artifacts/
ls
cd ..
ls
cp composer-channel.tx channel-artifacts/
sudo cp composer-channel.tx channel-artifacts/
sudo cp composer-genesis.block channel-artifacts/
docker exec -it cli bash
ls
cat howtobuild.txt 
docker exec -it cli bash
ls
go get chaincode/
echo $GOPATH
cd ../..
cd ..
ls
echo $PATH
sudo tar -zxvf go1.7.1.linux-amd64.tar.gz -C /usr/local/
ls
cd /usr/local
ls
sudo nano ~/.bashrc
source ~/.bashrc
go
echo $GOPATH
cd ~/fabric-tools/fabric-scripts/hlfv11/
ls
cd composer/
ls
go get chaincode/
go help gopath
go env
docker exec -it cli bash
sudo nano docker-compose.yml 
-p github.com/hyperledger/fabric/examples/chaincode/go
docker exec -it cli bash
cd fabric-tools/fabric-scripts/hlfv11/composer/
ls
cat docker-compose.yml 
ls
cd chaincode/
ls
cd high-throughput/
ls
cd chaincode/
ls
cd ..
cd scripts/
ls
cd ..
ls
cd chaincode/high-throughput/chaincode/
cd ..
ls chaincode/
ls
ls chaincode/
cd ..
ls
cd ..
ls
ls chaincode/high-throughput/chaincode/
cd ..
ls chaincode/high-throughput/chaincode/
cd ..
ls
ls chaincode/
cd ..
ls
rm -r chaincode
cd fabric-
cd fabric-tools/
rm chaincode/
rm -r chaincode/
cd fabric-scripts/
rm chaincode/
rm -r chaincode/
cd hlfv11/
rm -r chaincode/
sudo rm -r chaincode/
cd composer/
sudo rm -r chaincode/
ls
cd ..
;s
cd ..
ls
cd ..
ls
cd chaincode/
ls
mv high-throughput.go high-throughput/chaincode/
cd ..
ls
cd fabric-samples/
cd ..
ls
cp -r chaincode/ fabric-scripts/hlfv11/
cd fabric-scripts/hlfv11/
ls
cp -r chaincode/ composer/
docker exec -it cli bash
ls
cd chaincode/
ls
cd ..
cd composer/
ls
cd chaincode/
ls
cd ..
ls
cd ..
ls
cd ..
cp -r chaincode/ fabric-scripts/
ls
cd fabric-scripts/
ls
cd chaincode/
ls
cd ../
cd com
cd hlfv11/
ls
docker exec -it cli bash
ls
cd chaincode/
ls
cd high-throughput/
ls
cd ..
ls
ls chaincode/
cd ..
ls
ls chaincode/
cd ..
ls chaincode/
cd ..
ls
cd fabric-tools/
ls
ls chaincode/
ls
cd ..
docker stats
docker logs dev-peer0.org1.example.com-composerchannel-1.0 
ls
cd fabric-tools/
cd fabric-scripts/
cd hlfv11/composer/
ls
sudo nano docker-compose.yml 
cd ..
ls
cd chaincode/high-throughput/scripts/
sudo nano install-chaincode.sh 
sudo nano instantiate-chaincode.sh 
sudo nano update-invoke.sh 
sudo nano get-invoke.sh 
sudo nano many-updates.sh 
ls
cat install-chaincode.sh 
composer-rest-service
composer-rest-server
composer card list
composer-rest-server
cat install-chaincode.sh 
cd ../../..
la
cd ..
la
cd ..
ls
sudo nano fabric-scripts/hlfv11/composer/docker-compose.yml 
cd ..
scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/ ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/ ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode ubuntu@172.31.44.159:~/fabric-tools/
sudo nano fabric-scripts/hlfv11/composer/docker-compose.yml 
sudo nano fabric-tools/fabric-scripts/hlfv11/composer/docker-compose.yml 
docker ps
docker logs peer3.org1.example.com 
ocker logs peer3.org1.example.com 
cd fabric-tools/fabric-scripts/chaincode/high-throughput/scripts/
ls
sudo nano instantiate-chaincode.sh 
cd ../..
cd ..
cd hlfv11/
sudo nano chaincode/high-throughput/scripts/instantiate-chaincode.sh 
cd ../..
ls
./teardownAllDocker.sh 
./startFabric.sh 
docker ps
docker exec -it cli bash
time docker exec -it cli bash peer/scripts/many-updates.sh tst 100 +
time docker exec -it cli bash peer/scripts/get-invoke.sh tst
time docker exec -it cli bash peer/scripts/many-updates.sh tst 100 +
ls
time docker exec -it cli bash peer/scripts/get-invoke.sh myvar
docker exec -it cli bash
docker sp
docker ps
docker logs dev-peer0.org1.example.com-composerchannel-1.0 
docker logs peer0.org1.example.com 
ls
cd fabric-tools/
./startFabric.sh 
ls
docker exec -it cli 
docker exec -it cli bash
cd ..
ls
cd fabric-tools/
ls
cd fabric-samples/
ls
cd scripts/
ls
cd ..
cd first-network/
ls
cd scripts/
;s
ls
cat script.sh 
./script.sh 
ls
cat log.txt 
cd ..
ls
cd ..
ls
docker ps
./teardownAllDocker.sh 
./startFabric.sh 
docker ps
docker exec -it cli bash
./teardownAllDocker.sh 
ls
cd ./startF
./startFabric.sh 
docker exec -it cli bash
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
docker logs orderer.example.com 
sudo nano fabric-scripts/hlfv11/chaincode/high-throughput/scripts/many-updates
sudo nano fabric-scripts/hlfv11/chaincode/high-throughput/scripts/many-updates.sh 
exit
l
ls
cd fabric-tools/
ls
cd fabric-scripts/
ls
cd hlfv11/
ls
cd chaincode/
ls
cd high-throughput/
ls
cd scripts/
ls
cp install-chaincode.sh install-tuna.sh 
sudo nano install-
sudo nano install-tuna.sh 
cd ../../..
ls
ls chaincode/
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd fabric-tools/
ls
cp -r fabric-material/chaincode/ fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/
cd fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/
cd ..
ls
cd scripts/
ls
sudo nano install-tuna.sh 
cd ../..
cd ..
ls
cd hlfv11/
cd composer/
sudo nano docker-compose.yml 
l
ls
cd ../chaincode/high-throughput/scripts/
sudo nano install-chaincode.sh 
cp ../chaincode/high-throughput.go ./
ls
sudo nano install-chaincode.sh 
cd ..
ls
cd ..
ls
cd ..
sudo nano composer/docker-compose.yml 
cd ../..
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
ls
ls
git clone https://github.com/hyperledger/education.git
cd education/LFS171x/fabric-material/
ls
cd tuna-app/
ls
cd ..
cd fabric-tools/
ls
./startFabric.sh 
cd ..
mv education/LFS171x/fabric-material/ fabric-tools/
cd fabric-
cd fabric-tools/
cd fabric-material/tuna-app/
npm install
node registerAdmin.js
node server.js
node registerAdmin.js
sudo nano registerAdmin.js 
node registerAdmin.js
docker ps
node registerAdmin.js
sudo nano registerAdmin.js 
node registerAdmin.js
node registerUser.js 
node server.js 
ls
sudo nano server.js 
sudo nano controller.js 
sudo nano server.js 
node server.js 
sudo nano server.js 
sudo nano controller.js 
sudo nano routes.js 
sudo nano package.json 
sudo nano client/app.js 
ls
cd src/
ls
sudo nano recordTuna.js 
cd ..
npm install
ls
node server.js 
sudo nano node_modules/grpc/src/node/src/client.js 
ls
sudo nano registerAdmin.js 
sudo nano registerUser.js 
ls
cd src/
ls
sudo nano changeTunaHolder.js 
sudo nano queryAllTuna.js 
ls
sudo nano queryt
sudo nano queryTuna.js 
ls
cd ..
ls
sudo nano client/app.js 
node server.js 
npm i
ls
node registerAdmin.js
node registerUser.js
sudo nano registerUser.js
node server.js 
grep -R "test" /var/x/
grep -R "mychannel" ../tuna-app/
sudo nano controller.js 
grep -R "mychannel" ../tuna-app/
sudo nano controller.js 
vim controller.js 
sudo nano controller.js 
grep -R "mychannel" ../tuna-app/
sudo vim node_modules/fabric-client/lib/EventHub.js 
grep -R "mychannel" ../tuna-app/
sudo vim src/recordTuna.js 
sudo vim src/changeTunaHolder.js 
node server.js 
ls
cd ..
ls
cd basic-network/
ls
sudo nano start.sh 
ls
cd ..
ls
cd tuna-app/
ls
cat startFabric.sh 
ls
cd ..
ls
sudo cp -r fabric-material/tuna-app/ fabric-scripts/hlfv11/
sudo cp -r fabric-scripts/hlfv11/tuna-app/ fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/
docker exec -it cli bash
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
ls
cd fabric-tools/
ls
sudo nano startFabric.sh 
ls
sudo nano fabric-scripts/hlfv11/startFabric.sh 
sudo nano fabric-scripts/hlfv11/composer/docker-compose.yml 
./startFabric.sh 
cd fabric-scripts/hlfv11/tuna-app/
ls
node server.js 
ls
cd ../composer/
ls
cd chaincode/
ls
cd high-throughput/
ls
cd chaincode/
ls
cd ..
cd ../..
cd ..
cd chaincode/
ls
cd high-throughput/
ls
cd chaincode/
ls
mv chaincode/ ..
mv -r chaincode/ ..
mv chaincode/ ../
mv -r chaincode/ ../
cd ..
ls
mv chaincode/tuna-app/ ./
sudo mv chaincode/tuna-app/ ./
sudo mv chaincode/chaincode/ ./
ks
sudo mv chaincode/chaincode/ ./chaincode-tuna
ls
cd ..
ls
cd high-throughput/
cd ..
mv -r high-throughput/tuna-app/ ./
sudo mv high-throughput/tuna-app/ ./
sudo mv high-throughput/chaincode-tuna/ ./
ls
ls high-throughput/
cd high-throughput/
ls
ls chaincode/
ls scripts/
ls
cd ..
chaincode
cd chaincode
cd chaincode-tuna/
ls
ls tuna-app/
ls
cd ..
ls
sudo mv tuna-app/ high-throughput/chaincode/
cd high-throughput/chaincode/tuna-app/
ls
cd ..
rm tuna-app/
rm -r tuna-app/
sudo rm -r tuna-app/
ls
cd ..
ls
cd ..
ls
cd fabric-sc
cd fabric-tools/fabric-scripts/
;s
ls
cd hlfv11/
;s
ls
cd chaincode/
ls
sudo mv chaincode-tuna/ high-throughput/chaincode/
ls
cd high-throughput/
ls
cd scripts/
lls
ls
cp instantiate-chaincode.sh instantiate-tuna.sh 
sudo nano instantiate-tuna.sh 
cd fabric-tools/fabric-scripts/
ls
sudo nano hlfv11/chaincode/high-throughput/scripts/install-tuna.sh 
cd ..
ls
cd fabric-scripts/
;s
ls
cd hlfv11/
;s
ls
cd tuna-app/
node server.js 
node registerAdmin.js 
node registerUser.js 
rm -r /home/ubuntu/.hfc-key-store/
ls
node registerUser.js 
node registerAdmin.js 
node registerUser.js 
node server.js 
cd fabric-tools/
ls
cd fabric-scripts/
ls
cd hlfv11/
ls
ls
docker exec -it cli bash
ls
cd fabric-tools/
ls
sudo nano fabric-scripts/hlfv11/composer/docker-compose.yml 
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
ls
cd fabric-tools/fabric-scripts/hlfv11/high-throughput
ls
cd chaincode/
ls
cd ..
cd chaincode/high-throughput/scripts/
sudo nano instantiate-tuna.sh 
cd ../../..
cd ..
cd fabric-scripts/
ls
cd hlfv11/
;s
ls
cd tuna-app/
node server.js 
cd fabric-tools/
s
ls
cd fabric-scripts/hlfv11/chaincode/high-throughput/scripts/
ls
cd ../../..
ls
cd ../../..
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/install-tuna.sh  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/chaincode-tuna/  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/
cd fabric-tools/
./startFabric.sh 
docker exec -it cli bash
docker logs
docker logs orderer.example.com 
docker ps
docker logs dev-peer0.org1.example.com-tuna-app-1.0 
ls
cd fabric-tools/fabric-scripts/
ls
cd hlfv11/
ls
cp -r tuna-app/
cp -r tuna-app/ main-app
cd main-app/
ls
sudo nano package.json 
cd ..
grep -R "tuna" ./main-app/
ls
cd tuna-app/
ls
sudo nano client/index.html 
vim client/index.html 
sudo nano client/index.html 
ls
cd fabric-tools/
ls
cd fabric-scripts/
ld
ls
cd hlfv11/
ls
sudo nano main-app/client/
sudo nano main-app/client/app.js 
cd fabric-tools/fabric-scripts/hlfv11/main-app/
rmate controller.js 
rmate routes.js 
ls
rmate prereqs-ubuntu.sh 
ls
cd fabric-tools/fabric-scripts/hlfv11/main-app/
ls
rmate client/index.html 
rmate client/app.js 
ls
node i
npm i
node server.js 
rmate prereqs-ubuntu.sh 
sl
ls
cd fabric-tools/fabric-scripts/
ls
cd hlfv11/main-app/
ls
l
rmate registerAdmin.js 
rmate registerUser.js 
rmate routes.js 
ls
rmate controller.js 
ls
..
ls
cd fabric-tools/
ls
cd fabric-scripts/hlfv11/
ls
cd main-app/
ls
rmate prereqs-ubuntu.sh 
ratom
mv /usr/local/bin/rmate /usr/local/bin/ratom
sudo mv /usr/local/bin/rmate /usr/local/bin/ratom
ratom
ratom prereqs-ubuntu.sh 
cd fabric-tools/fabric-scripts/hlfv11/
cd chaincode/high-throughput/chaincode/
ls
cd chaincode-tuna/
ls
cd tuna-app/
ls
sudo mv tuna-chaincode.go main-chaincode.go
ratom main-chaincode.go
ls
mv main-chaincode.go main-app.go
rmate prereqs-ubuntu.sh 
ratonm prereqs-ubuntu.sh 
ratom prereqs-ubuntu.sh 
cd fabric-tools/fabric-scripts/hlfv11/main-app/
ls
ratom controller.js 
ls
cd ..
ls
cd chaincode/high-throughput/scripts/install-tuna.sh
cd chaincode/high-throughput/scripts/
sudo nano install-tuna.sh 
ls
sudo nano instantiate-chaincode.sh 
ls
cd ../..
cd ../main-app/
ls
cd src
ls
sudo mv changeTunaHolder.js changeToolwear.js 
sudo mv queryAllTuna.js queryAllMachine.js 
sudo mv queryTuna.js queryMachine.js 
sudo mv recordTuna.js recordMachine.js 
ratom recordMachine.js 
ratom ../routes.js 
ratom queryAllMachine.js 
ratom queryMachine.js 
ls
ratom changeToolwear.js 
ls
cd ..
ls
sudo nano package.json 
npm i
node server.js 
ls
docker ps
cd ../../..
./startFabric.sh 
cd fabric-scripts/hlfv11/main-app/
server.hs
node server.js 
ls
cd fabric-tools/fabric-scripts/hlfv11/
ls
sudo rm -r high-throughput/
cd chaincode/high-throughput/scripts/
cp install-tuna.sh install-main.sh 
cp instantiate-tuna.sh instantiate-main.sh
rmate install-main.sh 
ratom install-main.sh 
ratom instantiate-main.sh 
cd ../..
cd ../main-app/
node server.js 
docker ps
docker exec -it cli bash
ls
cd fabric-tools/
cd fabric-scripts/hlfv11/main-app/
ls
ratom client/app.js 
ls
ratom client/index.html 
ls
ratom controller.js 
ratom src/changeToolwear.js 
ratom src/query
ratom src/queryAllMachine.js 
rmate prereqs-ubuntu.sh 
ratom prereqs-ubuntu.sh 
cd fabric-tools/fabric-scripts/hlfv11/main-app/src/
ls
cd ..
ls
cd src
ratom queryMachine.js 
ratom queryAllMachine.js 
cd fabric-tools/fabric-scripts/hlfv11/
cd main-app/
ls
ratom src/changeToolwear.js 
ls
cd src/
sudo nano queryAllMachine.js 
ls
cd ..
ls
cd ../..
cd ..
ls
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/install-main.sh  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/instantiate-main.sh  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/chaincode-tuna/tuna-app/main-app.go ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/chaincode-tuna/tuna-app/
cd fabric-tools/fabric-scripts/
cd hlfv11/
cd main-app/
ratom controller.js 
npm i
ratom routes.js 
sudo nano routes.js 
ratom client/app.js 
docker exec -it cli bash
cd fabric-tools/
ls
cd fabric-scripts/
;s
ls
cd hlfv11/
ls
cd tuna-app/
sudo nano server.js 
node server.js 
ratom controller.js 
ratom controller.js  -f
ratom controller.js -f
ratom -f controller.js -f
ls
ratom controller.js 
ratom controller.js -f
cat controller.js 
ratom controller.js -f
sudo chmod -R 777 controller.js 
ratom controller.js -f
ratom controller.js
cd fabric-tools/fabric-scripts/hlfv11/main-app/
ratom client/app.js 
cd ..
ls
grep -R "tuna" main-app/
cd ..
cd hlfv11/
ls
cp -r main-app-bkp/
cp -r main-app-bkp/ .
cp -r main-app main-app-bkp
cd main-app
ls
rm -r node_modules/
npm i
cd ..
grep -R "tuna" main-app/
ls
cd main-app
ls
rm README.md 
rm startFabric.sh 
rm README.md 
grep -R "tuna" main-app/
cd ..
grep -R "tuna" main-app/
cd main-app
ls
ratom controller.js 
cd fabric-tools/
cd fabric-scripts/hlfv11/
ls
cd main-app
ls
ratom client/
ratom client/app.js 
cd ..
grep -R "add_machine" main-app/
ratom main-app/routes.js 
ratom main-app/controller.js 
cd main-app
cd ..
grep -R "number of" main-app/
grep -R "number of arguments" main-app/
grep -R "incorrect number of arguments" main-app/
grep -R "number of arguments. Expecting" main-app/
cd main-app
npm i
ls
cd ../chaincode/high-throughput/chaincode/chaincode-tuna/tuna-app/
ratom main-app.go
cd ../..
cd ..
ratom scripts/instantiate-main.sh 
cd ,,.,,
cd ..
ls
cd ..
cd main-app
npm i
node server.js 
cd ../../..
./teardownAllDocker.sh 
cd fabric-scripts/hlfv11/main-app
npm i
node server.js 
cd ..
ls
cd chaincode/
ls
cd high-throughput/
ls
grep -R "number of arguments. Expecting" chaincode/
cd ../../main-app
ls
rm -r node_modules/
npm install
node server.js 
ratom node_modules/grpc/src/node/src/client.js
cd ..
ls
grep -R "number of arguments. Expecting" ./
grep -R "number of arguments. Expecting" chaincode/high-throughput/
grep -R "tuna" chaincode/high-throughput/
cd chaincode/high-throughput/scripts/
ls
ratom install-main.sh 
ratom instantiate-main.sh 
rmate fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/instantiate-main.sh 
ratom fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/instantiate-main.sh 
cd fabric-tools/fabric-scripts/
cd chaincode/
l;s
ls
cd high-throughput/
cd chaincode/
ls
cd ..
rm -r chaincode_example02/
cd ..
rm -r chaincode/
cd hlfv11/
cd chaincode/high-throughput/
cd chaincode/
ls
mv chaincode-tuna/ chaincode-main
cd chaincode-main/
mv tuna-app/ main-app
cd ../../..
\cd ../..
cd ..
docker ps
./startFabric.sh 
docker exec -it cli bash
ls
cd fabric-scripts/
ls
grep -R "Expecting 5" ./
cd hlfv11/chaincode/
ls
grep -R "Expecting 5" ./
cd high-throughput/
ls
cd chaincode/
ls
cd chaincode-main/
ls
cat sample-chaincode.go 
ratom sample-chaincode.go 
cd ../../..
cd ../..
cd ..
grep -R "Expecting 5" ./
cd chaincode/
cd ..
rm -r chaincode/
rm fabric-samples/
rm -r fabric-samples/
sudo rm -r fabric-samples/
cd fabric-scripts/
ls
cd hlfv11/
l
cd ..
cd hlfv11/
grep -R "5" ./
grep -R "5" ./main-app
grep -R " 5" ./main-app
grep -R "Expected 5" ./main-app
grep -R "Expecting 5" ./main-app
ls
grep -R "vessel" ./main-app
grep -R "vessel" ./tuna-app
grep -R "vessel" ./main-app
grep -R "holder" ./main-app
grep -R "" ./main-app
grep -R "vessel" ./chaincode/high-throughput/chaincode/chaincode-main/main-app/
grep -R "vessel" ./chaincode/high-throughput/chaincode/chaincode-main/
grep -R "5" ./chaincode/high-throughput/chaincode/chaincode-main/
cd chaincode/high-throughput/chaincode/chaincode-main/
ls
rm sample-chaincode.go 
cd main-app/
ls
cat ../../../scripts/install-main.sh 
ratom main-app.go
cd ../..
cd ..
cd chaincode/high-throughput/scripts/
sudo nano instantiate-main.sh 
rmate instantiate-main.sh 
ratom instantiate-main.sh 
cd ..
cd ../main-app
rm node_modules/
rm -r node_modules/
ls
cd src/
ls
ratom recordMachine.js 
ls
ratom queryMachine.js 
ratom recordMachine.js 
cd ..
npm install
node server.js 
cd ../../..
./teardownAllDocker.sh 
cd fabric-scripts/
cd hlfv11/main-app
rm -r node_modules/
npm install
node server.js 
rm -r node_modules/
npm install
node server.js 
echo $GOPATH

node server.js 
docker ps
docker logs peer0.org1.example.com 
docker logs orderer.example.com 
echo $GOPATH
echo $GOROOT
cd fabric-tools/
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
ratom fabric-scripts/hlfv11/chaincode/high-throughput/scripts/instantiate-main.sh 
./teardownAllDocker.sh 
./startFabric.sh 
cd fabric-scripts/hlfv11/
l
cd main-app
ls
ratom ../chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go 
grep -R "queryAll" chaincode/high-throughput/
cd fabric-tools/fabric-scripts/hlfv11/
ls
cd main-app/
npm i
node server.js 
nom i
npm i
node server.js 
npm i
node server.js 
docker exec -it cli bash
cd ../../
cd ..
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
./startFabric.sh 
docker exec -it cli bash
./teardownAllDocker.sh 
cd fabric-scripts/hlfv11/main-app
rm node_modules/
rm -r node_modules/
ls
npm install
node server.js 
cd ../../..
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
./teardownAllDocker.sh 
cd ..
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/main-app.pak  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts
cp fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/install-main.sh fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/install-pak.sh
ratom fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/install-pak.sh 
cd fabric-tools/
./startFabric.sh 
docker exec -it cli bash
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
ls
cd fabric-tools/
ls
./startFabric.sh 
ls
ratom startFabric.sh 
cd fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/chaincode-main/main-app/
ls
ratom main-app.go 
docker exec -it cli bash
docker ps
cd fabric-tools/fabric-scripts/hlfv11/main-app/
node server.js 
npm install
node server.js 
npm install
node server.js 
npm i
node server.js 
npm i
node server.js 
npm i
node server.js 
npm i
node server.js 
;s
ls
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/main-app.pak  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts
docker logs peer0.org1.example.com 
docker logs peer2.org1.example.com 
ls
cd fabric-tools/fabric-scripts/hlfv11/main-app
ls
cd src/
ls
cp changeToolwear.js getToolwear.js
cd ..
ls
ratom client/index.html 
ratom client/app.js 
ls
ratom controller.js 
ls
ratom src/getToolwear.js 
ratom routes.js 
cd fabric-tools/fabric-scripts/hlfv11/main-app
npm i
node server.js 
npm i
node server.js 
npm i
node server.js 
rm -r node_modules/
npm i
node server.js 
npm i
node server.js 
npm i
node server.js 
npm i
node server.js 
ls
cd fabric-tools/fabric-scripts/
ls
cd ..
ls
ls
cd fabric-tools/
cd fabric-scripts/
ls
cd hlfv11/
ls
cd main-app
ls
cd ..
ratom chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go 
cd chaincode/high-throughput/
ls
cd chaincode/chaincode-main/main-app/
;s
ls
cp main-app.go main-app-bkp.go 
cat main-app.go 
cd ../../../..
cd ../../..
cd ..
cd fabric-tools/
./statr
./startFabric.sh 
docker exec -it cli bash
./teardownAllDocker.sh 
./startFabric.sh 
rm fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app-bkp.go 
docker exec -it cli bash
./teardown
./teardownAllDocker.sh 
./startFabric.sh t
docker exec -it cli bash
cd fabric-tools/
./startFabric.sh 
docker ps
ratom fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go 
cd ..
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput//chaincode/chaincode-main/main-app/
docker exec -it cli bash
cd fabric-tools/
./teardownAllDocker.sh 
./startFabric.sh 
cd ..
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput//chaincode/chaincode-main/main-app/
cat fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput//chaincode/chaincode-main/main-app/
docker exec -it cli bash
cd fabric-tools/fabric-scripts/
ls
cd hlfv11/
ls
ratom main-app/controller.js 
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/main-app.pak  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts
ratom chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go 
cd fabric-tools/fabric-scripts/
ratom chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go 
ls
cd hlfv11/
ratom chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go 
ratom prereqs-ubuntu.sh 
cd fabric-tools/fabric-scripts/hlfv11/
ls
ratom main-app/controller.js 
ratom chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go 
cd ../../
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
ls
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/main-app.pak  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/main-app-new.pak  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput//chaincode/chaincode-main/main-app/
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/main-app-new.pak  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts
cd fabric-
cd fabric-tools/
./teardownAllDocker.sh 
./startFabric.sh t
docker exec -it cli bash
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts/main-app.pak  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/scripts
cd fabric-tools/fabric-scripts/hlfv11/main-app
npm i
node server.js 
ratom ../chaincode/high-throughput/scripts/install-pak.sh 
sudo nano ../chaincode/high-throughput/scripts/insta
sudo nano ../chaincode/high-throughput/scripts/install-pak.sh 
ls
ratom controller.js 
ratom client/app.js 
ratom client/index.html 
cd fabric-tools/fabric-scripts/hlfv11/main-app
npm i
node server.js 
cd fabric-tools/fabric-scripts/hlfv11/
ratom chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go 
ls
cd fabric-tools/
ls
vi startFabric.sh 
vi _loader.sh 
cd fabric-scripts/
ls
cd hlfv11/
ls
vi startFabric.sh 
cd ..
ls
./startFabric.sh 
docker ps
docker exec a3fc8856260e  /bin/bash
docker exec -it a3fc8856260e  /bin/bash
ls
cd fabric-scripts/
ls
cd hlfv11/
ls
cd chaincode/
ls
cd high-throughput/
ls
cd chaincode/
ls
cd chaincode-main/
ls
cd main-app/
ls
vi main-app.go 
cd ..
ls
cd ..
ls
vi high-throughput.go 
cd ..
c d..
cd ..
ls
docker exec a3fc8856260e  /bin/bash
docker exec -it a3fc8856260e  /bin/bash
ls
cd fabric-scripts/
ls
cd hlfv11/
ls
cd main-app
ls
node server.js 
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput/chaincode/chaincode-main/main-app/main-app.go  ubuntu@172.31.44.159:~/fabric-tools/fabric-scripts/hlfv11/chaincode/high-throughput//chaincode/chaincode-main/main-app/
docker exec -it cli bash
cd fabric-
cd fabric-tools/
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
ps aux
cd fabric-tools/fabric-scripts/
cd main
cd hlfv11/
cd main-app
ls
npm i
node server.js 
cd fabric-tools/fabric-scripts/hlfv11/main-app
npm i
node server.js 
cd ../../..
./teardownAllDocker.sh 
cd fabric-scripts/hlfv11/main-app
npm io
npm i
node server.js 
npm i
node server.js 
ls
ratom controller.js 
cd fabric-tools/
./startFabric.sh 
docker exec -it cli bash
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
cd fabric-tools/fabric-scripts/
ls
cd hlfv11/main-app
node server.js 
node register
node registerUser.js 
rm /home/ubuntu/.hfc-key-store/*
node registerUser.js 
node registerAdmin.js 
node registerUser.js 
node server.js 
cd ..
ls
cd composer/
ls
ratom crypto-config
sudo nano crypto-config.yaml 
sudo nano configtx.yaml 
ls
sar 1
sudo apt install sysstat
sar 1
sar -r 
sar -i
sar -r 1
sar -R 1
sar -n
sar -n 1
sar -n DEV 1 1
sar -n DEV 1
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode ubuntu@172.31.9.124:~/fabric-tools/fabric-scripts/hlfv11/
sudo scp -i ihpc-blk-key-pair.pem -r fabric-tools/fabric-scripts/hlfv11/chaincode ubuntu@172.31.42.98:~/fabric-tools/fabric-scripts/hlfv11/
ratom fabric-tools/fabric-scripts/hlfv11/composer/docker-compose.yml 
docker stats
docker ps
cd fabric-tools/fabric-scripts/
ls
cd hlfv11/
ls
cd main-app
docker stats
cd fabric-tools/
./statr
./startFabric.sh 
docker exec -it cli bash
docker stats
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
docker exec -it cli bash
cd fabric-tools/fabric-scripts/
ls
cd hlfv11/
ls
cd main-app
ls
npm i
node server.js 
ls
cd fabric-tools/fabric-scripts/hlfv11/composer/
rm -r chaincode/
ls
ratom docker-compose.yml 
cd ../../..
./startFabric.sh 
docker exec -it cli bash
./teardownAllDocker.sh 
ls
cd fabric-tools/fabric-scripts/
cd hlfv11/main-app
node server.js 
node registerAdmin.js 
node registerUser.js 
rm -r /home/ubuntu/.hfc-key-store/
node registerUser.js 
node registerAdmin.js 
node registerUser.js 
node server.js 
cd fabric-tools/
./teardownAllDocker.sh 
./startFabric.sh 
docker exec -it cli bash
cd fabric-tools/fabric-scripts/hlfv11/
cd main-app
ls
ratom server.js 
cp server.js server1.js 
ratom server1.js 
ratom server2.js 
cp server.js server2.js
ratols
cd fabric-samples
ls
rm -r fabcar
rm -r first-network
rm -r chaincode
rm -r basic-network
rm -r balance-transfer/
ls
cd fabric-tools
./startFabric.sh 
docker rmi $(docker images -f dangling=true -q)
docker images -f dangling=true
./startFabric.sh 
sudo ./startFabric.sh 
./startFabric.sh 
df
ls
cd education/
ls
cd LFS171x/
ls
cd ../../
ls
cd fabric-
cd fabric-tools/
ls
cd ../
ls
cd fabric-
cd fabric-tools/
ls
cd ../
ls
cd ../.
ls
cd ../
ls
cd ubuntu
cd usr
ls
