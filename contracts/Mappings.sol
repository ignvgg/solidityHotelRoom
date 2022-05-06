pragma solidity ^0.6.0;

contract Mappings {

    mapping(uint => string) public names;

    // Treat this mapping like a database of names, where 
    // each KEY is an id (1, 2, 3...), and each VALUE is 
    // a name ("Adam", "Bryan", "Carl"...).

    mapping(uint => Book) public books;

    // Here we can specify that KEY is a uint id, 
    // and the VALUE is a Book.

    mapping(address => mapping(uint => Book)) public myBooks;

    // myBooks mapping is a nested mapping, which means 
    // that it's a mapping INSIDE another mapping. In this case,
    // the myBooks mapping uses an Ethereum address as the key, 
    // to represent the owner of the books, and this returns 
    // a new mapping as its value: a mapping ids to books.

    struct Book {
        string title;
        string author;
    }

    constructor() public {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = 'Carl';
        books[1] = Book("LOTR", "Tolkien");
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }

    // 3 Arguments: id of the new book, title, and author. 
    // Inside the function, we build a new Book struct from 
    // these arguments, and add it too the books mapping 
    // with th new id.

    function addName(uint _id, string memory _name) public {
        names[_id] = _name;
    }

    // 2 Arguments: id of the Name, and actual Name.

    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

    // Assign the new book to the myBooks mapping, using the
    // sender's address as the key (msg.sender)

}