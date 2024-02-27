// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample {
    //Define a mapping to store values associated with addresses
    mapping(address => uint256) public valueMapping;

    //Function to set a value for the senders address
    function setValue(uint256 _value) public {
        require(_value !=0, "Value cannot be zero.");
        valueMapping[msg.sender] = _value;
    }
    //Function to retreive the value associated with the senders address
    function getValue() public view returns (uint256){
        require(valueMapping[msg.sender] !=0,  "No Value set for sender!");
        return valueMapping[msg.sender];
    }
}