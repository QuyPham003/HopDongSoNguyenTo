// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SoNguyenTo100 {
    uint[] public soNguyenTo;

    constructor() {
        sinhSoNguyenTo(100);
    }

    function kiemTraSoNguyenTo(uint n) internal pure returns (bool) {
        if (n <= 1) return false;
        for (uint i = 2; i * i <= n; i++) {
            if (n % i == 0) return false;
        }
        return true;
    }
    function sinhSoNguyenTo(uint soLuong) internal {
        uint num = 2; // Bắt đầu từ số 2
        while (soNguyenTo.length < soLuong) {
            if (kiemTraSoNguyenTo(num)) {
                soNguyenTo.push(num);
            }
            num++;
        }
    }
    function laySoNguyenTo() public view returns (uint[] memory) {
        return soNguyenTo;
    }
}
