//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

// Useful for debugging. Remove when deploying to a live network.
import "hardhat/console.sol";

// Use openzeppelin to inherit battle-tested implementations (ERC20, ERC721, etc)
// import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * A smart contract that allows changing a state variable of the contract and tracking the changes
 * It also allows the owner to withdraw the Ether in the contract
 * @author BuidlGuidl
 */
contract YourContract {
	// Enum to represent builder classes (Knight, Warlock, Advisor, etc.)
    enum BuilderClass { Knight, Warlock, Advisor }

	// Struct to represent a NFT
    struct BuilderNFT {
        uint256 id;                 // Unique identifier for the Noob NFT
        address owner;              // Address of the NFT owner (builder)
        string svgMetadata;         // SVG metadata for the NFT (including dynamic layers)
        // Add more properties as needed for your NFT
    }
	

	/**
	 * Function that allows the contract to receive ETH
	 */
	receive() external payable {}
}
