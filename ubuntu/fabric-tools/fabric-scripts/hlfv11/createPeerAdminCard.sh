#!/bin/bash

Usage() {
	echo ""
	echo "Usage: ./createPeerAdminCard.sh [-h host] [-n]"
	echo ""
	echo "Options:"
	echo -e "\t-h or --host:\t\t(Optional) name of the host to specify in the connection profile"
	echo -e "\t-n or --noimport:\t(Optional) don't import into card store"
	echo ""
	echo "Example: ./createPeerAdminCard.sh"
	echo ""
	exit 1
}

Parse_Arguments() {
	while [ $# -gt 0 ]; do
		case $1 in
			--help)
				HELPINFO=true
				;;
			--host | -h)
                shift
				HOST="$1"
				;;
            --noimport | -n)
				NOIMPORT=true
				;;
		esac
		shift
	done
}

HOST=172.20.2.24
Parse_Arguments $@

if [ "${HELPINFO}" == "true" ]; then
    Usage
fi

# Grab the current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z "${HL_COMPOSER_CLI}" ]; then
  HL_COMPOSER_CLI=$(which composer)
fi

echo
# check that the composer command exists at a version >v0.16
COMPOSER_VERSION=$("${HL_COMPOSER_CLI}" --version 2>/dev/null)
COMPOSER_RC=$?

if [ $COMPOSER_RC -eq 0 ]; then
    AWKRET=$(echo $COMPOSER_VERSION | awk -F. '{if ($2<19) print "1"; else print "0";}')
    if [ $AWKRET -eq 1 ]; then
        echo Cannot use $COMPOSER_VERSION version of composer with fabric 1.1, v0.19 or higher is required
        exit 1
    else
        echo Using composer-cli at $COMPOSER_VERSION
    fi
else
    echo 'No version of composer-cli has been detected, you need to install composer-cli at v0.19 or higher'
    exit 1
fi

