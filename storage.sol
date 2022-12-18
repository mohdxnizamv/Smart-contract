// SPDX-License-Identifier: MIT LICENSE

/*
@mohdxnizamv
THIS CONTRACT IS AVAILABLE FOR EDUCATIONAL 
PURPOSES ONLY. YOU ARE SOLELY REPONSIBLE 
FOR ITS USE. I AM NOT RESPONSIBLE FOR ANY
OTHER USE. THIS IS TRAINING/EDUCATIONAL
MATERIAL. ONLY USE IT IF YOU AGREE TO THE
TERMS SPECIFIED ABOVE.
*/

pragma solidity ^0.8.17;

contract simpananData {


    struct simpananinfo {
        string name;
        string username;
        string exp;
    }

    mapping (uint256 => mapping(address => simpananinfo)) public simpanData;

    function saveUser( address wallet,uint256 Id,
        string memory first,
        string memory user,
        string memory exp) 
        
        external {
        simpanData[Id][wallet].name = first;
        simpanData[Id][wallet].username = user;
        simpanData[Id][wallet].exp = exp;
    }
    
    function removeUser(address wallet, uint256 Id) external {
        delete simpanData[Id][wallet];
    }
}