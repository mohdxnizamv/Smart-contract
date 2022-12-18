// SPDX-License-Identifier: MIT LICENSE

pragma solidity 0.8.7;

contract userDB {

    struct userInfo {
        string ipfsCid;
    }

    mapping (address => userInfo) public users;
}