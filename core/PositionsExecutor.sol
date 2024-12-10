//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@uniswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import "./PositionsReverve.sol";

contract PostionsExecutor {

    INonfungiblePositionManager public positionManager;
    PostionsReserve internal postionsReserve;

    function depositPosition( address _sender, uint256 _tokenId ) public {
        positionManager.transferFrom(_sender, address(postionsReserve), _tokenId);
    }


}