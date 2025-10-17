async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Desplegando contrato con la cuenta:", deployer.address);

  const Land = await ethers.getContractFactory("DecentralandLand");
  const land = await Land.deploy();

  await land.deployed();

  console.log("DecentralandLand desplegado en:", land.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
