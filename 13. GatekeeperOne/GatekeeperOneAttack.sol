pragma solidity ^0.6.0;

//not yet solved !!.
import "./GatekeeperOne.sol";

contract GatekeeperOneAttack {

    GatekeeperOne _contract;
    address payable public owner;
    bytes8  data;
    uint public gas;

    constructor(address payable _add) public {
        owner = msg.sender;
        _contract = GatekeeperOne(_add);       
    }

    // KEY = uint16(tx.origin) ?
    // 16318 (10) = 0x3FBE(16)
    function Attack() public {
        data << uint16(tx.origin);
        uint var1 = address(_contract).balance;
        uint var2 = var1;

        address a = address(this);
        address b = address(this);
        address c = address(this);
        address d; //= address(this);
        for(uint i =0; i<2; i++){
            var2 = var2++;
        } 
        gas = gasleft() + gasleft() + gasleft() + gasleft() + gasleft() + gasleft() + uint(a) + uint(b) + uint(c);
        c = d;

        _contract.enter(data);
        c>d;
        Empty(var2);   
 
    }

    function Empty(uint a) private {}
}