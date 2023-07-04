// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 favoriteNumber;

    function store(uint256 _favouriteNumber) public {
        favoriteNumber = _favouriteNumber;
    }
}