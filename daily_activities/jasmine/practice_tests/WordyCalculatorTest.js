describe ("Calculator", function(){
  it("adds one", function(){
    expect(@calculator.ask('What is 1 plus 1?')).toEqual(2);
  });
  it("adds two", function(){
    expect(@calculator.ask('What is 1 plus 2?')).toEqual(3);
  });
  it("adds many digits", function(){
    expect(@calculator.ask('What is 123 plus 45678?')).toEqual(45801);
  });
  it("adds negative numbers", function(){
    expect(@calculator.ask('What is -1 plus -10?')).toEqual(-11);
  });
});