// SPDX-License-Identifier: Apache-2.0

/*
  Sample Chaincode based on Demonstrated Scenario

 This code is based on code written by the Hyperledger Fabric community.
  Original code can be found here: https://github.com/hyperledger/fabric-samples/blob/release/chaincode/fabcar/fabcar.go
 */

package main

/* Imports
* 4 utility libraries for handling bytes, reading and writing JSON,
formatting, and string manipulation
* 2 specific Hyperledger Fabric specific libraries for Smart Contracts
*/
import (
	"bytes"
	"encoding/json"
	"fmt"
	"strconv"
	"strings"

	"github.com/hyperledger/fabric/core/chaincode/shim"
	sc "github.com/hyperledger/fabric/protos/peer"
)

// Define the Smart Contract structure
type SmartContract struct {
}

/* Define Machine structure, with 4 properties.
Structure tags are used by encoding/json library
*/
type Machine struct {
	Toolwear string `json:"toolwear"`
	Timestamp string `json:"timestamp"`
}

/*
 * The Init method *
 called when the Smart Contract "main-app" is instantiated by the network
 * Best practice is to have any Ledger initialization in separate function
 -- see initLedger()
 */
func (s *SmartContract) Init(APIstub shim.ChaincodeStubInterface) sc.Response {
	return shim.Success(nil)
}

/*
 * The Invoke method *
 called when an application requests to run the Smart Contract "main-app"
 The app also specifies the specific smart contract function to call with args
 */
func (s *SmartContract) Invoke(APIstub shim.ChaincodeStubInterface) sc.Response {

	// Retrieve the requested Smart Contract function and arguments
	function, args := APIstub.GetFunctionAndParameters()
	// Route to the appropriate handler function to interact with the ledger
	if function == "queryMachine" {
		return s.queryMachine(APIstub, args)
	} else if function == "initLedger" {
		return s.initLedger(APIstub)
	} else if function == "recordMachine" {
		return s.recordMachine(APIstub, args)
	} else if function == "queryAllMachine" {
		return s.queryAllMachine(APIstub)
	} else if function == "changeToolwear" {
		return s.changeToolwear(APIstub, args)
	} else if function == "getToolwear" {
		return s.getToolwear(APIstub, args)
	}
  return shim.Error(fmt.Sprintf("Invalid Smart Contract function name: %s", function))
}

/*
 * The queryMachine method *
Used to view the records of one particular machine
It takes one argument -- the key for the machine in question
 */
func (s *SmartContract) queryMachine(APIstub shim.ChaincodeStubInterface, args []string) sc.Response {

	if len(args) != 1 {
		return shim.Error("Incorrect number of arguments. Expecting 1")
	}

	machineAsBytes, _ := APIstub.GetState(args[0])
	if machineAsBytes == nil {
		return shim.Error("Could not locate machine")
	}
	return shim.Success(machineAsBytes)
}

/*
 * The initLedger method *
Will add test data (10 machine catches)to our network
 */
func (s *SmartContract) initLedger(APIstub shim.ChaincodeStubInterface) sc.Response {
	machine := []Machine{
		Machine{Toolwear: "0.1", Timestamp: "1504054225"},
		Machine{Toolwear: "0.2", Timestamp: "1504054225"},
		Machine{Toolwear: "0.3", Timestamp: "1504054225"},
	}

	i := 0
	for i < len(machine) {
		fmt.Println("i is ", i)
		machineAsBytes, _ := json.Marshal(machine[i])
		APIstub.PutState(strconv.Itoa(i+1), machineAsBytes)
		fmt.Println("Added", machine[i])
		i = i + 1
	}

	return shim.Success(nil)
}

/*
 * The recordMachine method *
Fisherman like Sarah would use to record each of her machine catches.
This method takes in five arguments (attributes to be saved in the ledger).
 */
func (s *SmartContract) recordMachine(APIstub shim.ChaincodeStubInterface, args []string) sc.Response {

	// if len(args) != 3 {
	// 	return shim.Error("Incorrect number of arguments. Expecting 3")
	// }

	var machine = Machine{ Toolwear: args[1], Timestamp: args[2] }

	machineAsBytes, _ := json.Marshal(machine)
	err := APIstub.PutState(args[0], machineAsBytes)
	if err != nil {
		return shim.Error(fmt.Sprintf("Failed to record machine: %s", args[0]))
	}

	return shim.Success(nil)
}

/*
 * The queryAllMachine method *
allows for assessing all the records added to the ledger(all Machine catches)
This method does not take any arguments. Returns JSON string containing results.
 */
