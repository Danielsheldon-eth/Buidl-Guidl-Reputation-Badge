//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

// Useful for debugging. Remove when deploying to a live network.
import "hardhat/console.sol";

// import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * A smart contract for a soul bound NFT
 * @author BuidlGuidl
 */
contract YourContract {

    // Define a variable to store the base SVG data.
    string public noob;

	// Enum to represent builder classes (Knight, Warlock, Advisor, etc.)
    enum BuilderClass { Knight, Warlock, Advisor }

	// Struct to represent a NFT
    struct BuilderNFT {
        uint256 id;                 // Unique identifier for the Noob NFT
        address owner;              // Address of the NFT owner (builder)
        string svgData;             // SVG metadata for the NFT (including dynamic layers)
        mapping(string => string) traits; // Mapping of layer positions to layer SVG data
    }

    // Define a struct to represent layer metadata.
    struct TraitMetadata {
        string traitHash;
        string traitName;
        string traitType;
        string traitPosition;
    }

    // Create a mapping to associate layer metadata with NFTs.
    mapping(uint256 => TraitMetadata[]) public nftTraits;

    mapping(address => BuilderNFT) public builderNFTs; // Mapping of builder addresses to their NFTs


    constructor(string memory _noob) {
        noob = _noob;
    }
	


    

	/**
	 * Function that allows the contract to receive ETH
	 */
	receive() external payable {}
}
