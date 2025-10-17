require("@nomiclabs/hardhat-ethers");

module.exports = {
  solidity: "0.8.19",
  networks: {
    hardhat: {}, // red local por defecto
    sepolia: {
      url: "https://sepolia.infura.io/v3/TU_API_KEY", // cambia TU_API_KEY por tu clave Infura/Alchemy
      accounts: ["0xTU_LLAVE_PRIVADA"] // agrega tu private key de Metamask (solo si quieres desplegar)
    }
  }
};
