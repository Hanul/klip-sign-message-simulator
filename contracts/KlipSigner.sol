pragma solidity ^0.5.6;

import "./klaytn-contracts/math/SafeMath.sol";

contract KlipSigner {
    using SafeMath for uint256;

    mapping(address => uint256) public nonces;
    mapping(address => mapping(uint256 => bool)) public nonceSigned;

    function sign() external {
        uint256 nonce = nonces[msg.sender];
        nonceSigned[msg.sender][nonce] = true;
        nonces[msg.sender] = nonce.add(1);
    }
}
