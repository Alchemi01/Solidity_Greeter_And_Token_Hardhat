pragma solidity ^0.6.0;

import "hardhat/console.sol";

contract ReGreet {
    string private greeting;

    constructor(string memory _greeting) public {
        greeting = _greeting;
        console.log("happy new year");
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }
}
