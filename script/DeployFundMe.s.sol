// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import{Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import{HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script{
    function run() external returns (FundMe){
        //before startBroadcast -> not a real tx!
        HelperConfig config = new HelperConfig();
        address ethUsdPriceFeed = config.activeNetworkConfig();
        vm.startBroadcast();
        FundMe f = new FundMe(ethUsdPriceFeed);
        vm.stopBroadcast();
        return f;
    }
}