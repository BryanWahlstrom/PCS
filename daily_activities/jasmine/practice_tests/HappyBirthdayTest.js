describe ("Birthday tester", function(){
  describe ("Past birthday", function(){
    it("recognizes birthday that happened already this year", function (){
      birthday = HappyBirthday.new(Date.new(2013, 3, 14));
      expect(birthday.age(1980, 2, 7)).toEqual(33);
    });
  });
  describe ("Future birthday", function(){
    it("recognizes birthday that is about to happen", function (){
      birthday = HappyBirthday.new(Date.new(2013, 2, 7));
      expect(birthday.age(1980, 3, 14)).toEqual(32);
    });
  });
});