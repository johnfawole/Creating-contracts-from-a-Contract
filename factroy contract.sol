// SPDX License-Identifier : MIT 

 pragma solidity ^0.8.17;

  contract Car{
    address public owner;
    string public model;

    constructor(string memory _model, address _owner) payable{
     model = _model;
     owner = _owner;
    }
  }

  contract CarFactory{

    Car[] public cars;

     function create(string memory _model) public {
       Car car = new Car(_model, address(this));
       cars.push(car);
     }
  }
