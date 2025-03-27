// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

// Uncomment this line to use console.log
import "hardhat/console.sol";



contract Storage{
	uint data;
	function set(uint value) public{
	console.log("updating data..!");
	 data = value;
	}

	function get() public view  returns (uint){
		return data;
	}

}
