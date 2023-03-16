// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract currency{
    uint public Onewei = 1 wei;
    
    bool public isonewei = 1 wei == 1;

    uint public oneeth = 1 ether;

    bool public isoneeth = 1 ether == 1e18 wei;
}