# DecentralandLand (ERC721)

## Descripción del negocio
**Nombre:** Decentraland  
**Rubro:** Plataforma de realidad virtual / metaverso  
**¿Qué problema soluciona?:**  
Cada terreno o parcela dentro del mundo virtual de Decentraland es único y está representado por un NFT (token no fungible) siguiendo el estándar ERC721.  
Esto garantiza propiedad verificable, trazabilidad y evita la duplicación de activos digitales.

## Descripción técnica
**Contrato:** DecentralandLand.sol  
**Estándar:** ERC721 (NFT)  
**Funciones principales:**
- `mintLand(address, x, y, metadataURI)` → Crea un nuevo NFT de terreno.
- `getParcel(tokenId)` → Devuelve las coordenadas y metadatos de un terreno.
- Basado en OpenZeppelin (seguridad y buenas prácticas).

## Estructura del proyecto
erc721-decentraland/
├─ contracts/
│ └─ DecentralandLand.sol
├─ scripts/
│ └─ deploy.js
├─ test/
│ └─ land.test.js
├─ hardhat.config.js
├─ package.json
└─ README.md


## Uso (solo si deseas probar)
Instalar dependencias:  
```bash
npm install
```

Compilar contrato:

```bash
npx hardhat compile
```
Desplegar en red de prueba (opcional):

```bash
npx hardhat run scripts/deploy.js --network sepolia
```
Este contrato ejemplifica la aplicación de estándares ERC721 en un negocio real basado en activos digitales únicos.

---

## 🎯 En resumen:

| Archivo | Función |
|----------|----------|
| `contracts/DecentralandLand.sol` | Código del NFT |
| `scripts/deploy.js` | Script para desplegarlo |
| `hardhat.config.js` | Configuración de red |
| `package.json` | Dependencias |
| `README.md` | Explicación del negocio y uso |
| `test/land.test.js` | (Opcional) pruebas automáticas |