describe ("Word scorer", function(){
  describe ("Empty word", function(){
    it("should score zero", function(){
      expect(Scrabble.score("")).toEqual(0);
    });
  });
  describe ("Nil word", function(){
    it("should score zero", function(){
      expect(Scrabble.score(nil)).toEqual(0);
    });
  });
  describe ("Short word", function(){
    it("should score one", function(){
      expect(Scrabble.score("a")).toEqual(1);
    });
  });
  describe ("Simple word", function(){
    it("should score number of letters", function(){
      expect(Scrabble.score("street")).toEqual(6);
    });
  });
  describe ("Complicated word", function(){
      it("should score more", function(){
        expect(Scrabble.score("quirky")).toEqual(22);
      });
    });
  describe ("Case insensitive word", function(){
      it("should score normally", function(){
        expect(Scrabble.score("MULTIBILLIONAIRE")).toEqual(20);
      });
    });
});