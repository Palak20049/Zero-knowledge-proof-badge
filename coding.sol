// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ZKPBadge {
    mapping(address => bool) public verifiedUsers;
    mapping(uint256 => address) public badgeOwners;
    uint256 public totalSupply;

    function mintBadge() public {
        require(verifiedUsers[msg.sender], "Not a verified user");
        totalSupply++;
        badgeOwners[totalSupply] = msg.sender;
    }

    function verifyUser(address user) public {
        verifiedUsers[user] = true;
    }
}
