pragma solidity ^0.6.0;

import "hardhat/console.sol";

contract Token {
    string public name = "Em Token";
    string public symbol = "HMC";
    uint256 public totalSupply = 1000000;
    mapping(address => uint256) balances;

    constructor() public {
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint256 amount) external {
        require(balances[msg.sender] >= amount, "Not enough tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}
