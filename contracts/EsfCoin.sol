// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract EsfCoin {
    string public name = "EsfCoin";
    string public symbol = "ESF";
    uint8 public decimals = 18;
    uint256 public totalSupply = 1000 * 10 ** decimals;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );

    mapping(address => uint256) private _ballances;

    constructor() {
        _ballances[msg.sender] = totalSupply;
    }

    function balanceOf(address _owner) public view returns (uint256 balance) {
        return _ballances[_owner];
    }

    function transfer(
        address _to,
        uint256 _value
    ) public returns (bool success) {
        require(balanceOf(msg.sender) >= _value, "Insufficient balance");
        _ballances[msg.sender] -= _value;
        _ballances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
}