func (s *SmartContract) queryAllMachine(APIstub shim.ChaincodeStubInterface) sc.Response {

	startKey := "0"
	endKey := "999"

	resultsIterator, err := APIstub.GetStateByRange(startKey, endKey)
	if err != nil {
		return shim.Error(err.Error())
	}
	defer resultsIterator.Close()

	// buffer is a JSON array containing QueryResults
	var buffer bytes.Buffer
	buffer.WriteString("[")

	bArrayMemberAlreadyWritten := false
	for resultsIterator.HasNext() {
		queryResponse, err := resultsIterator.Next()
		if err != nil {
			return shim.Error(err.Error())
		}
		// Add comma before array members,suppress it for the first array member
		if bArrayMemberAlreadyWritten == true {
			buffer.WriteString(",")
		}
		buffer.WriteString("{\"Key\":")
		buffer.WriteString("\"")
		buffer.WriteString(queryResponse.Key)
		buffer.WriteString("\"")

		buffer.WriteString(", \"Record\":")
		// Record is a JSON object, so we write as-is
		buffer.WriteString(string(queryResponse.Value))
		buffer.WriteString("}")
		bArrayMemberAlreadyWritten = true
	}
	buffer.WriteString("]")

	fmt.Printf("- queryAllMachine:\n%s\n", buffer.String())

	return shim.Success(buffer.Bytes())
}

/*
 * The changeToolwear method *
The data in the world state can be updated with who has possession.
This function takes in 2 arguments, machine id and new toolwear.
 */
func (s *SmartContract) changeToolwear(APIstub shim.ChaincodeStubInterface, args []string) sc.Response {

	if len(args) != 2 {
		return shim.Error("Incorrect number of arguments. Expecting 2")
	}
	txid := APIstub.GetTxID()
	machine := args[0]
	toolwears := strings.Split(args[1], ",")

	for _, toolwear := range toolwears {
		compositeIndexName := "~machine~toolwear~txID"

		// Create the composite key that will allow us to query for all deltas on a particular variable
		compositeKey, compositeErr := APIstub.CreateCompositeKey(compositeIndexName, []string{machine, toolwear, txid})
		if compositeErr != nil {
			return shim.Error(fmt.Sprintf("Could not create a composite key for %s: %s", machine, compositeErr.Error()))
		}

		// Save the composite key index
		compositePutErr := APIstub.PutState(compositeKey, []byte{0x00})
		if compositePutErr != nil {
			return shim.Error(fmt.Sprintf("Could not put operation for %s in the ledger: %s", machine, compositePutErr.Error()))
		}
	}

	return shim.Success([]byte(fmt.Sprintf("Succesfully added %s to %s", machine, toolwears)))

/*	machineAsBytes, _ := APIstub.GetState(args[0])
	if machineAsBytes == nil {
		return shim.Error("Could not locate machine")
	}
	machine := Machine{}

	json.Unmarshal(machineAsBytes, &machine)
	// Normally check that the specified argument is a valid toolwear of machine
	// we are skipping this check for this example

	machine.Toolwear = args[1]

	machineAsBytes, _ = json.Marshal(machine)
	err := APIstub.PutState(args[0], machineAsBytes)
	if err != nil {
		return shim.Error(fmt.Sprintf("Failed to change machine toolwear: %s", args[0]))
	}
	*/
}

func (s *SmartContract) getToolwear(APIstub shim.ChaincodeStubInterface, args []string) sc.Response {

	machine_id := args[0]
	// Get all deltas for the variable
	deltaResultsIterator, deltaErr := APIstub.GetStateByPartialCompositeKey("~machine~toolwear~txID", []string{machine_id})
	if deltaErr != nil {
		return shim.Error(fmt.Sprintf("Could not retrieve value for %s: %s", machine_id, deltaErr.Error()))
	}
	defer deltaResultsIterator.Close()

	// Check the variable existed
	if !deltaResultsIterator.HasNext() {
		return shim.Error(fmt.Sprintf("No machine %s exists", machine_id))
	}

	// Iterate through result set and compute final value
	var finalVal float64
	var i int
	for i = 0; deltaResultsIterator.HasNext(); i++ {
		// Get the next row
		responseRange, nextErr := deltaResultsIterator.Next()
		if nextErr != nil {
			return shim.Error(nextErr.Error())
		}

		// Split the composite key into its component parts
		_, keyParts, splitKeyErr := APIstub.SplitCompositeKey(responseRange.Key)
		if splitKeyErr != nil {
			return shim.Error(splitKeyErr.Error())
		}

		// Retrieve the delta value and operation
		toolwearStr := keyParts[1]

		// Convert the value string and perform the operation
		toolwear, convErr := strconv.ParseFloat(toolwearStr, 64)
		if convErr != nil {
			return shim.Error(convErr.Error())
		}

		finalVal += toolwear
	}

	machineAsBytes, _ := APIstub.GetState(machine_id)
		if machineAsBytes == nil {
			return shim.Error("Could not locate machine")
		}
		machine := Machine{}

		json.Unmarshal(machineAsBytes, &machine)
		// Normally check that the specified argument is a valid toolwear of machine
		// we are skipping this check for this example

		machine.Toolwear = strconv.FormatFloat(finalVal, 'f', -1, 64)

		machineAsBytes, _ = json.Marshal(machine)
		err := APIstub.PutState(args[0], machineAsBytes)
		if err != nil {
			return shim.Error(fmt.Sprintf("Failed to change machine toolwear: %s", machine_id))
		}
		return shim.Success([]byte(strconv.FormatFloat(finalVal, 'f', -1, 64)))
}

/*
 * main function *
calls the Start function
The main function starts the chaincode in the container during instantiation.
 */
func main() {

	// Create a new Smart Contract
	err := shim.Start(new(SmartContract))
	if err != nil {
		fmt.Printf("Error creating new Smart Contract: %s", err)
	}
}
