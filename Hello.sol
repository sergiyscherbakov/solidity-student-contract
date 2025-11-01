// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Hello {
    struct Student {
        string firstName;
        string lastName;
        uint age;
    }

    Student public student;
    event NameChanged(string newName);

    function setStudent(string memory _firstName, string memory _lastName, uint _age) external {
        student.firstName = _firstName;
        student.lastName = _lastName;
        changeAge(_age);
        emit NameChanged(_firstName);
    }

    function getStudentName() external view returns (string memory) {
        return student.firstName;
    }

    function getStudentInfo() external view returns (string memory, string memory, uint) {
        return (student.firstName, student.lastName, student.age);
    }
    //Має внутрішню функцію changeAge для зміни віку.
     function changeAge(uint _age) private {
        student.age = _age;
    }
}
