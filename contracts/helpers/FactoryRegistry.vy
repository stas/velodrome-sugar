# SPDX-License-Identifier: BUSL-1.1
# pragma version ~=0.4.0
# @title Sugar Factory Registry
# @author velodrome.finance
# @notice Sugar Factory Registry to keep track of leaf pool factories

MAX_FACTORIES: public(constant(uint256)) = 10

owner: public(address)
poolFactories: public(DynArray[address, MAX_FACTORIES]) # camelCase for same signature as other registries

@deploy
def __init__(_factories: DynArray[address, MAX_FACTORIES]):
    self.poolFactories = _factories

@external
@view
def factoriesToPoolFactory(poolFactory: address) -> (address, address):
    return (empty(address), poolFactory)
