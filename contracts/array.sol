// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract arr{
    uint[] public array1;
    uint[] public array2 = [1,2,4];

    function getarray(uint i) public view returns(uint){
        return array2[i];
    }

    function entirearr() public view returns(uint[] memory){
        return array2;
    }

    function push(uint i) public {
        array1.push(i);
    }

    function pop() public {
        array1.pop();
    }

    function del(uint i) public {
        delete array2[i];
    }

    function newarr() public pure {
        uint[] memory array3 = new uint[](4);
    }
}