## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```


## Test
### 单元测试（Unit Testing）： 
    这种测试专注于验证软件中最小的可测试单元（通常是函数、方法或类）是否按预期工作。单元测试通常由开发人员编写，并在代码修改后自动运行，以确保代码的基本功能正常工作。

### 集成测试（Integration Testing）： 
    集成测试用于验证多个单元（或组件）在集成后是否能够正确协同工作。它测试各个单元之间的接口和交互，并确保整个系统的不同部分之间的集成是正确的。这些测试可以是自动化的，也可以是手动的。

### 系统测试（System Testing）： 
    系统测试验证整个软件系统是否符合其规格说明，并且能够满足用户的需求。这种测试是在完整的、已部署的软件系统上进行的，通常由专门的测试团队执行。系统测试涵盖了各种方面，包括功能、性能、安全性和可靠性等。

### 验收测试（Acceptance Testing）： 
 验收测试是最终用户或客户执行的测试，用于确认软件是否符合其预期需求，并且可以接受投入实际使用。验收测试旨在验证软件是否满足业务需求，并且通常是在软件交付给客户之前执行的。


### Forked测试（Fork Testing）： 
    这种测试通常与开源项目相关，特别是在 fork（分叉）了一个开源项目后。开发者可能会对项目进行修改，因此需要确保这些修改不会破坏原始项目的功能，并且新功能是否按预期工作。

### Staging测试（Staging Testing）： 
    Staging 测试通常发生在软件发布前，测试团队会将软件部署到一个与生产环境相似的环境中进行测试。这种测试旨在模拟真实的生产环境，以验证软件在真实环境中的表现，同时也为最终发布做准备。