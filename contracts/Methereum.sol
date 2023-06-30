// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract Methereum is ERC20, ERC20Detailed, Ownable{

    constructor() ERC20Detailed("Methereum", "Mth"){
       uint256 totalSupply = 1000000 * 10 ** decimals();
       _mint(msg.sender, totalSupply);
    }

    function transfer(address to, uint256 amount) external admin{
        _transfer(msg.sender, to, amount);
    }

}