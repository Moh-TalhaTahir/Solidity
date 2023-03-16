// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.0;

contract modif{
    uint public x = 10;
    bool public locked = false;

    modifier noreentrancy(){
        require(!(locked),"no reentrancy");

        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noreentrancy {
        x -= 1;

        if(i > 1){
            decrement(i - 1);
        }
    }
}