pragma solidity ^0.5.6;

contract KlipSigner {
    mapping(string => address) public signedKeys;
    function sign(string calldata key) external {
        signedKeys[key] = msg.sender;
    }
}
