// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract Contract {
    uint256 public timeStart;

    constructor() {}

    function setTimeStart() external {
        timeStart = block.timestamp;
    }
}
