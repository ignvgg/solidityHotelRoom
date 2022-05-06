pragma solidity ^0.6.0;

contract Basics {

    // // Variables

    uint public myUint = 1;

    // The myUint is a STATE VARIABLE, can be accesed outside the
    // function and the SC (since it's public), stored in the BC.

    string public myString = "Hello, world!";

    // string Used to store arbitrary text.

    bytes32 public myBytes32 = "Hello, world!";

    // Just like string, but more performant.

    int public myInt = 1;

    // Integer, positive or negative number.

    uint256 public myUint256 = 1;

    // Unsigned integer of 256 bytes (same as uint).

    uint8 public myUint8 = 1;

    // Unsigned integer of 8 bytes.

    address public myAddress = 0x5A0b54D5dc17e0AadC383d2db43B0a0D3E029c4c;

    // Used to store a particular Ethereum address for 
    // an external user or smart contract.

    // // Custom data types

    struct MyStruct {
        uint theAge;
        string theName;
    }

    MyStruct public myStruct = MyStruct(
        26, 
        "Ignacio"
        );

    // // Variables
    
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }

    // Here value is a LOCAL VARIABLE, accesed only inside the
    // function, it's NOT stored in the blockchain, just in memory.

}