// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;

contract destructure{

    uint8 public immutable number = 246;

    function multivar() pure public returns(uint, uint ,uint){
        uint a=15;
        uint b=13;
        uint c=14;
        return (a , b ,c);
    }

    function destructuring() public pure returns(uint){
        (uint a, uint b , uint c) = multivar();
        return a+b+c;
    }

    function fazool() pure public {
        uint i = number;
    }
}