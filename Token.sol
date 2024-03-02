// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract Token {
    string public TokenName="Hari";
    string public tokenABBRv="hi";
    uint public totalSupply=0;

    mapping(address => uint)public balances;
    function mint(address _address, uint _value)public{
          balances[_address]+= _value;
          totalSupply+= _value;
    }

    function burn(address _address, uint _value) public{
        if(balances[_address] >= _value){
            balances[_address] -= _value;
            totalSupply -= _value;
        }
    }

}
