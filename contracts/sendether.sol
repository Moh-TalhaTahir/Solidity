// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Payable{
    address payable owner;
    constructor(){
        owner= payable(msg.sender);
    }
//the receive will be used when there is no data received and the receive exists.
    receive() payable virtual external{ }
//the fallback will be used when there is no data or when there is data but no receive function available.
    fallback() payable virtual external{ }

    function getbalance() view public returns(uint){
        return address(this).balance;
    }
}


contract sendether is Payable{
    constructor() Payable(){    }
    string public recorfall;

    receive() payable override external {
        recorfall = "receive";
    }

    fallback() payable override external{
        recorfall = "fallback";
     }

     function sendviatransfer(address payable receiver) payable public{
         //incase of failure it will throw an error
         receiver.transfer(msg.value);
     }

     function sendviasend(address payable receiver) payable public{
         //it will return a bool value
         bool sent = receiver.send(msg.value);
         require(sent,'not transfered');
     }

     function sendviacall(address payable receiver) payable public{
         //it is better than send and transfer because it will also use reentrancy guard and it also returns a bool value
         (bool sent , bytes memory data) = receiver.call{value : msg.value}('');
         require(sent,'not transfered');
     }

    


}