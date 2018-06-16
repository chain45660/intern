'use strict';
/*
* SPDX-License-Identifier: Apache-2.0

Hyperledger Fabric Sample Query Program for main-app: Chaincode Invoke

This code is based on code written by the Hyperledger Fabric community.
Original code can be found here: https://github.com/hyperledger/fabric-samples/blob/release/fabcar/query.js
 */

var Fabric_Client = require('fabric-client');
var path = require('path');
var util = require('util');
var os = require('os');

var fabric_client = new Fabric_Client();

var key = req.params.id

// setup the fabric network
var channel = fabric_client.newChannel('composerchannel');
var channel = fabric_client.newChannel('composerchannel');
var peer = fabric_client.newPeer('grpc://localhost:7051');
channel.addPeer(peer);
var peer1_1 = fabric_client.newPeer('grpc://localhost:8051');
channel.addPeer(peer1_1);
var peer2_1 = fabric_client.newPeer('grpc://localhost:15051');
channel.addPeer(peer2_1);
var peer3_1 = fabric_client.newPeer('grpc://localhost:16051');
channel.addPeer(peer3_1);
var peer0_2 = fabric_client.newPeer('grpc://172.31.44.159:9051');
channel.addPeer(peer0_2);
var peer1_2 = fabric_client.newPeer('grpc://172.31.44.159:10051');
channel.addPeer(peer1_2);
var peer2_2 = fabric_client.newPeer('grpc://172.31.44.159:17051');
channel.addPeer(peer2_2);
var peer3_2 = fabric_client.newPeer('grpc://172.31.44.159:18051');
channel.addPeer(peer3_2);
var peer0_3 = fabric_client.newPeer('grpc://172.31.42.98:11051');
channel.addPeer(peer0_3);
// var peer1_3 = fabric_client.newPeer('grpc://172.31.42.98:12051');
// channel.addPeer(peer1_3);
// var peer2_3 = fabric_client.newPeer('grpc://172.31.42.98:19051');
// channel.addPeer(peer2_3);
// var peer3_3 = fabric_client.newPeer('grpc://172.31.42.98:20051');
// channel.addPeer(peer3_3);
// var peer0_4 = fabric_client.newPeer('grpc://172.31.9.124:13051');
// channel.addPeer(peer0_4);
// var peer1_4 = fabric_client.newPeer('grpc://172.31.9.124:14051');
// channel.addPeer(peer1_4);
// var peer2_4 = fabric_client.newPeer('grpc://172.31.9.124:21051');
// channel.addPeer(peer2_4);
// var peer3_4 = fabric_client.newPeer('grpc://172.31.9.124:22051');
// channel.addPeer(peer3_4);
//
var member_user = null;
var store_path = path.join(os.homedir(), '.hfc-key-store');
console.log('Store path:'+store_path);
var tx_id = null;

// create the key value store as defined in the fabric-client/config/default.json 'key-value-store' setting
Fabric_Client.newDefaultKeyValueStore({ path: store_path
}).then((state_store) => {
    // assign the store to the fabric client
    fabric_client.setStateStore(state_store);
    var crypto_suite = Fabric_Client.newCryptoSuite();
    // use the same location for the state store (where the users' certificate are kept)
    // and the crypto store (where the users' keys are kept)
    var crypto_store = Fabric_Client.newCryptoKeyStore({path: store_path});
    crypto_suite.setCryptoKeyStore(crypto_store);
    fabric_client.setCryptoSuite(crypto_suite);

    // get the enrolled user from persistence, this user will sign all requests
    return fabric_client.getUserContext('user1', true);
}).then((user_from_store) => {
    if (user_from_store && user_from_store.isEnrolled()) {
        console.log('Successfully loaded user1 from persistence');
        member_user = user_from_store;
    } else {
        throw new Error('Failed to get user1.... run registerUser.js');
    }

    // queryMachine - requires 1 argument, ex: args: ['4'],
    const request = {
        chaincodeId: 'main-app',
        txId: tx_id,
        fcn: 'queryMachine',
        args: [key]
    };

    // send the query proposal to the peer
    return channel.queryByChaincode(request);
}).then((query_responses) => {
    console.log("Query has completed, checking results");
    // query_responses could have more than one  results if there multiple peers were used as targets
    if (query_responses && query_responses.length == 1) {
        if (query_responses[0] instanceof Error) {
            console.error("error from query = ", query_responses[0]);
        } else {
            console.log("Response is ", query_responses[0].toString());
            res.send(query_responses[0].toString())
        }
    } else {
        console.log("No payloads were returned from query");
    }
}).catch((err) => {
    console.error('Failed to query successfully :: ' + err);
});
