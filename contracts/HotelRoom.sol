pragma solidity ^0.6.0;

contract HotelRoom {
    // Lets users book rooms and pay for them with cryptocurrency.
    
    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;
    // Collection of 'options' that never change.

    event Occupy(address _occupant, uint _value);

    address payable public owner;
    // This address will get paid whenever a room is booked.

    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }
    // Ownership goes to the account deploying the SC.

    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;  
    }

    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }

    receive() external payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
    // Send ether to the owner with the transfer() function.
    // Here msg.value refers to the amount of Ether sent in
    // when the function is called.
    // If the value passed into the require() function is true,
    // then the function will resume execution. If it's false, 
    // then it will halt execution and throw an error.

}