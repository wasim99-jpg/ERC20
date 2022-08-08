// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract stakingContract is ERC20Burnable, Ownable {


    constructor() ERC20("KEYBOARDT", "TKBD") {

        _mint(msg.sender, 100000000 * 10**decimals());

    }

        function mint(uint256 amount) public onlyOwner {
        _mint(msg.sender, amount * 10**decimals());
    }
    
}