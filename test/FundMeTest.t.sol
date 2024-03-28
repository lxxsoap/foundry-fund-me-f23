// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import{FundMe} from "../src/FundMe.sol";
contract FundMeTest is Test{
    //属性
    FundMe f;

    //SetUp函数总是最先运行
    function setUp() external{
         //属性赋值 我 -> FundMeTest -> Fundme
         f = new FundMe();
    }
    function testMinimum() public{
        assertEq(f.MINIMUM_USD(),5 * 10 ** 18);
    }
    function testOwnerIsMsgSender() public{
        
        assertEq(f.i_owner(),address(this));
    }
    function testPriceFeedVersionIsAccurate() public {
        uint256 version = f.getVersion();
        assertEq(version,4);
    }
}