//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    // override
    function store(uint256 _favNumber) public override {
        favNumber = _favNumber + 5;
    }
}