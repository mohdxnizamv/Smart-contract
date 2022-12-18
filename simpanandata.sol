// SPDX-License-Identifier: MIT LICENSE


pragma solidity ^0.8.17;

contract simpananData {


    struct simpananinfo {
        string name;
        string username;
        string email;
    }

    mapping (uint256 => mapping(address => simpananinfo)) public simpanData;

    function saveUser( address wallet,uint256 Id,
        string memory first,
        string memory user,
        string memory email) 
        
        external {
        simpanData[Id][wallet].name = first;
        simpanData[Id][wallet].username = user;
        simpanData[Id][wallet].email = email;
    }
    
    function removeUser(address wallet, uint256 Id) external {
        delete simpanData[Id][wallet];
    }
}