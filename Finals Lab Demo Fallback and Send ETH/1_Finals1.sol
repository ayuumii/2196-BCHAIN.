contract FallbackExample{
    event FallbackReceived(address sender, uint amount);
    // Event to log payment received
    event PaymentReceived(address payer, uint256 amount);

    //Fallback function
    fallback() external payable {
        emit FallbackReceived(msg.sender, msg.value);
    }

    //Function to receive Ether
    receive() external payable {
        emit PaymentReceived(msg.sender, msg.value);
        
    }
}