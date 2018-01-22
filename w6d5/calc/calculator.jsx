import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    this.state = {result: 0, num1: '', num2: ''}
    this.setNum1 = this.setNum1.bind(this);
  }

  //your code here
  setNum1(e) {
  // your code here
    const num = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num });
  }

  render(){
    return (
      <div>
        <h1>Hello World</h1>
        <h2>{this.state.result}</h2>
        <input onChange={this.setNum1} value={num1}></input>
      </div>
    );
  }
}

export default Calculator;
