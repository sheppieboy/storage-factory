// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public simpleStorageArray;

    //a function (that anyone can call) to deploy a simple storage contract
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //address
        //Application binary interface (ABI)

        SimpleStorage simpleStorage = SimpleStorage(simpleStorageArray[_simpleStorageIndex]);
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex)public view returns(uint256){
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }
}
