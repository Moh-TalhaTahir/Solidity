// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract errors{
    /*1. require
      2. assert
      3. revert
      4. custom error */

address owner;
uint balance;
//custom error used only with revert and used to save gas.
error errors__NotOwner();

constructor(){
    owner=msg.sender;
    balance=owner.balance;
}

function getvalue() public view returns(uint){
    //the string in require takes a lot of gas depending upon its size.
    require(msg.sender==owner,"not owner");
    return balance;
}

function rev() public view returns(uint){
    //revert is work same as require
    //it is used when the condition to check is difficult
    if(msg.sender!=owner){
        //custom error
        revert errors__NotOwner();
    }
    return balance;
}
}