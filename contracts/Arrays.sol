pragma solidity ^0.6.0;

contract Arrays {

    uint[] public uintArray = [1,2,3];

    // Array of unsigned integers, specific storable data
    // declared beforehand with 'dataType' first and '[]' array sign.
    // [][] attr means 2D array.

    string[] public stringArray = ['apple', 'banana', 'carrot'];

    string[] public strings;
    string[] public values;

    uint[][] public array2D = [ [1, 2, 3], [4,5,6] ];
    string[][] public string2D = [ ['a','b','c'], ['d','e','f'], ['g','h','i'] ];

    // Call to multi-arrays with x = ARRAY position,
    // y = ELEMENT INSIDE array position.

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function addString(string memory _string) public {
        strings.push(_string);
    }

    // This function adds a new item to the values array with the
    // push() function. Whenever we call this function, we can pass
    // in any arbitrary number, and it will be added to the array.

    function stringsCount() public view returns(uint) {
        return strings.length;
    }

    function valueCount() public view returns(uint) {
        return values.length;
    }

    // This function calls .length on the values array, which 
    // returns the number if items in the array.

}