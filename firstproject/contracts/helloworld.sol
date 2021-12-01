pragma solidity ^0.8.10;

// SPDX-License-Identifier: MIT
contract helloworld {
    string private helloMessage = "Hello World!";

    function getHellowmEssage() public view returns (string memory){
        return helloMessage;
    }
}