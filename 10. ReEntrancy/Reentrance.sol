// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Reentrance {
  
  function donate(address _to) public payable {
  }

  function withdraw(uint _amount) public {
  }

  receive() external payable {}
}