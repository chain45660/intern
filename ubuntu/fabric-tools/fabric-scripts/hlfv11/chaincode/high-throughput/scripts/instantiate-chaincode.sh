echo "========== Instantiating chaincode v$1 =========="
peer chaincode instantiate -o orderer.example.com:7050 -C composerchannel -n composerchannel -c '{"Args": []}' -v $1 -P "AND ('Org1MSP.member','Org2MSP.member')"

