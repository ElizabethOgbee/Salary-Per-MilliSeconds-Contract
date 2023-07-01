const hre = require("hardhat");
const { ethers } = require('ethers');

const main = async () => {
    const MethereumFactory = new ethers.ContractFactory("Methereum");
    const methereum = await MethereumFactory.deploy();
    const methereumContract = await methereum.deployed();

    console.log(`Deployed to :`, $(methereumContract))
}
