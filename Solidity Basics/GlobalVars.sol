// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract GlobalVariables {
    function globalVars() external view returns (address, uint, uint){
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum);
    }
}






// the globalvars it allos to retreive the address from the sender and the timestamp of the current block
// and also the current block when its called, this just shows the use of the global variables
// that are available within the solidity of the smart contract