describe("getFloor", function(){
  it("rounds down to the nearest integer", function(){
    expect(getFloor(3.5)).toEqual(3);
  });
  it("rounds negative numbers down as well", function(){
    expect(getFloor(-3.5)).toEqual(-4);
  });
  it("rounds results of additions down", function(){
    expect(getFloor(1.5+2)).toEqual(3);
  });
  it("returns an integer as itself", function(){
    expect(getFloor(3)).toEqual(3);
  });
});