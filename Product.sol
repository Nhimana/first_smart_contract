// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Product {
    struct Item {
        uint id;
        string name;
        uint price;
    }

    mapping(uint => Item) public items;
    uint public itemCount;

    function addItem(string memory _name, uint _price) public {
        itemCount++;
        items[itemCount] = Item(itemCount, _name, _price);
    }
}
