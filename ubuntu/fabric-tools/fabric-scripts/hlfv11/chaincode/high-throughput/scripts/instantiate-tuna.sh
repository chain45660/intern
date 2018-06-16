echo "========== Instantiating chaincode v$1 =========="
peer chaincode instantiate -o orderer.example.com:7050 -C composerchannel -n tuna-app -v 1.0 -c '{"Args":[""]}' -P "AND ('Org1MSP.member','Org2MSP.member')"

