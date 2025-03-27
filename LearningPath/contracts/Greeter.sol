
//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import "hardhat/console.sol";

contract Greeter{
	string private salute;

	constructor(string memory _greeting){
		console.log("Deploying a Greeter contract with greeting", _greeting="Hello, World!");
		salute = _greeting;
	}

	function greet() public view returns (string memory){
			    return salute;
	}

	function setGreeting(string memory _greeting) public{
		console.log("Changing greetig from '%s' to '%s'",salute, _greeting);
		salute = _greeting;
	}

}
