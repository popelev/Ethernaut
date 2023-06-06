// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract SimpleToken {
  function destroy(address payable _to) public {
    selfdestruct(_to);
  }
}
