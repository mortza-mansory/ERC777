// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC777/ERC777.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract IntermediateERC777Token is ERC777, Ownable {
    constructor(uint256 initialSupply, address[] memory defaultOperators)
        ERC777("IntermediateToken", "INT", defaultOperators)
    {
        _mint(msg.sender, initialSupply * 10 ** decimals(), "");
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount, "");
    }

    function burn(uint256 amount) external {
        _burn(_msgSender(), amount, "");
    }
}
