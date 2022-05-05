// SPDX-License-Identifier: MIT


pragma solidity >= 0.7.0 < 0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Honor is ERC20 {
  address private owner;
  address private KAZAM;
  uint private limit = 100000000 * 10 ** 18;

  constructor() ERC20('KAZAM Token', 'KZM') {
    owner = msg.sender;

    _mint(msg.sender, 2000000 * 10 ** 18);
  }


  function setTranferLimit(uint _limit) public{
    require(msg.sender == owner, 'You must be the owner to run this.');
    limit = _limit;
  }

  function transferFrom(address sender, address recipient, uint256 amount) public override(ERC20) returns (bool) {
    require(amount <= limit, 'This transfer exceeds the allowed limit!');
    return super.transferFrom(sender, recipient, amount);
  }

  function transfer(address recipient, uint256 amount) public override(ERC20) returns (bool) {
    require(amount <= limit, 'This transfer exceeds the allowed limit!');
    return super.transfer(recipient, amount);
  }

  function mint(uint256 _amount) public {
    require(msg.sender == KAZAM || msg.sender == owner, 'Can only be used by KAZAM or owner.');
    _mint(msg.sender, _amount);
  }

  function burn(uint256 _amount) public {
    require(msg.sender == KAZAM || msg.sender == owner, 'Can only be used by KAZAM or owner.');
    _burn(msg.sender, _amount);
  }
}