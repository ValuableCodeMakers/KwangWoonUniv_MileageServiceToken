pragma solidity 0.6.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// 상속 받기
contract UniversityMileageToken is ERC20 {
    string private constant _name = "UniversityMileageToken";
    string private constant _symbol = "UMT";
    uint256 private constant _decimals = 18;
    uint256 private constant INITIAL_SUPPLY = 1000000000 * (10**_decimals);

    // 스마트컨트랙트가 생성될 때 1회 호출
    constructor(
        string memory name,
        string memory symbol
    ) public ERC20(name, symbol) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}