// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.4 <0.9.0;

import "../lib/forge-std/src/Test.sol";
import "../src/MathTest.sol";

contract SqrtTest is Test {
    MathTest instance;
    uint256 public constant ROOT_NUM = 4;

    function setUp() public {
        instance = new MathTest();
    }

    function test_Solmate_sqrt() public {
        instance.solmateSqrt(ROOT_NUM);
    }

    function test_0z_sqrt() public {
        instance.OzSqrt(ROOT_NUM);
    }

    function test_Paul_sqrt() public {
        instance.paulSqrt(ROOT_NUM);
    }

    function test_Solady_sqrt() public {
        instance.soladySqrt(ROOT_NUM);
    }
}
