contract MyBot is IDetectionBot{ 
    Forta forta;
    function setForta(address a) public {
        forta = Forta(a);
    }

    function handleTransaction(address user, bytes calldata msgData) external override{
            forta.raiseAlert(user);
    }
}
