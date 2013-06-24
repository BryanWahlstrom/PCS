

describe ("Year tester" function(){
  describe ("Vanilla leap year", function(){
    it("is a leap year", function(){
      expect(Year.new(1996).leap?).toBeTruthy();
    });
  });
  describe ("Any old year", function(){
    it("isn't a leap year", function(){
      expect(Year.new(1997).leap?).toBeFalsey();
    });
  });
  describe ("Standard century", function(){
    it("isn't a leap year", function(){
      expect(Year.new(1900).leap?).toBeFalsey();
    });
  });
  describe ("Exceptional century", function(){
    it("is a leap year", function(){
      expect(Year.new(2000).leap?).toBeTruthy();
    });
  });
});