//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./IExample.sol";

contract Good is IExample {

    constructor() {
    }

    function test(uint a, bytes32 b) external pure override returns(bool) {
      a; // shh compiler
      b; // shh compiler
      return true;
    }

    function someOtherFunction() external pure {}

}
