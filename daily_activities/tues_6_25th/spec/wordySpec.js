describe("Calculator", function() {
  it("should add the two numbers retrieved", function(){
    expect(Calculate("What is 1 plus 3")).toEqual(4);
  });
  it("should subtract the two numbers retrieved", function(){
    expect(Calculate("What is 1 minus 3")).toEqual(-2);
  });
  it("should multiply the two numbers retrieved", function(){
    expect(Calculate("What is 1 times 4")).toEqual(4);
  });
  it("should divide the two numbers retrieved", function(){
    expect(Calculate("What is 9 over 3")).toEqual(3);
  });

});