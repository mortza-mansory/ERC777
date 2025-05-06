// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC777/ERC777.sol";

contract BasicERC777Token is ERC777 {
    constructor(uint256 initialSupply) 
        ERC777("BasicToken", "BAS", new address ) 
    {
        _mint(msg.sender, initialSupply * 10 ** decimals(), "");
    }
}
