// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample {
    //Define a mapping to store values associated with addresses
    mapping(address => uint256) public valueMapping;

    //Function to set a value for the senders address
    function setValue(uint256 _value) public {
        valueMapping[msg.sender] = _value;
    }

    //Function to retreive the value associated with the senders address
    function getValue() public view returns (uint256){
        return valueMapping[msg.sender];
    }
}