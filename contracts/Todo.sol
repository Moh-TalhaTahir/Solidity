// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Todo{

    struct task{
        string work;
        bool status;
    }

    mapping(address => task[]) tasklist;
    mapping(address=> uint256) rewardlist;

    event taskcreated(uint id, string work, bool status);
    event taskToggled(uint id, string work, bool status);


function createTask(string calldata _work) external payable{
    require(msg.value == 0.1 ether , 'pay 0.1 eth');
    tasklist[msg.sender].push(task(_work,false));
    rewardlist[msg.sender]+=msg.value;
    emit taskcreated(tasklist[msg.sender].Length-1,_work,false);
}


function getTask() external view returns(task[] memory){

    return tasklist[msg.sender];
}

function getReward() external view returns(uint256){

    return rewardlist[msg.sender];
}

function toggleTask(uint256 id) external {
    tasklist[msg.sender][id].status = !tasklist[msg.sender][id].status; 
    emit taskToggled(id , tasklist[msg.sender][id].work , tasklist[msg.sender][id].status)
}


}