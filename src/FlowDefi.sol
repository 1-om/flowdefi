// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.13;

/// @title FlowDefi
/// @author 0x1om
/// @notice FlowDefi is a protocol that imagines money as water.

/**
           _  _             _  _
  .       /\\/%\       .   /%\/%\     .
      __.<\\%#//\,_       <%%#/%%\,__  .
.    <%#/|\\%%%#///\    /^%#%%\///%#\\
      ""/%/""\ \""//|   |/""'/ /\//"//'
 .     L/'`   \ \  `    "   / /  ```
        `      \ \     .   / /       .
 .       .      \ \       / /  .
        .        \ \     / /          .
   .      .    ..:\ \:::/ /:.     .     .
______________/ \__;\___/\;_/\________________________________
YwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYwYw
 */

/// @param Water Money is water.
struct Water {
    address typeOfWater; // ERC20 token address
}

///
abstract contract WaterObserver {
    /// @notice Eth is pure water
    /// @dev address zero is reserved for denoting eth as erc20 token
    /// @param water Water to be observed
    /// @return bool indicating whether the water is pure
    function isPure(Water calldata water) public payable returns (bool) {
        return (msg.value != 0) && (water.typeOfWater == address(0));
    }
}

abstract contract WaterHandler {
    function getWater(Water calldata water) public view returns (Water memory) {
        return water;
    }
}

contract Pool is WaterHandler {
    Water waterType;
}

contract Continent is WaterHandler {
    Pool[] pools;
}

// /// @notice A water body is a collection of waters.
// struct WaterBody {
//     Water[] waters;
// }

/// @notice A glacier is a waterbody of recognized waters.
contract Glacier is WaterHandler {
    Water[] recognizedWaters;
    Continent[] supportedContinents;
}

/// @notice An ocean is a waterbody of unrecognized waters.
contract Ocean is WaterHandler {
    Water[] unrecognizedWaters;
    Continent[] supportedContinents;
}

struct Heat {
    address heatToken;
}

enum StateChange {
    melted,
    flowed,
    evaporated,
    condensed
}

abstract contract Stream {
    function _changeState(Heat calldata heat) public payable returns (StateChange){
        return StateChange.melted;
    }
}

// snowmelt() // accept 'heat' to melt water in glacier to form 'river' stream
// seep&flow() // seep 'river' streams into various pools & generate bank area lp tokens
// leak() // leak inactive pools to the ocean. Any new water can be added to ocean
// evaporation() // accept 'heat' to evaporate water in oceans to form clouds
// condensation() // accept 'chills' to condense evaporated water
// precipitation() //

contract FlowDefi {

}
