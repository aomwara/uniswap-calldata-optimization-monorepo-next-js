//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAddressTable} from "@solid-grinder/interfaces/IAddressTable.sol";

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {UniswapV2Router02} from "@main/UniswapV2Router02.sol";
import {UniswapV2Router02_Decoder} from "@main/decoder/UniswapV2Router02_Decoder.g.sol";

/**
 * @notice optimized version
 */
contract UniswapV2Router02_Optimized is UniswapV2Router02, Ownable, UniswapV2Router02_Decoder {
    constructor(address _factory, address _WETH, IAddressTable _addressTable)
        UniswapV2Router02(_factory, _WETH)
        UniswapV2Router02_Decoder(_addressTable)
    {}

    function addLiquidityCompressed(bytes calldata _payload)
        external
        payable
        returns (uint256 amountA, uint256 amountB, uint256 liquidity)
    {
        // (addLiquidityData memory addLiquidityData,) = _decode_addLiquidityData(_payload, 0);

        // return UniswapV2Router02.addLiquidity(
        //     addLiquidityData.tokenA,
        //     addLiquidityData.tokenB,
        //     addLiquidityData.amountADesired,
        //     addLiquidityData.amountBDesired,
        //     addLiquidityData.amountAMin,
        //     addLiquidityData.amountBMin,
        //     addLiquidityData.to,
        //     addLiquidityData.deadline
        // );
    }
}
