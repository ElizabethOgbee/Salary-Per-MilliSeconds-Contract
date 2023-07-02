// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Methereum is ERC20, Ownable {
    constructor() ERC20("Methereum", "Mth")  {
        uint256 totalSupply = 1000000 * 10 ** decimals();
        _mint(msg.sender, totalSupply);

    }

    // function transfer(address reciever, uint256 amount) public override onlyOwner {
    //     _transfer(msg.sender, reciever, amount);
    // }
    function transfer( address to, uint256 amount) public {
     transfer(msg.sender, to, amount);
    }

    uint write another function
}