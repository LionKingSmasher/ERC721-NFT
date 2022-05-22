pragma solidity ^0.8.13;

import "./IERC721.sol";

struct UserBalacne {
	uint256 balacne;
	bool isExist;
}

struct OwnerData {
	address owner;
	bool isExist;
}

contract ERC721 is IERC721, ERC721TokenRecevier {

	mapping(address => UserData) balanceMap;
	mapping(uint256 => OwnerData) NFTOwnerMap;

	constructor() public {
		balanceMap[msg.sender].balacne = 0;
		balanceMap[msg.sender].isExist = 0;
		NFTOwnerMap[msg.sender].owner = 0x00;
		NFTOwnerMap[msg.sender].isExist = 0;
	}

	event Transfer(address indexed _from, address indexed _to, uint256 indexed _tokenId);
	event Approval(address indexed _owner, address indexed _approved, uint256 indexed _tokenId);
	event ApprovalForAll(address indexed _owner, address indexed _operator, bool _approved);

	function balanceOf(address _owner) external view returns (uint256) {
		require(balanceMap[_owner].isExist || _owner == 0, "User doesn't exist :(");
		return balanceMap[_owner].balacne;
	}

	function ownerOf(uint256 _tokenId) external view returns (address) {
		require(NFTOwnerMap[_tokenId].isExist || _tokenId == 0, "Token ID doesn't exisat :(");
		return NFTOwnerMap[_tokenId].owner;
	}

	function transferFrom(address _from, address _to, uint256 _tokenId) external payable {
		require(NFTOwnerMap[_tokenId].isExist || NFTOwnerMap[_tokenId].owner != _from, "Sorry, you don't have any NFT :(");
		NFTOwnerMap[_tokenId].owner = _from;
	}
}