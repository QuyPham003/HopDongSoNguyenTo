// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimeNumberContract {
    // Kiem tra mot so co phai la so nguyen to hay khong
    function kiemTraSoNguyenTo(uint256 so) public pure returns (bool) {
        if (so <= 1) {
            return false;
        }
        for (uint256 i = 2; i * i <= so; i++) {
            if (so % i == 0) {
                return false;
            }
        }
        return true;
    }

    // Tim tat ca cac so nguyen to tu 2 den n
    function timCacSoNguyenTo(uint256 n) public pure returns (uint256[] memory) {
        uint256[] memory soNguyenTo = new uint256[](n); // Mang de luu cac so nguyen to
        uint256 count = 0;

        for (uint256 i = 2; i <= n; i++) {
            if (kiemTraSoNguyenTo(i)) {
                soNguyenTo[count] = i;
                count++;
            }
        }

        // Cat mang de chi chua cac so nguyen to tim duoc
        uint256[] memory ketQua = new uint256[](count);
        for (uint256 j = 0; j < count; j++) {
            ketQua[j] = soNguyenTo[j];
        }

        return ketQua;
    }
}
