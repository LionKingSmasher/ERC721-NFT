pragma solidity ^0.8.13;


interface ERC721TokenRecevier {
	function onERC721Recevied(address _operator, address _from, uint256 _tokenId, bytes data) external returns (bytes4);
}