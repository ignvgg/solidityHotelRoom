# Solidity 0.6.0 Hotel Room
Basic smart contract structure for an hotel room, including notes and a review of the basics.
Compiled, deployed and tested in [Remix](https://remix.ethereum.org/).

## HotelRoom.sol
Determines an Owner address when deploying the smart contract, sets two possible states for the room (Vacant, Occupied), sets price of room to 2 ether (expensive, I know). 
Throws an error if the ether sent to the smart contract its < 2, and also when an address already claimed the room.

Used elements:
```
enum
event
address
constructor
modifier
recieve
```

## Fundamentals review
Went through some of the basics of Solidity before getting on the HotelRoom smart contract.
- Arrays 
- Variables 
- Conditionals 
- Counter Mechanic 
- Mappings
