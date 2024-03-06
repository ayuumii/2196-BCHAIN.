//Salalila, Raskin Charles C.
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract GradeContract {

    address public owner;
    uint256 public prelimGrade;
    uint256 public midtermGrade;
    string public name;
    uint256 public finalGrade;
    enum GradeStatus {Pending, Pass, Fail}
    GradeStatus public gradeStatus;
    

    event GradeComputed(string studentName, GradeStatus status);

    modifier onlyOwner() {
    require(msg.sender == owner, "Only the owner can call this function");
        _;
}

    modifier validGrade(uint256 grade) {
    require(grade >= 0 && grade <= 100, "The grade should be between 0 and 100");
    _;
}

    constructor(){
        owner = msg.sender;
    }

    function setName(string calldata _Name) public {
    name = _Name;
}
    
    function setPrelimGrade(uint256 _prelimGrade) external onlyOwner validGrade(_prelimGrade) {
    prelimGrade = _prelimGrade;
}

    function setMidtermGrade(uint256 _midtermGrade) external onlyOwner validGrade(_midtermGrade) {
    midtermGrade = _midtermGrade;  
}

    function setFinalGrade(uint256 _finalGrade) external onlyOwner validGrade(_finalGrade) {
    finalGrade = _finalGrade;
}

    function calculateGrade() external onlyOwner {
    uint256 averageGrade = (prelimGrade + midtermGrade + finalGrade) / 3;
    if (averageGrade >= 60) {
    gradeStatus = GradeStatus.Pass;
    } else {
    gradeStatus = GradeStatus.Fail;
    }
    emit GradeComputed(name, gradeStatus);
}

}