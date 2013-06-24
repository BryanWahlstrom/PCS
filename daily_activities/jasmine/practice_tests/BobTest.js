describe ("Response tester", function(){
  describe ("It's Shouted", function(){
    it("should say to chill out", function(){
      expect(bob.response_for('SHOUTING')).toEqual('Woah, chill out!');
    });
  });
  describe ("It's a Question", function(){
    it("should say sure", function(){
      expect(bob.response_for('a question?')).toEqual('Sure.');
    });
  });
  describe ("It's a Statement", function(){
    it("should say whatever", function(){
      expect(bob.response_for('a statement.')).toEqual('Whatever.');
    });
  });
  describe ("It's Blank", function(){
    it("should say fine", function(){
      expect(bob.response_for('')).toEqual('Fine, be that way.');
    });
  });

});