//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

interface IBad {

  function test(uint a, bytes32 b) external returns(bool);
  function test(uint a, bytes32 b, bytes32 c) external pure returns(bool);

}
