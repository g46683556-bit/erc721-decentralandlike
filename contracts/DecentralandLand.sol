// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title DecentralandLand
 * @dev ERC721 basado en el concepto de terrenos virtuales únicos.
 * Cada NFT representa una parcela dentro del metaverso (Decentraland).
 */

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DecentralandLand is ERC721URIStorage, Ownable {
    uint256 private _tokenIds;

    // Estructura básica para registrar coordenadas de terrenos (opcional)
    struct Parcel {
        int256 x;
        int256 y;
        string metadataURI; // enlace a los metadatos (imagen o descripción)
    }

    mapping(uint256 => Parcel) public parcels;

    constructor() ERC721("Decentraland Land", "LAND") {}

    /**
     * @notice Crea un nuevo NFT que representa una parcela de terreno virtual
     * @param recipient Dirección que recibirá el NFT
     * @param x Coordenada X de la parcela
     * @param y Coordenada Y de la parcela
     * @param metadataURI Enlace al archivo JSON con metadatos (nombre, imagen, etc.)
     */
    function mintLand(
        address recipient,
        int256 x,
        int256 y,
        string memory metadataURI
    ) public onlyOwner returns (uint256) {
        _tokenIds += 1;
        uint256 newLandId = _tokenIds;

        _safeMint(recipient, newLandId);
        _setTokenURI(newLandId, metadataURI);

        parcels[newLandId] = Parcel(x, y, metadataURI);

        return newLandId;
    }

    /**
     * @notice Devuelve los datos de una parcela
     */
    function getParcel(uint256 tokenId) public view returns (Parcel memory) {
        require(_exists(tokenId), "La parcela no existe");
        return parcels[tokenId];
    }
}