cat << EOF > DevServer_connection.json
{
    "name": "hlfv1",
    "x-type": "hlfv1",
    "x-commitTimeout": 300,
    "version": "1.0.0",
    "client": {
        "organization": "Org1",
        "connection": {
            "timeout": {
                "peer": {
                    "endorser": "300",
                    "eventHub": "300",
                    "eventReg": "300"
                },
                "orderer": "300"
            }
        }
    },
    "channels": {
        "composerchannel": {
            "orderers": [
                "orderer.example.com"
            ],
            "peers": {
                "peer0.org1.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer1.org1.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer2.org1.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer3.org1.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer0.org2.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer1.org2.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer2.org2.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer3.org2.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer0.org3.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer1.org3.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer2.org3.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer3.org3.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer0.org4.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer1.org4.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer2.org4.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                },
                "peer3.org4.example.com": {
                    "endorsingPeer": true,
                    "chaincodeQuery": true,
                    "eventSource": true
                }
            }
        }
    },
    "organizations": {
        "Org1": {
            "mspid": "Org1MSP",
            "peers": [
                "peer0.org1.example.com",
                "peer1.org1.example.com",
                "peer2.org1.example.com",
                "peer3.org1.example.com"                
            ],
            "certificateAuthorities": [
                "ca.org1.example.com"
            ]
        },
        "Org2": {
            "mspid": "Org2MSP",
            "peers": [
                "peer0.org2.example.com",
                "peer1.org2.example.com",
                "peer2.org2.example.com",
                "peer3.org2.example.com"     
            ],
            "certificateAuthorities": [
                "ca.org2.example.com"
            ]
        },
        "Org3": {
            "mspid": "Org3MSP",
            "peers": [
                "peer0.org3.example.com",
                "peer1.org3.example.com",
                "peer2.org3.example.com",
                "peer3.org3.example.com"
            ],
            "certificateAuthorities": [
                "ca.org3.example.com"
            ]
        },
        "Org4": {
            "mspid": "Org4MSP",
            "peers": [
                "peer0.org4.example.com",
                "peer1.org4.example.com",
                "peer2.org4.example.com",
                "peer3.org4.example.com"                
            ],
            "certificateAuthorities": [
                "ca.org4.example.com"
            ]
        }
    },
    "orderers": {
        "orderer.example.com": {
            "url": "grpc://${HOST}:7050"
        }
    },
    "peers": {
        "peer0.org1.example.com": {
            "url": "grpc://${HOST}:7051",
            "eventUrl": "grpc://${HOST}:7053",
             "grpcOptions": {
                "ssl-target-name-override": "peer0.org1.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG1_CA_CERT"
            }
        },
        "peer1.org1.example.com": {
            "url": "grpc://${HOST}:8051",
            "eventUrl": "grpc://${HOST}:8053",
             "grpcOptions": {
                "ssl-target-name-override": "peer1.org1.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG1_CA_CERT"
            }
        },
        "peer2.org1.example.com": {
            "url": "grpc://${HOST}:15051",
            "eventUrl": "grpc://${HOST}:15053",
             "grpcOptions": {
                "ssl-target-name-override": "peer2.org1.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG1_CA_CERT"
            }
        },
        "peer3.org1.example.com": {
            "url": "grpc://${HOST}:16051",
            "eventUrl": "grpc://${HOST}:16053",
             "grpcOptions": {
                "ssl-target-name-override": "peer3.org1.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG1_CA_CERT"
            }
        },        
        "peer0.org2.example.com": {
            "url": "grpc://172.20.2.25:9051",
            "eventUrl": "grpc://172.20.2.25:9053",
             "grpcOptions": {
                "ssl-target-name-override": "peer0.org2.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG2_CA_CERT"
            }
        },
        "peer1.org2.example.com": {
            "url": "grpc://172.20.2.25:10051",
            "eventUrl": "grpc://172.20.2.25:10053",
             "grpcOptions": {
                "ssl-target-name-override": "peer1.org2.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG2_CA_CERT"
            }
        },
        "peer2.org2.example.com": {
            "url": "grpc://172.20.2.25:17051",
            "eventUrl": "grpc://172.20.2.25:17053",
             "grpcOptions": {
                "ssl-target-name-override": "peer2.org2.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG2_CA_CERT"
            }
        },
        "peer3.org2.example.com": {
            "url": "grpc://172.20.2.25:18051",
            "eventUrl": "grpc://172.20.2.25:18053",
             "grpcOptions": {
                "ssl-target-name-override": "peer3.org2.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG2_CA_CERT"
            }
        },
        "peer0.org3.example.com": {
            "url": "grpc://172.20.2.26:11051",
            "eventUrl": "grpc://172.20.2.26:11053",
             "grpcOptions": {
                "ssl-target-name-override": "peer0.org3.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG3_CA_CERT"
            }
        },
        "peer1.org3.example.com": {
            "url": "grpc://172.20.2.26:12051",
            "eventUrl": "grpc://172.20.2.26:12053",
             "grpcOptions": {
                "ssl-target-name-override": "peer1.org3.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG3_CA_CERT"
            }
        },
        "peer2.org3.example.com": {
            "url": "grpc://172.20.2.25:19051",
            "eventUrl": "grpc://172.20.2.25:19053",
             "grpcOptions": {
                "ssl-target-name-override": "peer2.org3.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG3_CA_CERT"
            }
        },
        "peer3.org3.example.com": {
            "url": "grpc://172.20.2.25:20051",
            "eventUrl": "grpc://172.20.2.25:20053",
             "grpcOptions": {
                "ssl-target-name-override": "peer3.org3.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG3_CA_CERT"
            }
        },
        "peer0.org4.example.com": {
            "url": "grpc://172.20.2.27:13051",
            "eventUrl": "grpc://172.20.2.27:13053",
             "grpcOptions": {
                "ssl-target-name-override": "peer0.org4.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG4_CA_CERT"
            }
        },
        "peer1.org4.example.com": {
            "url": "grpc://172.20.2.27:14051",
            "eventUrl": "grpc://172.20.2.27:14053",
             "grpcOptions": {
                "ssl-target-name-override": "peer1.org4.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG4_CA_CERT"
            }
        },
        "peer2.org4.example.com": {
            "url": "grpc://172.20.2.27:21051",
            "eventUrl": "grpc://172.20.2.27:21053",
             "grpcOptions": {
                "ssl-target-name-override": "peer2.org4.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG4_CA_CERT"
            }
        },
        "peer3.org4.example.com": {
            "url": "grpc://172.20.2.27:22051",
            "eventUrl": "grpc://172.20.2.27:22053",
             "grpcOptions": {
                "ssl-target-name-override": "peer3.org4.example.com"
            },
            "tlsCACerts": {
                "pem": "INSERT_ORG4_CA_CERT"
            }
        }        
    },
    "certificateAuthorities": {
        "ca.org1.example.com": {
            "url": "http://${HOST}:7054",
            "caName": "ca.org1.example.com",
            "httpOptions": {
                "verify": false
            }
        }, 
        "ca.org2.example.com": {
            "url": "http://${HOST}:8054",
            "caName": "ca.org2.example.com",
            "httpOptions": {
                "verify": false
            }
        }, 
        "ca.org3.example.com": {
            "url": "http://${HOST}:9054",
            "caName": "ca.org3.example.com",
            "httpOptions": {
                "verify": false
            }
        }, 
        "ca.org4.example.com": {
            "url": "http://${HOST}:10054",
            "caName": "ca.org4.example.com",
            "httpOptions": {
                "verify": false
            }
        }
    }
}
EOF

PRIVATE_KEY="${DIR}"/composer/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/keystore/1c3b644200f12c9d0d6d9d4cdbdf5a6888500d69d9d3cd183ecac43a6ca25de1_sk
CERT="${DIR}"/composer/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/signcerts/Admin@org1.example.com-cert.pem

if [ "${NOIMPORT}" != "true" ]; then
    CARDOUTPUT=/tmp/PeerAdmin@hlfv1.card
else
    CARDOUTPUT=PeerAdmin@hlfv1.card
fi

"${HL_COMPOSER_CLI}"  card create -p DevServer_connection.json -u PeerAdmin -c "${CERT}" -k "${PRIVATE_KEY}" -r PeerAdmin -r ChannelAdmin --file $CARDOUTPUT

if [ "${NOIMPORT}" != "true" ]; then
    if "${HL_COMPOSER_CLI}"  card list -c PeerAdmin@hlfv1 > /dev/null; then
        "${HL_COMPOSER_CLI}"  card delete -c PeerAdmin@hlfv1
    fi

    "${HL_COMPOSER_CLI}"  card import --file /tmp/PeerAdmin@hlfv1.card 
    "${HL_COMPOSER_CLI}"  card list
    echo "Hyperledger Composer PeerAdmin card has been imported, host of fabric specified as '${HOST}'"
    rm /tmp/PeerAdmin@hlfv1.card
else
    echo "Hyperledger Composer PeerAdmin card has been created, host of fabric specified as '${HOST}'"
fi