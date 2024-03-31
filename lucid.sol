// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol"; 
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";


contract Lucid is ERC20, Ownable { 
    constructor(address initialOwner)
        ERC20("Lucid", "LCD")
        Ownable(initialOwner) 
      
    {}

    function mint(address t_address, uint256 m_value) public onlyOwner {
        _mint(t_address, m_value); 
    }

    function burn(uint256 b_value) public {
        _burn(msg.sender,b_value); 

    }   
    function transfer(address t_address, uint256 t_value) public override  returns(bool){
        _transfer(msg.sender, t_address, t_value);
        return true; 
    }    
}
