// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract datalocation{

struct Todo{
    string  name;
    bool  validity;
}

Todo[] public todos;

function set(string calldata _name , bool _validity) public {
    todos.push(Todo({name:_name , validity:_validity}));
}

function updatedata(uint index, string calldata _name, bool _valid)  public {
    Todo storage todo = todos[index];
    todo.name = _name;
    todo.validity= _valid;
}
}