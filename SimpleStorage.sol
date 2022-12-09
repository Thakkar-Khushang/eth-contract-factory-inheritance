//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage{
    // bool hasFavNumber = true;
    // string favNumberInText = "Five"
    // int256 favInt = -5;
    // address myAddress = 0xb398e8B1e5b66621B18ac930e925a73D898963Ae
    // bytes32 favBytes = "cat";

    uint256 public favNumber; // defaults to 0

    // People public person  = People({favNumber: 19, name:"Khushang"});

    struct People{
        uint256 favNumber;
        string name;
    }

    // uint256[] public favNumberList;
    People[] public people;
    mapping(string => uint256) public nameToFavNum;

    // calldata, storage, memory
    // calldata, memory temporary
    // storage is permanent
    function addPerson(string memory _name, uint256 _favNumber) public returns(uint256) {
        // calldata if used cannot be modified
        // memory/calldata is only usable for struct, arrays or mapping types, i.e, complex data structures
        // string is an array of bytes hence memory is used
        people.push(People(_favNumber, _name));
        nameToFavNum[_name] = _favNumber;
        return people.length;
    }

    function store(uint256 _favorite) public virtual {
        favNumber = _favorite;
    }

    function retrieve() public view returns(uint256){
        return favNumber;
    }
}