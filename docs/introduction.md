# Welcome

Money is like water.

## Protocol



### Water

Money is water. So all ERC20 tokens are water of diffent kinds.

```solidity
struct Water{
    address typeOfWater; // ERC20 token address
}

function isPure(Water water) payable public view returns (bool) {

    return (msg.value != 0) && (water.typeOfWater == 0x0);
}

```

### Water body

A collection of water types.

```solidity
struct WaterBody{
    Water[] waters;
}
```

#### Glaciers

A water body of recognized tokens like.
```solidity
struct Glaciers{
    WaterBody recognizedWaters;
}
```

#### Oceans


Each glacier supports a list of continents.

A continent is a collection of pools(liquid water).

Each pool has list of farms. Farm owners are liquidity providers to the pool.

