pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Rajivcoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Rajivcoin(address _owner)  UpgradeableToken(_owner) {
    name = "Rajivcoin";
    symbol = "RAJIV";
    totalSupply = 1000000000000;
    decimals = 3;

    balances[_owner] = totalSupply;
  }
}