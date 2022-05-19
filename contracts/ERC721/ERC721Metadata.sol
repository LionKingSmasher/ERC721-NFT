pragma solidity ^0.8.13;

interface ERC721Metadata {
	function name() external view returns (string _name);
	function symbol() external view returns (string _symbol);

	function tokenURI(uint256 _tokenId) external view returns (string);
}