// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/Contract.sol";

contract ContractTest is Test {
    Contract c;

    function setUp() public {
        c = new Contract();
    }

    function testCan_saveTimestamp() public {
        uint256 timeStart = block.timestamp;
        c.setTimeStart();
        vm.warp(100);
        /* emit log_uint(c.timeStart()); */
        /* emit log_uint(timeStart); */
        assertEq(c.timeStart(), timeStart);
    }
}
