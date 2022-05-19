pragma solidity ^0.8.13;

interface ERC721Enmuerable {
	function totalSupply() external view returns (uint256);
	function tokenByIndex(uint256 _index) external view returns (uint256);
	function tokenOfOwnerByIndex(address _owner, uint256 _index) external view returns (uint256);
}
