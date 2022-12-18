// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Mock BUSD Token
contract Busd is ERC20 {
  address public owner;

  constructor() ERC20('Mock BUSD token', 'mBUSD') {
    owner = msg.sender;
    _mint(msg.sender, 2500000 * 10 ** 18);
  }
  
}
