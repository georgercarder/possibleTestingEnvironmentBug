const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Good and Bad", function () {
  it("Should show that Bad.test is undefined", async function () {
    const Good = await ethers.getContractFactory("Good");
    const good = await Good.deploy();
    await good.deployed();

    expect(good.test !== undefined);

    const Bad = await ethers.getContractFactory("Bad");
    const bad = await Bad.deploy();
    await bad.deployed();

    expect(bad.test === undefined);
  });
});
