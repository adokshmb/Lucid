# Lucid Token

We have created ERC20 token called lucid and symbol LCD. We have deployed this on remix IDE along with ownable function and onlyOwner modifier. 

## Description

In this ERC token lucid we have manually added the functions mint, Burn and transfer. We have also imported openzepplin functions like approve, burnfrom , transferfrom Etc... , in the loom video i have demonstrated the functinalities.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., lucid.sol). Copy and paste the following code into the file:

```solidity
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile lucid.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "lucid" contract from the dropdown menu, and then click on the "Deploy" button.



## Authors

Name: Adoksh Mb 
Mail ID: thetitangamers777@gmail.com 


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
