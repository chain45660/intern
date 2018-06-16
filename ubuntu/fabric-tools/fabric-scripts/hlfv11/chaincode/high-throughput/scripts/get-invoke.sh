peer chaincode invoke -o orderer.example.com:7050 -C composerchannel -n composerchannel -c '{"Args":["get","'$1'"]}'

