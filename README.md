# NFT-Collection

## Overview
This foundry project allows users to mint NFTs from their local images. It utilizes the **ERC721** standard provided by OpenZeppelin, ensuring a secure and standard-compliant token implementation. The images are uploaded from the local filesystem, and each minted NFT is unique, representing the image used.

<p align="center">
<img src="./images/joker3.jpg" width="225" alt="NFT Joker">
<img src="./images/happy.svg" width="225" alt="NFT Happy">
<img src="./images/sad.svg" width="225" alt="NFT Sad">
</p>

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
$ make anvil
```

### Deploy

```shell
$ forge script script/DeployBasicNFT.s.sol:DeployBasicNFT --rpc-url http://localhost:8545 --private-key $(DEFAULT_ANVIL_KEY) --broadcast
```

### Deploy to Sepolia Testnet

```shell
$ forge script script/DeployBasicNFT.s.sol:DeployBasicNFT --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv
```

### Mint NFT's

```shell
$ forge script script/Interactions.s.sol:MintBasicNFT --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv
```

### Mint NFT's using cast command (hosted on-chain)

```shell
$ cast send $(CONTRACT_ADDRESS) "mintNFT()" --private-key $(PRIVATE_KEY) --rpc-url http://localhost:8545
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
