// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract mapp{
    struct student{
        string  name;
        string  country;
    }
    mapping(uint => student) public studdata;
    function input(uint i,string memory _name, string memory _country) external {
      
            studdata[i].name=_name;
            studdata[i].country=_country;
        
    }
}