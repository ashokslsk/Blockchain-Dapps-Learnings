pragma solidity >=0.4.22 <0.9.0;

// SPDX-License-Identifier: MIT

contract DataTypes {

    uint x = 9;
    int i = -68; 
    uint8 j = 17;
    bool isEthereumCool = true; 
    address owner = msg.sender; // msg.sender is the Ethereum address of the account that sent this transaction
    bytes32 bMsg = "hello";
    string sMsg = "hello"; 

    function getStateVariables() public view returns (uint, int, uint, bool, address, bytes32, string memory) {
        return (x, i, j, isEthereumCool, owner, bMsg, sMsg); 
    }

    function setbMsg(bytes32 newValue) private returns (bytes32) {
        bMsg = newValue;
    }
}