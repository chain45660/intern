echo "========== Instantiating chaincode v$1 =========="
peer chaincode instantiate -o orderer.example.com:7050 -C composerchannel -n main-app -v $1 -c '{"Args":[""]}' -P "OR ('Org1MSP.member','Org2MSP.member')"
