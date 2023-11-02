// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MockERC20 is ERC20, Ownable {
    constructor() ERC20("Mock ERC20 Token", "MKT") Ownable(msg.sender) {}

    function mint(uint amount) external onlyOwner {
        _mint(owner(), amount);
    }
}
