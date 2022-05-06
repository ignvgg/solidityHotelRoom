pragma solidity ^0.6.0;

contract Conditionals {

    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function countEvenNumbers() public view returns (uint) {
        uint count = 0;
        
        for(uint i = 0; i < numbers.length; i++) {
            if(isEvenNumber(numbers[i])) {
                count ++;
            }
        }
        
        return count;
    }

    // Loop to iterate over each item in the numbers array. 
    // For each number, it checks if the number is even with our 
    // previously-created isEvenNumber() function inside the if statement.

    function isEvenNumber(uint _number) public pure returns(bool) {
        if(_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }
}