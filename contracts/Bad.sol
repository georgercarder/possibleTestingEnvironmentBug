//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./IBad.sol";

contract Bad is IBad {

    constructor() {
    }

    function test(uint a, bytes32 b) external pure override returns(bool) {
      a; // shh compiler
      b; // shh compiler
      return true;
    }

    // overloaded
    function test(uint a, bytes32 b, bytes32 c) external pure override returns(bool) {
      a; // shh compiler
      b; // shh compiler
      c; // shh compiler 
      return true;
    }

    function someOtherFunction() external pure {}

}
