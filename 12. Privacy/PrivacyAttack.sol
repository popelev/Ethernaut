// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract PrivacyAttack {

  bool public locked = true;                    // Slot 0
  uint256 public ID = block.timestamp;          // Slot 1
  uint8 private flattening = 10;                // Slot 2
  uint8 private denomination = 255;             // Slot 2
  uint16 private awkwardness = uint16(now);     // Slot 2
  bytes32[3] private data;                      // Slot 3 4 (5) 
  
  
  bytes16 public convertedValue;
  
  function unlock(bytes16 _key) public {
    require(_key == bytes16(data[2]));
    locked = false;
  }
  
  function Attack(bytes32 _key) public {
    convertedValue = bytes16(_key);
  }
}