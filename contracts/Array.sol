// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract Array {
    struct Account {
        string name;
        string surname;
        uint256 balance;
    }
    Account[] admins;

    function AddAdmin(string memory _name, string memory _surname, uint256 _balance) public {
        Account memory _admins = Account(_name,_surname,_balance);
        
        admins.push(_admins);
    }

    function getAdmins() public view returns (Account[] memory) {
        return admins;
    }

    /*function getAdmins2() public view returns(Account[] memory){
        Account[] memory _admins;

        for (uint i = 0; i < admins.length; i++) 
        {
            _admins[i] = admins[i];
        }

        return _admins;
        
    }*/

    function getAdmins3() public view returns (Account[] memory) {
    uint arrayCount = admins.length;
    Account[] memory _admins = new Account[](arrayCount);

    for (uint i = 0; i < arrayCount; i++) {
        _admins[i] = admins[i];
    }

    return _admins;
}

    
}
