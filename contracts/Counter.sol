pragma solidity ^0.6.0;

// Basic structure for smart contract
// contract contractName {
//     Content
// }

contract Counter {

    uint public count = 0;

    // // uint Creates a new state variable,
    // // 'Unsigned Integer' or non-negative number.
    // uint count;
    // // public Visibility to the state variable means
    // // Solidity creates a function called name() which
    // // makes it usable outside the SC.

    // // Sets the initial count value to 0, runs only once
    // // When the SC is deployed to the blockchain.
    // constructor() public {
    //     count = 0;
    // }
    // // Unused since the uint count was made public

    // // Fetch the curent count, public to use it globally,
    // // view to state that it's read-only,
    // // returns(uint) to specify it returns a uint.
    // function getCount() public view returns(uint) {
    //     return count;
    // }
    // // Unused since Solidity already made this
    // // with the public attribute to count

    function incrementCount() public {
        count ++;
    }

    // // Used to update the count, also correct:
    // function incrementCount() public {
    //     count = count + 1;
    // }

}