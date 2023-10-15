// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

struct person {
    string name;
    uint256 favNumber;
}

contract SimpleStorage {
    uint256 public favNumber;
    person[] public persons;

    function store(uint _favNumber) public {
        favNumber = _favNumber + 1;
    }

    function retrieve() public view returns (uint256) {
        return favNumber;
    }

    mapping (string => uint256) public personToFavNumber;

    function addPerson(string memory name, uint256 _favNumber) public  {
        persons.push(person(name, _favNumber));
        personToFavNumber[name] = _favNumber;
    }
}