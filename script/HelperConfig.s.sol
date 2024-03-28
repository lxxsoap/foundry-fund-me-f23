// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

//1.处于本地anvil链时，我们将部署模拟合约供我们交互
//2.在不同链上跟踪合约地址

import {Script} from "forge-std/Script.sol";

contract HelperConfig is Script {
    //如果我们在anvil本地链，我们部署mock
    //否则从实时网络抓取现有地址
    NetWorkConfig public activeNetworkConfig;

    struct NetWorkConfig {
        address priceFeed;
    }

    constructor(){
        if(block.chainid == 11155111){
            activeNetworkConfig = getSepoliaEthConfig();
        }
        else{
            activeNetworkConfig = getAnvilEthConfig();
        }
    }

    //函数作用返回我们在sepolia或者任何链中所需的配置
    function getSepoliaEthConfig() public pure returns (NetWorkConfig memory) {
        NetWorkConfig memory sepoliaConfig = NetWorkConfig({
            priceFeed:0x694AA1769357215DE4FAC081bf1f309aDC325306
        });
        return sepoliaConfig;
    }

    function getAnvilEthConfig() public pure returns (NetWorkConfig memory) {}
}
