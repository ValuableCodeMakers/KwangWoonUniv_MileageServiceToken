const UniversityMileageToken = artifacts.require("../contracts/UniversityMileageToken.sol");

const _name = "UniversityMileageToken";
const _symbol = "UMT";

module.exports = function (deployer) {
  deployer.deploy(UniversityMileageToken,_name,_symbol);
};
