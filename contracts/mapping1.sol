// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract mapp{

mapping(address => uint) public money;

function set(address _add, uint _money) public {
    money[_add] = _money;
}

function remove(address index) public {
    delete money[index];
}
}

contract nestedmapping{

    mapping(address => mapping(uint => bool)) public transfermoney;

function set(address _add,uint money,bool val) public {
    transfermoney[_add][money] = val;
}
}