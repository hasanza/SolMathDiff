// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.4 <0.9.0;

import "../lib/forge-std/src/Test.sol";
import "../src/MathTest.sol";

contract MulDivTest is Test {
    // Test if sqrt result is the same
        function test_sqrt() pure public {
        uint256 x = 4;
        uint256 solmateResult = SolmateFP.sqrt(x);
        uint256 ozResult = OZFP.sqrt(x);
        uint256 prbResult = PRBFP.sqrt(x);
        uint256 soladyResult = SoladyFP.sqrt(x);
        require(solmateResult == ozResult && ozResult == prbResult && prbResult == soladyResult);
    }
}