pragma solidity ^0.8.0;

contract MyFinalsActivity2 {

  // Owner address
  address payable public owner;

  // Immutable timestamp of contract creation
  uint public creationTime = block.timestamp;

  // Initial ether amount (2 ether)
  uint constant INITIAL_ETH_AMOUNT = 2 ether;

  // Remaining ether balance in the contract
  uint public remainingEth = INITIAL_ETH_AMOUNT;

  // Event to log ether received
  event EtherReceived(address sender, uint amount);

  // Event to log ether sent
  event EtherSent(address recipient, uint amount);

  // Modifier to restrict functions to owner
  modifier onlyOwner() {
    require(msg.sender == owner, "Only owner can call this function");
    _;
  }

  // Constructor (automatically called at deployment)
  constructor() public {
    owner = payable(msg.sender);
  }

  // Receive function to handle incoming ether (optional)
  receive() external payable {
    remainingEth += msg.value;
    emit EtherReceived(msg.sender, msg.value);
  }

  // Get current contract balance
  function getBalance() public view returns (uint) {
    return remainingEth;
  }

  // Send ether from the contract to a recipient (only owner)
  function sendEther(address payable recipient, uint amount) public onlyOwner {
    require(amount <= remainingEth, "Insufficient funds");
    recipient.transfer(amount);
    remainingEth -= amount;
    emit EtherSent(recipient, amount);
  }

  // Destroy the contract and send remaining ether to owner (only owner, irreversible)
  function destroy() public onlyOwner {
    selfdestruct(owner);
  }
}