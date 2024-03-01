// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MQuizContract {
    uint256 public age;
    uint256 public hoursWorked;
    uint256 public hoursRate;
    uint256 public totalSalary;
    address public owner;



    modifier ownerOnly(){
        require(msg.sender == owner, "Only the owner have access!");
        _;
    }     
    modifier validRate(uint256 _rate) {
        require(_rate > 0, "Hourly rate needs to be greater than zero");
        _;
    }     
    modifier validHours(uint256 _hours){
        require(_hours > 0, "Hours Worked needs to be greater than zero");
        _;
    }

    constructor () {
        owner = msg.sender;
    }

    function setAge(uint256 _age) public ownerOnly {
        age = _age;
    }
    function setHrsWrk(uint256 _hours) public ownerOnly 
    validHours(_hours){hoursWorked = _hours;}

    function setRate(uint256 _rate) public ownerOnly 
    validRate(_rate){hoursRate = _rate; }
    
    function calculateTotSal() public ownerOnly {
        require(hoursRate > 0  && hoursWorked > 0, "Hourly rate and hours worked needs to be greater than 0" );
        totalSalary = hoursRate * hoursWorked;
        }
    }
