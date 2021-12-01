const Migrations = artifacts.require("helloworld");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
