// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployBasicNFT} from "../../script/DeployBasicNFT.s.sol";
import {BasicNFT} from "../../src/BasicNFT.sol";

contract BasicNftTest is Test {
    DeployBasicNFT public deployer;
    BasicNFT public basicNft;
    address public USER = makeAddr("user");
    string public constant SAMPLE = "ipfs://QmaJaFeemo4vH4M6gnoJZCPDnZw7oKafFh2ShsWenVBMHf/joker.json";

    function setUp() public {
        deployer = new DeployBasicNFT();
        basicNft = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Joker";
        string memory actualName = basicNft.name();
        
        assert(keccak256(abi.encodePacked(expectedName)) == keccak256(abi.encodePacked(actualName)));
    }

    function testCanMintAndHaveBalance() public {
        vm.prank(USER);
        basicNft.mintNFT(SAMPLE);

        assert(basicNft.balanceOf(USER) == 1);
        assert(keccak256(abi.encodePacked(SAMPLE)) == keccak256(abi.encodePacked(basicNft.tokenURI(0))));
    }
}