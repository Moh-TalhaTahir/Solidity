// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Encodedec{
    function encode(uint num , address  add) public pure returns(bytes memory){
        return abi.encode(num,add);
    }

    function decode(bytes memory data) public pure returns(uint num , address add){
        (num,add) = abi.decode(data,(uint,address));
    }
}

contract hashing{
    function hash(uint num , address addr) pure public returns(bytes32 ){
        return keccak256(abi.encode(num,addr));
    }

    function hashcheck(uint num , address add ,bytes32 _hash) pure public returns(bool){
        return keccak256(abi.encode(num,add)) == _hash;
    }
}