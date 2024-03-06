
function mintGho() public {
  // Approve the Aave Pool to pull asset funds
  
  asset.approve(address(pool), 100e18);
  // Supply asset to the Aave Pool
  
  pool.supply(address(asset), 100e18, USER, 0);
  // Mint 10 GHO
  
  pool.borrow(address(gho), 100e18, 2, 0, USER);
}
